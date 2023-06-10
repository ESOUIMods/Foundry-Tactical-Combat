--[[----------------------------------------------------------
    ENGLISH LANGUAGE LOCALIZATION
  ]]----------------------------------------------------------
ZO_CreateStringId("FTC_Name", "Foundry Tactical Combat")
ZO_CreateStringId("FTC_ShortInfo", "Foundry Tactical Combat by Atropos / Philgo")
ZO_CreateStringId("FTC_LongInfo", "You are using Foundry Tactical Combat version " .. FTC.version .. " developed by Atropos of Tamriel Foundry.")

--[[----------------------------------------------------------
    KEYBINDINGS
  ]]----------------------------------------------------------
ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_COMBAT_LOG", "Toggle Combat Log")
ZO_CreateStringId("SI_BINDING_NAME_DISPLAY_DAMAGE_REPORT", "Display Damage Report")
ZO_CreateStringId("SI_BINDING_NAME_POST_DAMAGE_RESULTS", "Post Damage Results")
ZO_CreateStringId("SI_BINDING_NAME_REFRESH_FRAMES", "Refresh Frames")

--[[----------------------------------------------------------
    MENU CORE
  ]]----------------------------------------------------------
ZO_CreateStringId("FTC_Menu_Configure", "Configure Addon Components")
ZO_CreateStringId("FTC_Menu_Reload", "Changing this setting will immediately reload the UI!")
ZO_CreateStringId("FTC_Menu_NeedReload", "Changes to this setting will not take affect until you reload your UI!")

local default = (FTC.Defaults.EnableFrames) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_Frames", "Enable Unit Frames")
ZO_CreateStringId("FTC_Menu_FramesDesc", "Enable custom unit frames component? [Default: " .. default .. "]")

local default = (FTC.Defaults.EnableBuffs) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_Buffs", "Enable Buff Tracking")
ZO_CreateStringId("FTC_Menu_BuffsDesc", "Enable buff and debuff tracking component? [Default: " .. default .. "]")

local default = (FTC.Defaults.EnableLog) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_Log", "Enable Combat Log")
ZO_CreateStringId("FTC_Menu_LogDesc", "Enable chat-based combat log component? [Default: " .. default .. "]")

local default = (FTC.Defaults.EnableSCT) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_SCT", "Enable Combat Text")
ZO_CreateStringId("FTC_Menu_SCTDesc", "Enable scrolling combat text component? [Default: " .. default .. "]")

local default = (FTC.Defaults.EnableStats) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_Stats", "Enable Damage Statistics")
ZO_CreateStringId("FTC_Menu_StatsDesc", "Enable tracking and reporting of damage statistics? [Default: " .. default .. "]")

local default = (FTC.Defaults.EnableHotbar) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_Hotbar", "Enable Advanced Hotbar")
ZO_CreateStringId("FTC_Menu_HotbarDesc", "Add ultimate and potion information to the default action bar? [Default: " .. default .. "]")

ZO_CreateStringId("FTC_Menu_Move", "Unlock Positions")
ZO_CreateStringId("FTC_Menu_MoveDesc", "Modify the position of FTC interface elements.")

ZO_CreateStringId("FTC_Menu_Reset", "Reset FTC Addon")
ZO_CreateStringId("FTC_Menu_ResetDesc", "Reset the entire FTC addon to its original settings.")

--[[----------------------------------------------------------
    UNIT FRAMES
  ]]----------------------------------------------------------

-- Unit Frames UI
ZO_CreateStringId("FTC_PF_Label", "Player Frame")
ZO_CreateStringId("FTC_TF_Label", "Target Frame")
ZO_CreateStringId("FTC_GF_Label", "Group Frame")
ZO_CreateStringId("FTC_RF_Label", "Raid Frame")
ZO_CreateStringId("FTC_Dead", "Dead")
ZO_CreateStringId("FTC_Offline", "Offline")

-- Unit Frames Menu
ZO_CreateStringId("FTC_Menu_FHeader", "Configure Unit Frames Settings")

