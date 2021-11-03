

--[[----------------------------------------------------------
	SCT ALERTS COMPONENT
 ]]-----------------------------------------------------------
  
    --[[ 
     * Process New Alert Notifications
     * --------------------------------
     * Called by FTC.SCT:ResourceAlert()
     * --------------------------------
     ]]--
	function FTC.SCT:NewAlert( newAlert )

		-- Bail if alerts are disabled
		if ( not FTC.Vars.SCTAlerts ) then return end
		
		-- Get the existing statuses
		local name   = newAlert.name	
		local ms 	 = GetGameTimeMilliseconds()

		-- Check if there is an existing alert
		local Alerts = FTC.SCT.Alerts
		for i = 1 , #Alerts do
			if ( Alerts[i].name == newAlert.name and ( ms - Alerts[i].ms < newAlert.buffer ) ) then return end
		end

        -- Assign SCT to control from pool
        local pool = FTC.SCT.AlertPool
        local control, objectKey = pool:AcquireObject()
        control:ClearAnchors()
        control.id = objectKey

        -- Compute starting offsets
        local  offsets = {}
        if     ( FTC.SCT.countAlert == 1 )   then offsets = {0,-50} 
        elseif ( FTC.SCT.countAlert == 2 )   then offsets = {50,0}
        elseif ( FTC.SCT.countAlert == 3 )   then offsets = {0,50}
        elseif ( FTC.SCT.countAlert == 4 )   then offsets = {-50,0} end
        control.offsetX , control.offsetY = unpack(offsets)
        control:SetDrawTier( FTC.SCT.countAlert % 2 == 0 and DT_MEDIUM or DT_LOW )
        FTC.SCT.countAlert = ( FTC.SCT.countAlert % 4 == 0 ) and 1 or FTC.SCT.countAlert + 1

		-- Configure alert
		local alert  = {
			["name"]	= name,
			["label"]	= newAlert.label,
			["ms"]		= ms,
			["size"]	= newAlert.size or FTC.Vars.SCTFontSize,
			["color"]	= newAlert.color or {1,1,1},
			["control"] = control,
		}

		-- Configure labels
		control.label:SetText(alert.label)
		control.label:SetColor(unpack(alert.color))
		control.label:SetFont(FTC.UI:Font(FTC.Vars.SCTFont2,alert.size,true))

        -- Display the control, but start faded
        control:SetHidden(false)
        control:SetAlpha(0)

		-- Insert the alert into the table
		table.insert( FTC.SCT.Alerts , alert ) 

        -- Start fade animation
        FTC.SCT:Fade(control)
	end