local default = (FTC.Defaults.PlayerFrame) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FPlayerF", "Player Frame")
ZO_CreateStringId("FTC_Menu_FPlayerFDesc", "Use the custom FTC player frame? [Default: " .. default .. "]")

local default = (FTC.Defaults.TargetFrame) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FTargetF", "Target Frame")
ZO_CreateStringId("FTC_Menu_FTargetFDesc", "Use the custom FTC target frame? [Default: " .. default .. "]")

local default = (FTC.Defaults.DefaultTargetFrame) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FShowDef", "Default Target Frame")
ZO_CreateStringId("FTC_Menu_FShowDefDesc", "Continue displaying the default ESO target frame? [Default: " .. default .. "]")

local default = (FTC.Defaults.LabelFrames) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FLabelDef", "Label Default Frames")
ZO_CreateStringId("FTC_Menu_FLabelDefDesc", "Add numeric overlays to default ESO player and target frames? [Default: " .. default .. "]")

local default = (FTC.Defaults.FrameShowMax) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FShowMax", "Show Maximum Health")
ZO_CreateStringId("FTC_Menu_FShowMaxDesc", "Display maximum health values in player, target, and group frames? [Default: " .. default .. "]")

ZO_CreateStringId("FTC_Menu_FWidth", "Unit Frames Width")
ZO_CreateStringId("FTC_Menu_FWidthDesc", "Set the width of FTC unit frames. [Default: " .. FTC.Defaults.FrameWidth .. "]")

ZO_CreateStringId("FTC_Menu_FHeight", "Unit Frames Height")
ZO_CreateStringId("FTC_Menu_FHeightDesc", "Set the height of FTC unit frames. [Default: " .. FTC.Defaults.FrameHeight .. "]")

ZO_CreateStringId("FTC_Menu_TFWidth", "Unit Target Width")
ZO_CreateStringId("FTC_Menu_TFWidthDesc", "Set the width of FTC unit frames. [Default: " .. FTC.Defaults.TargetFrameWidth .. "]")

ZO_CreateStringId("FTC_Menu_TFHeight", "Unit Target Height")
ZO_CreateStringId("FTC_Menu_TFHeightDesc", "Set the height of FTC unit frames. [Default: " .. FTC.Defaults.TargetFrameHeight .. "]")

ZO_CreateStringId("FTC_Menu_FOpacIn", "Combat Opacity")
ZO_CreateStringId("FTC_Menu_FOpacInDesc", "Adjust the in-combat opacity of FTC unit frames. Lower settings are more transparent. [Default: " .. FTC.Defaults.FrameOpacityIn .. "]")

ZO_CreateStringId("FTC_Menu_FOpacOut", "Non-Combat Opacity")
ZO_CreateStringId("FTC_Menu_FOpacOutDesc", "Adjust the out-of-combat opacity of FTC unit frames. Lower settings are more transparent. [Default: " .. FTC.Defaults.FrameOpacityOut .. "]")

ZO_CreateStringId("FTC_Menu_FTOpacIn", "Combat Target Opacity")
ZO_CreateStringId("FTC_Menu_FTOpacInDesc", "Adjust the in-combat opacity of the FTC target frame. Lower settings are more transparent. [Default: " .. FTC.Defaults.FrameTargetOpacityIn .. "]")

ZO_CreateStringId("FTC_Menu_FTOpacOut", "Non-Combat Target Opacity")
ZO_CreateStringId("FTC_Menu_FTOpacOutDesc", "Adjust the out-of-combat opacity of the FTC target frame. Lower settings are more transparent. [Default: " .. FTC.Defaults.FrameTargetOpacityOut .. "]")

ZO_CreateStringId("FTC_Menu_FFont1", "Primary Font")
ZO_CreateStringId("FTC_Menu_FFont1Desc", "Change the primary font used in FTC unit frames. [Default: " .. FTC.UI:TranslateFont(FTC.Defaults.FrameFont1) .. "]")

ZO_CreateStringId("FTC_Menu_FFont2", "Secondary Font")
ZO_CreateStringId("FTC_Menu_FFont2Desc", "Change the secondary font used in FTC unit frames. [Default: " .. FTC.UI:TranslateFont(FTC.Defaults.FrameFont2) .. "]")

ZO_CreateStringId("FTC_Menu_FFontS", "Frame Font Size")
ZO_CreateStringId("FTC_Menu_FFontSDesc", "Change the base scale of the fonts used in FTC unit frames. [Default: " .. FTC.Defaults.FrameFontSize .. "]")

ZO_CreateStringId("FTC_Menu_Exceute", "Execute Threshold")
ZO_CreateStringId("FTC_Menu_ExecuteDesc", "Set your desired excute threshold health percentage for frames and text alerts. Setting to zero will disable alerts. [Default: " .. FTC.Defaults.ExecuteThreshold .. "]")

local default = (FTC.Defaults.EnableNameplate) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FShowName", "Show Player Nameplate")
ZO_CreateStringId("FTC_Menu_FShowNameDesc", "Display your own characters nameplate above FTC unit frames? [Default: " .. default .. "]")

local default = (FTC.Defaults.EnableXPBar) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FShowXP", "Enable Mini Experience Bar")
ZO_CreateStringId("FTC_Menu_FShowXPDesc", "Show your experience bar beneath the FTC player frame? [Default: " .. default .. "]")

local default = math.floor(FTC.Defaults.FrameFontColor[1] * 255) .. "," .. math.floor(FTC.Defaults.FrameFontColor[2] * 255) .. "," .. math.floor(FTC.Defaults.FrameFontColor[3] * 255)
ZO_CreateStringId("FTC_Menu_FFontC", "Font Color")
ZO_CreateStringId("FTC_Menu_FFontCDesc", "Set the text color. [Default: " .. default .. "]")

local default = math.floor(FTC.Defaults.FrameHealthColor[1] * 255) .. "," .. math.floor(FTC.Defaults.FrameHealthColor[2] * 255) .. "," .. math.floor(FTC.Defaults.FrameHealthColor[3] * 255)
ZO_CreateStringId("FTC_Menu_FHealthC", "Health Bar Color")
ZO_CreateStringId("FTC_Menu_FHealthCDesc", "Set the color displayed in FTC unit frame Health bars. [Default: " .. default .. "]")

local default = math.floor(FTC.Defaults.FrameMagickaColor[1] * 255) .. "," .. math.floor(FTC.Defaults.FrameMagickaColor[2] * 255) .. "," .. math.floor(FTC.Defaults.FrameMagickaColor[3] * 255)
ZO_CreateStringId("FTC_Menu_FMagickaC", "Magicka Bar Color")
ZO_CreateStringId("FTC_Menu_FMagickaCDesc", "Set the color displayed in the FTC player frame Magicka bar. [Default: " .. default .. "]")

local default = math.floor(FTC.Defaults.FrameStaminaColor[1] * 255) .. "," .. math.floor(FTC.Defaults.FrameStaminaColor[2] * 255) .. "," .. math.floor(FTC.Defaults.FrameStaminaColor[3] * 255)
ZO_CreateStringId("FTC_Menu_FStaminaC", "Stamina Bar Color")
ZO_CreateStringId("FTC_Menu_FStaminaCDesc", "Set the color displayed in the FTC player frame Stamina bar. [Default: " .. default .. "]")

local default = math.floor(FTC.Defaults.FrameShieldColor[1] * 255) .. "," .. math.floor(FTC.Defaults.FrameShieldColor[2] * 255) .. "," .. math.floor(FTC.Defaults.FrameShieldColor[3] * 255)
ZO_CreateStringId("FTC_Menu_FShieldC", "Shield Bar Color")
ZO_CreateStringId("FTC_Menu_FShieldCDesc", "Set the color displayed in FTC unit frame Shield bars. [Default: " .. default .. "]")

local default = (FTC.Defaults.TargetFrameLevel) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FTargetL", "Target Frame Levels")
ZO_CreateStringId("FTC_Menu_FTargetLDesc", "Include level on custom target frame? [Default: " .. default .. "]")