--[[----------------------------------------------------------
	EVENT HANDLERS
 ]]-----------------------------------------------------------

	--[[ 
	* Generate New Resource Alert
	* --------------------------------
	* Called by FTC.OnPowerUpdate()
	* --------------------------------
	]]--
	function FTC.SCT:ResourceAlert( unitTag , powerType , powerValue , powerMax )
		
		-- Get the attribute name and color
		local Alerts = {
			[POWERTYPE_HEALTH] 	= {
				["attr"]	 	= "health",
				["label"]		= GetString(FTC_LowHealth),
				["color"] 		= ( FTC.init.Frames ) and FTC.Vars.FrameHealthColor or {133/255,018/255,013/255},

			},
			[POWERTYPE_MAGICKA] = {
				["attr"]	 	= "magicka",
				["label"]		= GetString(FTC_LowMagicka),
				["color"]	 	= ( FTC.init.Frames ) and FTC.Vars.FrameMagickaColor or {064/255,064/255,128/255},
			},
			[POWERTYPE_STAMINA] = {
				["attr"]	 	= "stamina",
				["label"]		= GetString(FTC_LowStamina),
				["color"] 		= ( FTC.init.Frames ) and FTC.Vars.FrameStaminaColor or {038/255,077/255,033/255},
			},
		}

		-- Get the percentage
		local pct 		= zo_roundToNearest((powerValue or 0)/(powerMax or 0),0.01) * 100

		-- Get the prior attribute level
		local prior 	= FTC.Player[Alerts[powerType].attr].pct * 100
		
		-- Bail if we're above the threshold or were already below
		if ( pct > 25 or prior <= 25 ) then return end
		
		-- Submit an object
		local newAlert = {
			["name"]	= "low"..Alerts[powerType].attr,
			["label"]	= Alerts[powerType].label .. "! ("..pct.."%)",
			["color"]	= Alerts[powerType].color,
			["size"]	= FTC.Vars.SCTFontSize + 8,
			["buffer"]	= 5000,
		}
		
		-- Submit the new status
		FTC.SCT:NewAlert( newAlert )
	end

	--[[ 
	* Generate New Experience Alert
	* --------------------------------
	* Called by FTC.OnXPUpdate()
	* --------------------------------
	]]--
	function FTC.SCT:NewExp( currentExp , maxExp , reason )
		
		-- Experience gains for low level players
		local current = ( FTC.Player.level < 50 ) and currentExp or GetPlayerChampionXP()
		local max	  = ( FTC.Player.level < 50 ) and maxExp or GetNumChampionXPInChampionPoint(FTC.Player.clevel)
		local gain	  = ( FTC.Player.level < 50 ) and math.max( current - FTC.Player.exp  , 0 ) or math.max( current - FTC.Player.cxp , 0)
		if ( gain == 0 ) then return end

		-- Calculate percentage to level
		local pct		= zo_roundToNearest( current / max , 0.001 ) * 100

		-- Submit an object
		local newAlert = {
			["name"]	= "exp"..reason,
			["label"]	= FTC.DisplayNumber(gain) .. " " .. GetString(FTC_Experience) .. "! ("..pct.."%)",
			["color"]	= {0.4,0.8,0.8},
			["size"]	= FTC.Vars.SCTFontSize,
			["buffer"]	= 0,
		}
		
		-- Submit the new status
		FTC.SCT:NewAlert( newAlert )
	end

	--[[ 
	* Generate New Crowd Control Alert
	* --------------------------------
	* Called by FTC.OnPowerUpdate()
	* --------------------------------
	]]--
	function FTC.SCT:NewCC( result , abilityName , outgoing )

		-- Only handle incoming CC for now
		if ( outgoing ) then return end

		-- Crowd control breaks
		if ( abilityName == GetAbilityName(16565) ) then
			local newAlert = {
				["name"]	= "ccBreak",
				["label"]	= GetString(FTC_BreakFree) .. "!",
				["color"]	= {0.4,0.8,0},
				["size"]	= FTC.Vars.SCTFontSize+12,
				["buffer"]	= 5000,
			}
			FTC.SCT:NewAlert( newAlert )

		-- Crowd control effects
		else
		
			-- Determine result
			local CC = {
				[ACTION_RESULT_INTERRUPT]	= {
					["label"]		= GetString(FTC_Interrupted),
					["color"] 		= {0.8,0,0},
				},
				[ACTION_RESULT_STUNNED]		= {
					["label"]		= GetString(FTC_Stunned),
					["color"] 		= {0.8,0,0},
				},
				[ACTION_RESULT_OFFBALANCE]	= {
					["label"]		= GetString(FTC_Offbalance),
					["color"] 		= {0.8,0,0},
				},
				[ACTION_RESULT_DISORIENTED]	= {
					["label"]		= GetString(FTC_Disoriented),
					["color"] 		= {0.8,0,0},
				},
				[ACTION_RESULT_STAGGERED]	= {
					["label"]		= GetString(FTC_Staggered),
					["color"] 		= {0.8,0,0},
				},
				[ACTION_RESULT_FEARED]		= {
					["label"]		= GetString(FTC_Feared),
					["color"] 		= {0.8,0,0},
				},
				[ACTION_RESULT_SILENCED]	= {
					["label"]		= GetString(FTC_Silenced),
					["color"] 		= {0.8,0,0},
				},
				[ACTION_RESULT_ROOTED]	= {
					["label"]		= GetString(FTC_Rooted),
					["color"] 		= {0.8,0,0},
				},
			}

			-- Submit the new status
			local newAlert = {
				["name"]	= "cc"..result,
				["label"]	= CC[result].label .. "!",
				["color"]	= CC[result].color,
				["size"]	= FTC.Vars.SCTFontSize+12,
				["buffer"]	= 4000,
			}
			FTC.SCT:NewAlert( newAlert )
		end
	end

	--[[ 
	* Generate New Alliance Point
	* --------------------------------
	* Called by FTC.OnAPUpdate()
	* --------------------------------
	]]--
	function FTC.SCT:NewAP( eventCode, alliancePoints, playSound, difference )
		
	-- Save tiny AP rewards for later
	if ( difference > 0 and difference <= 5 ) then 
		FTC.SCT.backAP = FTC.SCT.backAP + difference
		return
	end
	
	-- Get AvA progress
	local subStart, nextSub, rankStart, nextRank = GetAvARankProgress( alliancePoints )
	
	-- Calculate percentage to level
	local pct	= zo_roundToNearest( ( alliancePoints - rankStart ) / ( nextRank - rankStart ) , 0.01 ) * 100

	-- Setup the name
	local name = "Alliance Points ("..pct.."%)"

		-- Submit an object
		local newAlert = {
			["name"]	= "apgain",
			["label"]	= FTC.DisplayNumber(difference + FTC.SCT.backAP) .. " " .. GetString(FTC_AlliancePoints) .. "! ("..pct.."%)",
			["color"]	= {0.4,0.8,0.8},
			["size"]	= FTC.Vars.SCTFontSize,
			["buffer"]	= 0,
		}
		
		-- Submit the new status
		FTC.SCT:NewAlert( newAlert )

		-- Reset backlogged AP
		FTC.SCT.backAP = 0
	end

	--[[ 
	* Generate Potion Availability Alert
	* --------------------------------
	* Called by FTC.OnUpdateCooldowns()
	* --------------------------------
	]]--
	function FTC.SCT:Potion()

		-- Check the usable status
		local _ , _ , canUse  = GetSlotCooldownInfo(GetCurrentQuickslot())

		-- Only proceed if the potion is now usable and it was not before
		if ( not canUse or FTC.Player.canPotion ) then
			FTC.Player.canPotion = canUse
			return
		end

		-- Submit an object
		local newAlert = {
			["name"]	= "potion",
			["label"]	= GetString(FTC_Potion) .. "!",
			["color"]	= {0.8,0.6,0},
			["size"]	= FTC.Vars.SCTFontSize+8,
			["buffer"]	= 0,
		}
		
		-- Submit the new status
		FTC.SCT:NewAlert( newAlert )

		-- Save the new status
		FTC.Player.canPotion = canUse
	end

	--[[ 
	* Generate Ultimate Availability Alert
	* --------------------------------
	* Called by FTC.OnPowerUpdate()
	* --------------------------------
	]]--
	function FTC.SCT:Ultimate()

		-- Submit an object
		local newAlert = {
			["name"]	= "potion",
			["label"]	= GetString(FTC_Ultimate) .. "!",
			["color"]	= {0.2,0.9,0.4},
			["size"]	= FTC.Vars.SCTFontSize+8,
			["buffer"]	= 0,
		}
		
		-- Submit the new status
		FTC.SCT:NewAlert( newAlert )
	end

	--[[ 
	* Generate Combat State Alert
	* --------------------------------
	* Called by FTC.OnPowerUpdate()
	* --------------------------------
	]]--
	function FTC.SCT:Combat( inCombat )

		-- Submit an object
		local newAlert = {
			["name"]	= "combat" .. ( inCombat and "In" or "Out" ),
			["label"]	= ( inCombat ) and GetString(FTC_CombatIn) or GetString(FTC_CombatOut),
			["color"]	= {0.8,0.6,0},
			["size"]	= FTC.Vars.SCTFontSize,
			["buffer"]	= 1000,
		}
		
		-- Submit the new status
		FTC.SCT:NewAlert( newAlert )
	end

	--[[ 
	* Generate Cleanse Now Alert
	* --------------------------------
	* Called by FTC.OnPowerUpdate()
	* --------------------------------
	]]--
	function FTC.SCT:Cleanse()

		-- Submit an object
		local newAlert = {
			["name"]	= "cleanse",
			["label"]	= GetString(FTC_CleanseNow) .. "!",
			["color"]	= {0.4,0.8,0},
			["size"]	= FTC.Vars.SCTFontSize+8,
			["buffer"]	= 5000,
		}
		
		-- Submit the new status
		FTC.SCT:NewAlert( newAlert )
	end