local default = (FTC.Defaults.TargetFrameTitle) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FTargetT", "Target Frame Titles")
ZO_CreateStringId("FTC_Menu_FTargetTDesc", "Include title on custom target frame? [Default: " .. default .. "]")

local default = (FTC.Defaults.TargetFrameShowAccount) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FTargetShowA", "Show @Name in Target Frame")
ZO_CreateStringId("FTC_Menu_FTargetShowADesc", "Show account name in target frame. [Default: " .. default .. "]")

local default = (FTC.Defaults.EnableGroupFrames) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FGroup", "Enable Small Group Frames")
ZO_CreateStringId("FTC_Menu_FGroupDesc", "Use custom group unit frames when in a group of size 4 or less. [Default: " .. default .. "]")

ZO_CreateStringId("FTC_Menu_FGWidth", "Group Frames Width")
ZO_CreateStringId("FTC_Menu_FGWidthDesc", "Set the width of FTC small group frames. [Default: " .. FTC.Defaults.GroupWidth .. "]")

ZO_CreateStringId("FTC_Menu_FGHeight", "Group Frames Height")
ZO_CreateStringId("FTC_Menu_FGHeightDesc", "Set the height of FTC small group frames. [Default: " .. FTC.Defaults.GroupHeight .. "]")

ZO_CreateStringId("FTC_Menu_FGFontS", "Group Frame Font Size")
ZO_CreateStringId("FTC_Menu_FGFontSDesc", "Change the scale of the fonts used in FTC small group frames. [Default: " .. FTC.Defaults.GroupFontSize .. "]")

local default = (FTC.Defaults.GroupHidePlayer) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FGHideP", "Hide Player in Group Frame")
ZO_CreateStringId("FTC_Menu_FGHidePDesc", "Do not show your own health bar in small group frame? [Default: " .. default .. "]")

local default = (FTC.Defaults.GroupShowLevel) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FGShowL", "Show Levels in Group Frame")
ZO_CreateStringId("FTC_Menu_FGShowLDesc", "Show levels in group frames. [Default: " .. default .. "]")

local default = (FTC.Defaults.GroupShowAccount) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FGShowA", "Show @Name in Group Frame")
ZO_CreateStringId("FTC_Menu_FGShowADesc", "Show account name in group frames. [Default: " .. default .. "]")

local default = (FTC.Defaults.ColorRoles) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FColorR", "Color Frames by Role")
ZO_CreateStringId("FTC_Menu_FColorRDesc", "Use different colors for each combat role in FTC group and raid frames? [Default: " .. default .. "]")

local default = math.floor(FTC.Defaults.FrameTankColor[1] * 255) .. "," .. math.floor(FTC.Defaults.FrameTankColor[2] * 255) .. "," .. math.floor(FTC.Defaults.FrameTankColor[3] * 255)
ZO_CreateStringId("FTC_Menu_FTankC", "Tank Role Color")
ZO_CreateStringId("FTC_Menu_FTankCDesc", "Set the color displayed for tanks in FTC group and raid frames. [Default: " .. default .. "]")

local default = math.floor(FTC.Defaults.FrameHealerColor[1] * 255) .. "," .. math.floor(FTC.Defaults.FrameHealerColor[2] * 255) .. "," .. math.floor(FTC.Defaults.FrameHealerColor[3] * 255)
ZO_CreateStringId("FTC_Menu_FHealerC", "Healer Role Color")
ZO_CreateStringId("FTC_Menu_FHealerCDesc", "Set the color displayed for healers in FTC group and raid frames. [Default: " .. default .. "]")

local default = math.floor(FTC.Defaults.FrameDamageColor[1] * 255) .. "," .. math.floor(FTC.Defaults.FrameDamageColor[2] * 255) .. "," .. math.floor(FTC.Defaults.FrameDamageColor[3] * 255)
ZO_CreateStringId("FTC_Menu_FDamageC", "Damage Role Color")
ZO_CreateStringId("FTC_Menu_FDamageCDesc", "Set the color displayed for DPS in FTC group and raid frames. [Default: " .. default .. "]")

local default = (FTC.Defaults.EnableRaidFrames) and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_FRaid", "Enable Raid Frames")
ZO_CreateStringId("FTC_Menu_FRaidDesc", "Use custom unit frames for groups of size 4 or more? [Default: " .. default .. "]")

ZO_CreateStringId("FTC_Menu_FRaidS", "Raid Frame Column Size")
ZO_CreateStringId("FTC_Menu_FRaidSDesc", "Number of players to display per column in FTC raid frames. [Default: " .. FTC.Defaults.RaidColumnSize .. "]")

ZO_CreateStringId("FTC_Menu_FRWidth", "Raid Frames Width")
ZO_CreateStringId("FTC_Menu_FRWidthDesc", "Set the width of FTC raid frames. [Default: " .. FTC.Defaults.RaidWidth .. "]")

ZO_CreateStringId("FTC_Menu_FRHeight", "Raid Frames Height")
ZO_CreateStringId("FTC_Menu_FRHeightDesc", "Set the height of FTC raid frames. [Default: " .. FTC.Defaults.RaidHeight .. "]")

ZO_CreateStringId("FTC_Menu_FRFontS", "Raid Frame Font Size")
ZO_CreateStringId("FTC_Menu_FRFontSDesc", "Change the scale of the fonts used in FTC raid frames. [Default: " .. FTC.Defaults.RaidFontSize .. "]")

ZO_CreateStringId("FTC_Menu_FReset", "Reset Unit Frames")
ZO_CreateStringId("FTC_Menu_FResetDesc", "Reset original settings for FTC unit frames component.")

--[[----------------------------------------------------------
    BUFF TRACKING
  ]]----------------------------------------------------------

-- Buff Tracking UI
ZO_CreateStringId("FTC_PlayerBuff", "Player Buff")
ZO_CreateStringId("FTC_PlayerDebuff", "Player Debuff")
ZO_CreateStringId("FTC_PB_Label", "Player Buffs")
ZO_CreateStringId("FTC_PD_Label", "Player Debuffs")
ZO_CreateStringId("FTC_LB_Label", "L\no\nn\ng\n\nB\nu\nf\nf\ns")
ZO_CreateStringId("FTC_TB_Label", "Target Buffs")
ZO_CreateStringId("FTC_TD_Label", "Target Debuffs")

-- Buff Tracking Menu
ZO_CreateStringId("FTC_Menu_BHeader", "Configure Buff Tracker Settings")

ZO_CreateStringId("FTC_BuffFormat0", "Disabled")
ZO_CreateStringId("FTC_BuffFormat1", "Horizontal Tiles")
ZO_CreateStringId("FTC_BuffFormat2", "Vertical Tiles")
ZO_CreateStringId("FTC_BuffFormat3", "Left Descending List")
ZO_CreateStringId("FTC_BuffFormat4", "Left Ascending List")
ZO_CreateStringId("FTC_BuffFormat5", "Right Descending List")
ZO_CreateStringId("FTC_BuffFormat6", "Right Ascending List")

ZO_CreateStringId("FTC_Menu_BPBFormat", "Player Buff Format")
ZO_CreateStringId("FTC_Menu_BPBFormatDesc", "Choose desired format for player buffs. [Default: " .. FTC.Menu:GetBuffFormat(FTC.Defaults.PlayerBuffFormat) .. "]")

ZO_CreateStringId("FTC_Menu_BPDFormat", "Player Debuff Format")
ZO_CreateStringId("FTC_Menu_BPDFormatDesc", "Choose desired format for player debuffs. [Default: " .. FTC.Menu:GetBuffFormat(FTC.Defaults.PlayerDebuffFormat) .. "]")

ZO_CreateStringId("FTC_Menu_BLBFormat", "Long Buff Format")
ZO_CreateStringId("FTC_Menu_BLBFormatDesc", "Choose desired format for long buffs. [Default: " .. FTC.Menu:GetBuffFormat(FTC.Defaults.LongBuffFormat) .. "]")