--[[----------------------------------------------------------
	UPDATING FUNCTIONS
 ]]-----------------------------------------------------------
 
	--[[ 
	* Update SCT Alerts
	* --------------------------------
	* Called by FTC.SCT:Initialize()
	* --------------------------------
	]]--
	function FTC.SCT:UpdateAlerts()

		-- Get alert data
		local parent	= _G["FTC_SCTAlerts"]
		local Alerts 	= FTC.SCT.Alerts

		-- Bail if no statuses is present
		if ( #Alerts == 0 ) then return end
		
		-- Get the game time
		local ms = GetGameTimeMilliseconds()
		
        -- Traverse alerts table back-to-front
        for i = #Alerts,1,-1 do

            -- Get the control
            local alert		= Alerts[i]
            local control   = alert.control
			
            -- Compute the animation duration ( speed = 10 -> 1.5 seconds, speed = 1 -> 6 seconds )
            local lifespan  = ( ms - alert.ms ) / 1000
            local speed     = ( ( 11 - FTC.Vars.SCTSpeed ) / 2 ) + 1
            local remaining = lifespan / speed

            -- Purge expired alerts
            if ( lifespan > speed ) then
                table.remove(FTC.SCT.Alerts,i) 
                FTC.SCT.AlertPool:ReleaseObject(control.id)
				
            -- Otherwise go ahead
            else 

                -- Get the starting offsets
                local height    = parent:GetHeight()
                local width     = parent:GetWidth()
                local offsetX   = control.offsetX           
                local offsetY   = control.offsetY + ( -1 * height ) * remaining

                -- Adjust the position
                control:SetAnchor(BOTTOM,parent,BOTTOM,offsetX,offsetY)
			end
		end
	end