ZO_CreateStringId("FTC_Menu_BTBFormat", "Target Buff Format")
ZO_CreateStringId("FTC_Menu_BTBFormatDesc", "Choose desired format for target buffs. [Default: " .. FTC.Menu:GetBuffFormat(FTC.Defaults.TargetBuffFormat) .. "]")

ZO_CreateStringId("FTC_Menu_BTDFormat", "Target Debuff Format")
ZO_CreateStringId("FTC_Menu_BTDFormatDesc", "Choose desired format for target debuffs. [Default: " .. FTC.Menu:GetBuffFormat(FTC.Defaults.TargetDebuffFormat) .. "]")

ZO_CreateStringId("FTC_Menu_BFont1", "Primary Font")
ZO_CreateStringId("FTC_Menu_BFont1Desc", "Change the primary font used in FTC buff tracking. [Default: " .. FTC.UI:TranslateFont(FTC.Defaults.BuffsFont1) .. "]")

ZO_CreateStringId("FTC_Menu_BFont2", "Secondary Font")
ZO_CreateStringId("FTC_Menu_BFont2Desc", "Change the secondary font used in FTC buff tracking. [Default: " .. FTC.UI:TranslateFont(FTC.Defaults.BuffsFont2) .. "]")

ZO_CreateStringId("FTC_Menu_BFontS", "Buff Font Size")
ZO_CreateStringId("FTC_Menu_BFontSDesc", "Change the base scale of the fonts used in FTC buff tracking. [Default: " .. FTC.Defaults.BuffsFontSize .. "]")

ZO_CreateStringId("FTC_Menu_BReset", "Reset Buff Tracking")
ZO_CreateStringId("FTC_Menu_BResetDesc", "Reset original settings for FTC buff tracking component.")

--[[----------------------------------------------------------
    COMBAT LOG
  ]]----------------------------------------------------------

-- Combat Log UI
ZO_CreateStringId("FTC_CL_Label", "Combat Log")

-- Combat Log Menu
ZO_CreateStringId("FTC_Menu_LHeader", "Configure Combat Log Settings")

local default = FTC.Defaults.AlternateChat and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_LAltChat", "Alternate With Chat")
ZO_CreateStringId("FTC_Menu_LAltChatDesc", "Alternate Combat Log visibility with primary chat window? [Default: " .. default .. "]")

local default = FTC.Defaults.LogHideHeal and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_LHideHeal", "Hide Healing")
ZO_CreateStringId("FTC_Menu_LHideHealDesc", "Hide healing at all times? [Default: " .. default .. "]")

local default = FTC.Defaults.LogCOH and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_LCOH", "Combat-Only Healing")
ZO_CreateStringId("FTC_Menu_LCOHDesc", "Hide healing out of combat? [Default: " .. default .. "]")

ZO_CreateStringId("FTC_Menu_LFont", "Combat Log Font")
ZO_CreateStringId("FTC_Menu_LFontDesc", "Change the font used in the FTC combat log. [Default: " .. FTC.UI:TranslateFont(FTC.Defaults.LogFont) .. "]")

ZO_CreateStringId("FTC_Menu_LFontS", "Log Font Size")
ZO_CreateStringId("FTC_Menu_LFontSDesc", "Change the font size used in the FTC combat log. [Default: " .. FTC.Defaults.LogFontSize .. "]")

ZO_CreateStringId("FTC_Menu_LOpacity", "Log Background Opacity")
ZO_CreateStringId("FTC_Menu_LOpacityDesc", "Change the opacity of the background of the FTC combat log. [Default: " .. FTC.Defaults.LogOpacity .. "]")

ZO_CreateStringId("FTC_Menu_LReset", "Reset Combat Log")
ZO_CreateStringId("FTC_Menu_LResetDesc", "Reset original settings for FTC combat log component.")

--[[----------------------------------------------------------
    SCROLLING COMBAT TEXT
  ]]----------------------------------------------------------

-- Combat Text UI
ZO_CreateStringId("FTC_OD_Label", "Outgoing Damage")
ZO_CreateStringId("FTC_ID_Label", "Incoming Damage")
ZO_CreateStringId("FTC_CA_Label", "Combat Alerts")
ZO_CreateStringId("FTC_LowHealth", "Low Health")
ZO_CreateStringId("FTC_LowMagicka", "Low Magicka")
ZO_CreateStringId("FTC_LowStamina", "Low Stamina")
ZO_CreateStringId("FTC_Experience", "Experience")
ZO_CreateStringId("FTC_AlliancePoints", "Alliance Points")
ZO_CreateStringId("FTC_Stunned", "Stunned")
ZO_CreateStringId("FTC_Disoriented", "Disoriented")
ZO_CreateStringId("FTC_Offbalance", "Off Balance")
ZO_CreateStringId("FTC_Staggered", "Staggered")
ZO_CreateStringId("FTC_Interrupted", "Interrupted")
ZO_CreateStringId("FTC_Feared", "Feared")
ZO_CreateStringId("FTC_Silenced", "Silenced")
ZO_CreateStringId("FTC_Rooted", "Rooted")
ZO_CreateStringId("FTC_BreakFree", "Break Free")
ZO_CreateStringId("FTC_Potion", "Potion Available")
ZO_CreateStringId("FTC_Ultimate", "Ultimate Available")
ZO_CreateStringId("FTC_CleanseNow", "Cleanse Now")
ZO_CreateStringId("FTC_CombatIn", "Entered Combat")
ZO_CreateStringId("FTC_CombatOut", "Left Combat")
ZO_CreateStringId("FTC_Falling", "Falling")
ZO_CreateStringId("FTC_FakeDamage", "Fake Damage")
ZO_CreateStringId("FTC_FakeHeal", "Fake Heal")

-- Combat Text Menu
ZO_CreateStringId("FTC_Menu_SHeader", "Configure Combat Text Settings")

local default = FTC.Defaults.SCTIcons and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_SIcons", "Display SCT Icons")
ZO_CreateStringId("FTC_Menu_SIconsDesc", "Display ability icons beside scrolling combat text? [Default: " .. default .. "]")

local default = FTC.Defaults.SCTNames and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_SNames", "Display SCT Names")
ZO_CreateStringId("FTC_Menu_SNamesDesc", "Display ability names when possible in scrolling combat text? [Default: " .. default .. "]")

local default = FTC.Defaults.SCTRound and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_SRound", "Shorten Numbers")
ZO_CreateStringId("FTC_Menu_SRoundDesc", "Round damage numbers to the nearest hundred; for example 9,543 becomes 9.5k. [Default: " .. default .. "]")

local default = FTC.Defaults.SCTAlerts and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_SAlerts", "Display Alerts")
ZO_CreateStringId("FTC_Menu_SAlertsDesc", "Display alerts for significant combat events? [Default: " .. default .. "]")

local default = FTC.Defaults.SCTHideHeal and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_SHideHeal", "Hide Healing")
ZO_CreateStringId("FTC_Menu_SHideHealDesc", "Hide healing at all times? [Default: " .. default .. "]")

local default = FTC.Defaults.SCTCOH and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_SCOH", "Combat-Only Healing")
ZO_CreateStringId("FTC_Menu_SCOHDesc", "Hide healing out of combat? [Default: " .. default .. "]")

ZO_CreateStringId("FTC_Menu_SSpeed", "SCT Scroll Speed")
ZO_CreateStringId("FTC_Menu_SSpeedDesc", "Change speed of combat text scrolling, higher is faster. [Default: " .. FTC.Defaults.SCTSpeed .. "]")

ZO_CreateStringId("FTC_Menu_SArc", "SCT Arc Intensity")
ZO_CreateStringId("FTC_Menu_SArcDesc", "Change the curviture of scrolling combat text, higher values generate more arcing. [Default: " .. FTC.Defaults.SCTArc .. "]")

ZO_CreateStringId("FTC_Menu_SScrollOut", "Outgoing Scroll Direction")
ZO_CreateStringId("FTC_Menu_SScrollOutDesc", "Change the scrolling direction of outgoing damage events in scrolling combat text. [Default: " .. FTC.Defaults.SCTOutScroll .. "]")

ZO_CreateStringId("FTC_Menu_SScrollIn", "Incoming Scroll Direction")
ZO_CreateStringId("FTC_Menu_SScrollOutDesc", "Change the scrolling direction of incoming damage events in scrolling combat text. [Default: " .. FTC.Defaults.SCTInScroll .. "]")

ZO_CreateStringId("FTC_Menu_SFont1", "Primary Font")
ZO_CreateStringId("FTC_Menu_SFont1Desc", "Change the primary font used for damage values in scrolling combat text. [Default: " .. FTC.UI:TranslateFont(FTC.Defaults.SCTFont1) .. "]")

ZO_CreateStringId("FTC_Menu_SFont2", "Secondary Font")
ZO_CreateStringId("FTC_Menu_SFont2Desc", "Change the secondary font used for ability names in scrolling combat text. [Default: " .. FTC.UI:TranslateFont(FTC.Defaults.SCTFont2) .. "]")

ZO_CreateStringId("FTC_Menu_SFontS", "SCT Font Size")
ZO_CreateStringId("FTC_Menu_SFontSDesc", "Change the font size used in the FTC scrolling combat text. [Default: " .. FTC.Defaults.SCTFontSize .. "]")

ZO_CreateStringId("FTC_Menu_SIconS", "SCT Icon Size")
ZO_CreateStringId("FTC_Menu_SIconSDesc", "Change the size of icons displayed in FTC scrolling combat text. [Default: " .. FTC.Defaults.SCTIconSize .. "]")

ZO_CreateStringId("FTC_Menu_SCTReset", "Reset SCT")
ZO_CreateStringId("FTC_Menu_SCTResetDesc", "Reset original settings for FTC scrolling combat text component.")

--[[----------------------------------------------------------
    DAMAGE STATISTICS
  ]]----------------------------------------------------------

-- Damage Report UI
ZO_CreateStringId("FTC_DReport", "FTC Damage Report")
ZO_CreateStringId("FTC_HReport", "FTC Healing Report")
ZO_CreateStringId("FTC_NoDamage", "No damage to report!")
ZO_CreateStringId("FTC_NoHealing", "No healing to report!")
ZO_CreateStringId("FTC_AllTargets", "All Targets")
ZO_CreateStringId("FTC_Ability", "Ability")
ZO_CreateStringId("FTC_Crit", "Crit")
ZO_CreateStringId("FTC_Average", "Avg")
ZO_CreateStringId("FTC_Max", "Max")
ZO_CreateStringId("FTC_Damage", "Damage")
ZO_CreateStringId("FTC_Healing", "Healing")
ZO_CreateStringId("FTC_DPS", "DPS")
ZO_CreateStringId("FTC_HPS", "HPS")

-- Damage Report Menu
ZO_CreateStringId("FTC_Menu_THeader", "Configure Damage Statistics")

ZO_CreateStringId("FTC_Menu_TTimeout", "Timeout Threshold")
ZO_CreateStringId("FTC_Menu_TTimeoutDesc", "Set the number of seconds that must pass between damage events before a new encounter is recognized. [Default: " .. FTC.Defaults.DamageTimeout .. "]")

local default = FTC.Defaults.StatTriggerHeals and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_TRHeal", "Allow Healing Trigger")
ZO_CreateStringId("FTC_Menu_TRHealDesc", "Allow outgoing healing to trigger the start of a new encounter. [Default: " .. default .. "]")

local default = FTC.Defaults.StatsShareDPS and "Enabled" or "Disabled"
ZO_CreateStringId("FTC_Menu_TShare", "[BETA] Allow DPS Sharing")
ZO_CreateStringId("FTC_Menu_TShareDesc", "Allow your DPS information to be shared automatically with your group members who are also using FTC version 0.65+. [Default: " .. default .. "]")

ZO_CreateStringId("FTC_Menu_TReset", "Reset Stats")
ZO_CreateStringId("FTC_Menu_TResetDesc", "Reset original settings for FTC damage statistics component.")