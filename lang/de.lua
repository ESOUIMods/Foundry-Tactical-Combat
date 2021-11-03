
--[[----------------------------------------------------------
    GERMAN LANGUAGE LOCALIZATION
  ]]----------------------------------------------------------
ZO_CreateStringId("FTC_Name",               "Foundry Tactical Combat")
ZO_CreateStringId("FTC_ShortInfo",          "Foundry Tactical Combat by Atropos / Philgo")
ZO_CreateStringId("FTC_LongInfo",           "Du benutzt Foundry Tactical Combat Version " .. FTC.version .. " entwickelt von Atropos der Tamriel Foundry.")

--[[----------------------------------------------------------
    KEYBINDINGS
  ]]----------------------------------------------------------
ZO_CreateStringId("SI_BINDING_NAME_TOGGLE_COMBAT_LOG",      "Wechsel zwischen Kampflog/Chat")
ZO_CreateStringId("SI_BINDING_NAME_DISPLAY_DAMAGE_REPORT",  "Schadensreport anzeigen")
ZO_CreateStringId("SI_BINDING_NAME_POST_DAMAGE_RESULTS",    "Schadensreport in Chat einfügen")
ZO_CreateStringId("SI_BINDING_NAME_REFRESH_FRAMES",    "Bilder aktualisieren")

--[[----------------------------------------------------------
    MENU CORE
  ]]----------------------------------------------------------
ZO_CreateStringId("FTC_Menu_Configure",     "Addon Komponenten Einstellungen")
ZO_CreateStringId("FTC_Menu_Reload",        "Durch die Veränderung dieser Einstellung wird das UI neu gelanden")
ZO_CreateStringId("FTC_Menu_NeedReload",    "Veränderungen an dieser Einstellung werden erst aktiv nachdem das UI neu geladen wurde!")

local default = ( FTC.Defaults.EnableFrames ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_Frames",        "Einheitenfenster aktivieren")
ZO_CreateStringId("FTC_Menu_FramesDesc",    "Aktiviert das Spielerfenster, Zielfenster, Gruppenfenster und Schlachtzugsfenster. [Standard: "..default.."]")

local default = ( FTC.Defaults.EnableBuffs ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_Buffs",         "Buffs und Debuffs aktivieren")
ZO_CreateStringId("FTC_Menu_BuffsDesc",     "Aktiviert die Anzeige der aktiven Buffs und Debuffs. [Standard: "..default.."]")
 
local default = ( FTC.Defaults.EnableLog ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_Log",           "Kampflog aktivieren")
ZO_CreateStringId("FTC_Menu_LogDesc",       "Aktiviert die Kampflog Anzeige. [Standard: "..default.."]")
 
local default = ( FTC.Defaults.EnableSCT ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_SCT",           "Schwebender Kampftext aktivieren") 
ZO_CreateStringId("FTC_Menu_SCTDesc",       "Aktiviert den schwebenden Kampftext. [Standard: "..default.."]")

local default = ( FTC.Defaults.EnableStats ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_Stats",        "Schadensstatistik aktivieren")
ZO_CreateStringId("FTC_Menu_StatsDesc",    "Aktiviert die Anzeige der Schadensstatistik. [Standard: "..default.."]")
 
local default = ( FTC.Defaults.EnableHotbar ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_Hotbar",        "Erweiterte Hotbar aktivieren")
ZO_CreateStringId("FTC_Menu_HotbarDesc",    "Erweiterte Tooltips über der Standardhotbar anzeigen. [Standard: "..default.."]")

ZO_CreateStringId("FTC_Menu_Move",          "UI Elemente bewegen")
ZO_CreateStringId("FTC_Menu_MoveDesc",      "Die Positionen der einzelnen FTC UI Elemente lassen sich verschieben.")

ZO_CreateStringId("FTC_Menu_Reset",        "Addon zurücksetzen")
ZO_CreateStringId("FTC_Menu_ResetDesc",    "Das komplette Addon wird auf die Standardeinstellungen zurückgesetzt.")

--[[----------------------------------------------------------
    UNIT FRAMES
  ]]----------------------------------------------------------

-- Unit Frames UI
ZO_CreateStringId("FTC_PF_Label",           "Spielerfenster")
ZO_CreateStringId("FTC_TF_Label",           "Zielfenster")
ZO_CreateStringId("FTC_GF_Label",           "Gruppen fenster")
ZO_CreateStringId("FTC_RF_Label",           "Schlachtzugs fenster")
ZO_CreateStringId("FTC_Dead",               "Dead")
ZO_CreateStringId("FTC_Offline",            "Offline")

-- Unit Frames Menu
ZO_CreateStringId("FTC_Menu_FHeader",       "Einheitenfenster Einstellungen")

local default = ( FTC.Defaults.PlayerFrame ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FPlayerF",      "Spielerfenster anzeigen")
ZO_CreateStringId("FTC_Menu_FPlayerFDesc",  "Zeigt das FTC Spielerfenster an. [Standard: "..default.."]")

local default = ( FTC.Defaults.TargetFrame ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FTargetF",      "Zielfenster anzeigen")
ZO_CreateStringId("FTC_Menu_FTargetFDesc",  "Zeigt das FTC Zielfenster an. [Standard: "..default.."]")

local default = ( FTC.Defaults.DefaultTargetFrame ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FShowDef",      "Standard ESO Zielfenster anzeigen")
ZO_CreateStringId("FTC_Menu_FShowDefDesc",  "Zeigt das Standard ESO Zielfenster weiterhin an. [Standard: "..default.."]")

local default = ( FTC.Defaults.LabelFrames ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FLabelDef",     "Beschriftung der ESO Einheitenfenster")
ZO_CreateStringId("FTC_Menu_FLabelDefDesc", "Überschreibt die Werte im Standard ESO Spieler- und Zielfenster. [Standard: "..default.."]")

local default = ( FTC.Defaults.FrameShowMax ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FShowMax",      "Maximales Leben anzeigen")
ZO_CreateStringId("FTC_Menu_FShowMaxDesc",  "Zeigt das maximale Leben zusätzlich in den Lebensleisten der Spielerfenster, Zielfenster und Gruppenfenster an. [Standard: "..default.."]")

ZO_CreateStringId("FTC_Menu_FWidth",        "Breite des Spielerfensters")
ZO_CreateStringId("FTC_Menu_FWidthDesc",    "Ändert die Breite des Spielerfenster. [Standard: "..FTC.Defaults.FrameWidth.."]")

ZO_CreateStringId("FTC_Menu_FHeight",       "Höhe des Spielerfensters")
ZO_CreateStringId("FTC_Menu_FHeightDesc",   "Ändert die Höhe des Spielerfensters. [Standard: "..FTC.Defaults.FrameHeight.."]")
 
ZO_CreateStringId("FTC_Menu_TFWidth",        "Zielfenster Breite")
ZO_CreateStringId("FTC_Menu_TFWidthDesc",    "Ändert die Breite des Zielfensters. [Standard: "..FTC.Defaults.TargetFrameWidth.."]")

ZO_CreateStringId("FTC_Menu_TFHeight",       "Zielfenster Höhe")
ZO_CreateStringId("FTC_Menu_TFHeightDesc",   "Ändert die Höhe des Zielfensters. [Standard: "..FTC.Defaults.TargetFrameHeight.."]")

ZO_CreateStringId("FTC_Menu_FOpacIn",       "Deckkraft im Kampf")
ZO_CreateStringId("FTC_Menu_FOpacInDesc",   "Ändert die Deckkraft der Einheitenfenster während eines Kampfes. [Standard: "..FTC.Defaults.FrameOpacityIn.."]")
 
ZO_CreateStringId("FTC_Menu_FOpacOut",      "Deckkraft außerhalb eines Kampfes")
ZO_CreateStringId("FTC_Menu_FOpacOutDesc",  "Ändert die Deckkraft der Einheitenfenster außerhalb eines Kampfes. Je niedriger desto durchsichtiger. [Standard: "..FTC.Defaults.FrameOpacityOut.."]")

ZO_CreateStringId("FTC_Menu_FTOpacIn",      "Zielopazität im Kampfes")
ZO_CreateStringId("FTC_Menu_FTOpacInDesc",  "Ändert die Deckkraft der Zielfenster im Kampfes. Je niedriger desto durchsichtiger. [Standard: "..FTC.Defaults.FrameTargetOpacityIn.."]")

ZO_CreateStringId("FTC_Menu_FTOpacOut",      "Zielopazität außerhalb eines Kampfes")
ZO_CreateStringId("FTC_Menu_FTOpacOutDesc",  "Ändert die Deckkraft der Zielfenster außerhalb eines Kampfes. Je niedriger desto durchsichtiger. [Standard: "..FTC.Defaults.FrameTargetOpacityOut.."]")

ZO_CreateStringId("FTC_Menu_FFont1",        "Primäre Schriftart")
ZO_CreateStringId("FTC_Menu_FFont1Desc",    "Ändert die primäre Schriftart der Einheitenfenster. [Standard: "..FTC.UI:TranslateFont(FTC.Defaults.FrameFont1).."]")

ZO_CreateStringId("FTC_Menu_FFont2",        "Sekundäre Schriftart")
ZO_CreateStringId("FTC_Menu_FFont2Desc",    "Ändert die sekundäre Schriftart der Einheitenfenster. [Standard: "..FTC.UI:TranslateFont(FTC.Defaults.FrameFont2).."]")
 
ZO_CreateStringId("FTC_Menu_FFontS",        "Schriftgröße")
ZO_CreateStringId("FTC_Menu_FFontSDesc",    "Ändert die Schriftgröße der Einheitenfenster. [Standard: "..FTC.Defaults.FrameFontSize.."]")
 
ZO_CreateStringId("FTC_Menu_Exceute",       "Hinrichten Schwelle")
ZO_CreateStringId("FTC_Menu_ExecuteDesc",   "Ändert den Wert der erreicht werden muss damit ein Alarm angezeigt wird. [Standard: "..FTC.Defaults.ExecuteThreshold.."]")
 
local default = ( FTC.Defaults.EnableNameplate ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FShowName",     "Spieler Namen anzeigen")
ZO_CreateStringId("FTC_Menu_FShowNameDesc", "Zeigt den eigenen Namen über dem Spielerfenster an. [Standard: "..default.."]")

local default = ( FTC.Defaults.EnableXPBar ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FShowXP",       "Mini Erfahrungsleiste aktivieren")
ZO_CreateStringId("FTC_Menu_FShowXPDesc",   "Zeigt eine kleine Erfahrungsleiste unter dem Spielerfenster an. [Standard: "..default.."]")

local default = math.floor(FTC.Defaults.FrameFontColor[1]*255)..","..math.floor(FTC.Defaults.FrameFontColor[2]*255)..","..math.floor(FTC.Defaults.FrameFontColor[3]*255)
ZO_CreateStringId("FTC_Menu_FFontC",      "Schriftfarbe")
ZO_CreateStringId("FTC_Menu_FFontCDesc",  "Setze die Textfarbe. [Default: "..default.."]")

local default = math.floor(FTC.Defaults.FrameHealthColor[1]*255)..","..math.floor(FTC.Defaults.FrameHealthColor[2]*255)..","..math.floor(FTC.Defaults.FrameHealthColor[3]*255)
ZO_CreateStringId("FTC_Menu_FHealthC",      "Farbe der Lebensleiste")
ZO_CreateStringId("FTC_Menu_FHealthCDesc",  "Ändert die Farbe der Lebensleiste im Spieler- und Zielfenster. [Standard: "..default.."]")

local default = math.floor(FTC.Defaults.FrameMagickaColor[1]*255)..","..math.floor(FTC.Defaults.FrameMagickaColor[2]*255)..","..math.floor(FTC.Defaults.FrameMagickaColor[3]*255)
ZO_CreateStringId("FTC_Menu_FMagickaC",     "Farbe der Magieleiste")
ZO_CreateStringId("FTC_Menu_FMagickaCDesc", "Ändert die Farbe der Magieleiste im Spielerfenster. [Standard: "..default.."]")
 
local default = math.floor(FTC.Defaults.FrameShieldColor[1]*255)..","..math.floor(FTC.Defaults.FrameShieldColor[2]*255)..","..math.floor(FTC.Defaults.FrameShieldColor[3]*255)
ZO_CreateStringId("FTC_Menu_FStaminaC",     "Farbe der Ausdauerleiste")
ZO_CreateStringId("FTC_Menu_FStaminaCDesc", "Ändert die Farbe der Ausdauerleiste im Spielerfenster. [Standard: "..default.."]")
 
local default = math.floor(FTC.Defaults.FrameShieldColor[1]*255)..","..math.floor(FTC.Defaults.FrameShieldColor[2]*255)..","..math.floor(FTC.Defaults.FrameShieldColor[3]*255)
ZO_CreateStringId("FTC_Menu_FShieldC",      "Farbe der Schildleiste")
ZO_CreateStringId("FTC_Menu_FShieldCDesc",  "Ändert die Farbe der Schildleiste im Spielerfenster. [Standard: "..default.."]")

local default = ( FTC.Defaults.TargetFrameLevel ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FTargetL",      "Zielfenster anzeigen stufe")
ZO_CreateStringId("FTC_Menu_FTargetLDesc",  "Level auf benutzerdefinierten Zielrahmen einbeziehen? [Standard: "..default.."]")

local default = ( FTC.Defaults.TargetFrameTitle ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FTargetT",      "Zielfenstertitel anzeigen")
ZO_CreateStringId("FTC_Menu_FTargetTDesc",  "Titel auf benutzerdefinierten Zielrahmen einbeziehen? [Standard: "..default.."]")

local default = ( FTC.Defaults.TargetFrameShowAccount ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FTargetShowA",       "Zeigt @Name im Zielrahmen.")
ZO_CreateStringId("FTC_Menu_FTargetShowADesc",   "Anzeigen des Kontonamens im Zielrahmen. [Standard: " .. default .."]")

local default = ( FTC.Defaults.EnableGroupFrames ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FGroup",        "Gruppenfenster aktivieren")
ZO_CreateStringId("FTC_Menu_FGroupDesc",    "Das Gruppenfenster wird bei einer Gruppengröße von 4 oder weniger angezeigt. [Standard: "..default.."]")

ZO_CreateStringId("FTC_Menu_FGWidth",       "Gruppenfenster Breite")
ZO_CreateStringId("FTC_Menu_FGWidthDesc",   "Ändert die Breite des Gruppenfensters. [Standard: "..FTC.Defaults.GroupWidth.."]")

ZO_CreateStringId("FTC_Menu_FGHeight",      "Gruppenfenster Höhe")
ZO_CreateStringId("FTC_Menu_FGHeightDesc",  "Ändert die Höhe des Gruppenfensters. [Standard: "..FTC.Defaults.GroupHeight.."]")

ZO_CreateStringId("FTC_Menu_FGFontS",       "Gruppenfenster Schriftgröße")
ZO_CreateStringId("FTC_Menu_FGFontSDesc",   "Ändert die Schriftgröße im Gruppenfenster. [Standard: "..FTC.Defaults.GroupFontSize.."]")

local default = ( FTC.Defaults.GroupHidePlayer ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FGHideP",       "Verstecke Spieler im Gruppenfenster")
ZO_CreateStringId("FTC_Menu_FGHidePDesc",   "Versteckt die eigene Lebensleiste im Gruppenfenster. [Standard: " .. default .."]")

local default = ( FTC.Defaults.GroupShowLevel ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FGShowL",       "Zeigt Stufe im Gruppenrahmen Anzeigen")
ZO_CreateStringId("FTC_Menu_FGShowLDesc",   "Zeigt stufe im Gruppenrahmen Anzeigen. [Standard: " .. default .."]")

local default = ( FTC.Defaults.GroupShowAccount ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FGShowA",       "Zeigt @Name im Gruppenfenster")
ZO_CreateStringId("FTC_Menu_FGShowADesc",   "Anzeigen des Kontonamens im Gruppenfenster. [Standard: " .. default .."]")

local default = ( FTC.Defaults.ColorRoles ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FColorR",       "Fensterfarbe entspr. der Rolle")
ZO_CreateStringId("FTC_Menu_FColorRDesc",   "Die Einfärbung entsprechend der Rolle wird im Gruppen- und Schlachtzugsfenster angezeigt. [Standard: "..default.."]")

local default = math.floor(FTC.Defaults.FrameTankColor[1]*255)..","..math.floor(FTC.Defaults.FrameTankColor[2]*255)..","..math.floor(FTC.Defaults.FrameTankColor[3]*255)
ZO_CreateStringId("FTC_Menu_FTankC",        "Farbeinstellung Tank Rolle")
ZO_CreateStringId("FTC_Menu_FTankCDesc",    "Die eingestellte Farbe für die Tanks wird im Gruppen- und Schlachtzugsfenster angezeigt. [Standard: "..default.."]")

local default = math.floor(FTC.Defaults.FrameHealerColor[1]*255)..","..math.floor(FTC.Defaults.FrameHealerColor[2]*255)..","..math.floor(FTC.Defaults.FrameHealerColor[3]*255)
ZO_CreateStringId("FTC_Menu_FHealerC",      "Farbeinstellung Heiler Rolle")
ZO_CreateStringId("FTC_Menu_FHealerCDesc",  "Die eingestellte Farbe für die Heiler wird im Gruppen- und Schlachtzugsfenster angezeigt. [Standard: "..default.."]")

local default = math.floor(FTC.Defaults.FrameDamageColor[1]*255)..","..math.floor(FTC.Defaults.FrameDamageColor[2]*255)..","..math.floor(FTC.Defaults.FrameDamageColor[3]*255)
ZO_CreateStringId("FTC_Menu_FDamageC",      "Farbeinstellung DD Rolle")
ZO_CreateStringId("FTC_Menu_FDamageCDesc",  "Die eingestellte Farbe für die Damage Dealer wird im Gruppen- und Schlachtzugsfenster angezeigt. [Standard: "..default.."]")

local default = ( FTC.Defaults.EnableRaidFrames ) and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_FRaid",         "Schlachtzugsfenster aktivieren")
ZO_CreateStringId("FTC_Menu_FRaidDesc",     "Das Schlachtzugsfenster wird bei einer Gruppengröße größer als 4 angezeigt. [Standard: "..default.."]")

ZO_CreateStringId("FTC_Menu_FRaidS",        "Schlachtzugsfenster Spaltengröße")
ZO_CreateStringId("FTC_Menu_FRaidSDesc",    "Zeigt die Anzahl der Spieler pro Spalte im FTC Schlachtzugsfenster an. [Standard: "..FTC.Defaults.RaidColumnSize.."]")

ZO_CreateStringId("FTC_Menu_FRWidth",       "Schlachtzugsfenster Breite")
ZO_CreateStringId("FTC_Menu_FRWidthDesc",   "Ändert die Breite des Schlachtzugsfensters. [Standard: "..FTC.Defaults.RaidWidth.."]")

ZO_CreateStringId("FTC_Menu_FRHeight",      "Schlachtzugsfenster Höhe")
ZO_CreateStringId("FTC_Menu_FRHeightDesc",  "Ändert die Höhe des Schlachtzugsfensters. [Standard: "..FTC.Defaults.RaidHeight.."]")

ZO_CreateStringId("FTC_Menu_FRFontS",       "Schlachtzugsfenster Schriftgröße")
ZO_CreateStringId("FTC_Menu_FRFontSDesc",   "Ändert die Schriftgröße für das Schlachtzugsfenster. [Standard: "..FTC.Defaults.RaidFontSize.."]")

ZO_CreateStringId("FTC_Menu_FReset",        "Zurücksetzen")
ZO_CreateStringId("FTC_Menu_FResetDesc",    "Setzt die FTC Einheitenfenster zurück auf die Standardwerte.")
 
--[[----------------------------------------------------------
    BUFF TRACKING
  ]]----------------------------------------------------------

-- Buff Tracking UI
ZO_CreateStringId("FTC_PB_Label",           "Spieler Buffs")
ZO_CreateStringId("FTC_PD_Label",           "Spieler Debuffs")
ZO_CreateStringId("FTC_LB_Label",           "e\nw\ni\ng\ne\n\nB\nu\nf\nf\ns")
ZO_CreateStringId("FTC_TB_Label",           "Ziel Buffs")
ZO_CreateStringId("FTC_TD_Label",           "Ziel Debuffs")
ZO_CreateStringId("FTC_PlayerBuff",         "Spieler Buff")
ZO_CreateStringId("FTC_PlayerDebuff",       "Spieler Debuff")

-- Buff Tracking Menu
ZO_CreateStringId("FTC_Menu_BHeader",       "Buff und Debuff Einstellungen")

ZO_CreateStringId("FTC_BuffFormat0",        "Deaktiviert")
ZO_CreateStringId("FTC_BuffFormat1",        "Horizontale Ausrichtung")
ZO_CreateStringId("FTC_BuffFormat2",        "Vertikale Ausrichtung")
ZO_CreateStringId("FTC_BuffFormat3",        "Linke Absteigende Liste")
ZO_CreateStringId("FTC_BuffFormat4",        "Linke Aufsteigende Liste")
ZO_CreateStringId("FTC_BuffFormat5",        "Rechte Absteigende Liste")
ZO_CreateStringId("FTC_BuffFormat6",        "Rechte Aufsteigende Liste")
 
ZO_CreateStringId("FTC_Menu_BPBFormat",     "Spieler Buff Format")
ZO_CreateStringId("FTC_Menu_BPBFormatDesc", "Wähle das gewünschte Format für Spieler Buffs. [Standard: "..FTC.Menu:GetBuffFormat(FTC.Defaults.PlayerBuffFormat).."]")
 
ZO_CreateStringId("FTC_Menu_BPDFormat",     "Spieler Debuff Format")
ZO_CreateStringId("FTC_Menu_BPDFormatDesc", "Wähle das gewünschte Format für Spieler Debuffs. [Standard: "..FTC.Menu:GetBuffFormat(FTC.Defaults.PlayerDebuffFormat).."]")
 
ZO_CreateStringId("FTC_Menu_BLBFormat",     "Lang anhaltende Buffs Format")
ZO_CreateStringId("FTC_Menu_BLBFormatDesc", "Wähle das gewünschte Format für lang anhaltende Buffs. [Standard: "..FTC.Menu:GetBuffFormat(FTC.Defaults.LongBuffFormat).."]")
 
ZO_CreateStringId("FTC_Menu_BTBFormat",     "Ziel Buff Format")
ZO_CreateStringId("FTC_Menu_BTBFormatDesc", "Wähle das Format der Ziel Buffs. [Standard: "..FTC.Menu:GetBuffFormat(FTC.Defaults.TargetBuffFormat).."]")
 
ZO_CreateStringId("FTC_Menu_BTDFormat",     "Ziel Debuff Format")
ZO_CreateStringId("FTC_Menu_BTDFormatDesc", "Wähle das Format der Ziel debuffs. [Standard: "..FTC.Menu:GetBuffFormat(FTC.Defaults.TargetDebuffFormat).."]")
 
ZO_CreateStringId("FTC_Menu_BFont1",        "Primäre Schriftart")
ZO_CreateStringId("FTC_Menu_BFont1Desc",    "Ändert die primäre Schriftart der FTC Buff Komponente. [Standard: "..FTC.UI:TranslateFont(FTC.Defaults.BuffsFont1).."]")
 
ZO_CreateStringId("FTC_Menu_BFont2",        "Sekundäre Schriftart")
ZO_CreateStringId("FTC_Menu_BFont2Desc",    "Ändert die sekundäre Schriftart der FTC Buff Komponente. [Standard: "..FTC.UI:TranslateFont(FTC.Defaults.BuffsFont2).."]")
 
ZO_CreateStringId("FTC_Menu_BFontS",        "Schriftgröße")
ZO_CreateStringId("FTC_Menu_BFontSDesc",    "Ändert die Schriftgröße der FTC Buff Komponente. [Standard: "..FTC.Defaults.BuffsFontSize.."]")
 
ZO_CreateStringId("FTC_Menu_BReset",        "Zurücksetzen")
ZO_CreateStringId("FTC_Menu_BResetDesc",    "Setzt die FTC Buff Einstellungen zurück auf die Standardwerte.")
 
--[[----------------------------------------------------------
    COMBAT LOG
  ]]----------------------------------------------------------

-- Combat Log UI
ZO_CreateStringId("FTC_CL_Label",           "Kampflog")

-- Combat Log Menu
ZO_CreateStringId("FTC_Menu_LHeader",       "Kampflog Einstellungen")

local default = FTC.Defaults.AlternateChat  and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_LAltChat",      "Kampflog im Wechsel mit Chatfenster")
ZO_CreateStringId("FTC_Menu_LAltChatDesc",  "Kampflog wird nur sichtbar, wenn der Chat minimiert ist. [Standard: "..default.."]")

local default = FTC.Defaults.LogHideHeal    and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_LHideHeal",     "Heilung ausblenden")
ZO_CreateStringId("FTC_Menu_LHideHealDesc", "Ausblenden heilung jederzeit?  [Default: "..default.."]")

local default = FTC.Defaults.LogCOH         and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_LCOH",          "Kampf-nur Heilung")
ZO_CreateStringId("FTC_Menu_LCOHDesc",      "Heilung aus dem Kampf ausblenden? [Default: "..default.."]")
 
ZO_CreateStringId("FTC_Menu_LFont",         "Schriftart")
ZO_CreateStringId("FTC_Menu_LFontDesc",     "Ändert die Schriftart des FTC Kampflogs. [Standard: "..FTC.UI:TranslateFont(FTC.Defaults.LogFont).."]")
 
ZO_CreateStringId("FTC_Menu_LFontS",        "Schriftgröße")
ZO_CreateStringId("FTC_Menu_LFontSDesc",    "Ändert die Schriftgröße des FTC Kampflogs. [Standard: "..FTC.Defaults.LogFontSize.."]")

ZO_CreateStringId("FTC_Menu_LOpacity",      "Deckkraft des Kampflogs")
ZO_CreateStringId("FTC_Menu_LOpacityDesc",  "Ändert die Deckkraft vom Hintergrund des FTC Kampflogs. [Default: "..FTC.Defaults.LogOpacity.."]")
 
ZO_CreateStringId("FTC_Menu_LReset",        "Zurücksetzen")
ZO_CreateStringId("FTC_Menu_LResetDesc",    "Setzt die FTC Kampflog Einstellungen zurück auf die Standardwertet.")

--[[----------------------------------------------------------
    SCROLLING COMBAT TEXT
  ]]----------------------------------------------------------

-- Combat Text UI
ZO_CreateStringId("FTC_OD_Label",           "ausgehender Schaden")
ZO_CreateStringId("FTC_ID_Label",           "eingehender Schaden")
ZO_CreateStringId("FTC_CA_Label",           "Kampfmeldungen")
ZO_CreateStringId("FTC_LowHealth",          "Wenig Leben")
ZO_CreateStringId("FTC_LowMagicka",         "Wenig Magicka")
ZO_CreateStringId("FTC_LowStamina",         "Wenig Stamina")
ZO_CreateStringId("FTC_Experience",         "Erfahrung")
ZO_CreateStringId("FTC_AlliancePoints",     "Allianzpunkte")
ZO_CreateStringId("FTC_Stunned",            "Betäubt")
ZO_CreateStringId("FTC_Disoriented",        "Orientierungslos")
ZO_CreateStringId("FTC_Offbalance",         "Aus dem Gleichgewicht")
ZO_CreateStringId("FTC_Staggered",          "Taumelnd")
ZO_CreateStringId("FTC_Interrupted",        "Unterbrochen")
ZO_CreateStringId("FTC_Feared",             "Verängstigt")
ZO_CreateStringId("FTC_Silenced",           "Stumm")
ZO_CreateStringId("FTC_Rooted",             "Verwurzelt")
ZO_CreateStringId("FTC_BreakFree",          "Entfesseln")
ZO_CreateStringId("FTC_Potion",             "Trank verfügbar")
ZO_CreateStringId("FTC_Ultimate",           "Ultimate verfügbar")
ZO_CreateStringId("FTC_CleanseNow",         "Jetzt Reinigen")
ZO_CreateStringId("FTC_CombatIn",           "Im Kampf")
ZO_CreateStringId("FTC_CombatOut",          "Kampfende")
ZO_CreateStringId("FTC_Falling",            "Fallschaden")
ZO_CreateStringId("FTC_FakeDamage",         "Test Schaden")
ZO_CreateStringId("FTC_FakeHeal",           "Test Heilung")

-- Combat Text Menu
ZO_CreateStringId("FTC_Menu_SHeader",       "Schwebender Kampftext Einstellungen")

local default = FTC.Defaults.SCTIcons and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_SIcons",        "Anzeige der Symbole")
ZO_CreateStringId("FTC_Menu_SIconsDesc",    "Zeigt die Symbole der Fähigkeiten neben den Schadenswerten an. [Standard: "..default.."]")

local default = FTC.Defaults.SCTNames and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_SNames",        "Anzeige der Fähigkeitsnamen")
ZO_CreateStringId("FTC_Menu_SNamesDesc",    "Zeigt die Namen der Fähigkeiten neben den Schadenswerten an. [Standard: "..default.."]")

local default = FTC.Defaults.SCTRound and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_SRound",        "Schadenswerte verkürzen")
ZO_CreateStringId("FTC_Menu_SRoundDesc",    "Die Schadenswerte werden aufgerundet, als Beispiel aus 9.543 Schaden wird 9,5k Schaden. [Standard: "..default.."]")

local default = FTC.Defaults.SCTAlerts      and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_SAlerts",       "Kampfmeldungen anzeigen")
ZO_CreateStringId("FTC_Menu_SAlertsDesc",   "Zeigt für die wichtigsten Kampfereignisse, die entsprechende Kampfmeldung an.  [Standard: "..default.."]")

local default = FTC.Defaults.SCTHideHeal    and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_SHideHeal",     "Heilung ausblenden")
ZO_CreateStringId("FTC_Menu_SHideHealDesc", "Ausblenden heilung jederzeit?  [Default: "..default.."]")

local default = FTC.Defaults.SCTCOH         and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_SCOH",          "Kampf-nur Heilung")
ZO_CreateStringId("FTC_Menu_SCOHDesc",      "Heilung aus dem Kampf ausblenden? [Default: "..default.."]")

ZO_CreateStringId("FTC_Menu_SSpeed",        "Geschwindigkeit des Kampftextes")
ZO_CreateStringId("FTC_Menu_SSpeedDesc",    "Ändert die Geschwindigkeit des schwebenden Kampftextes, je höher der Wert, umso schneller die Animation. [Standard: "..FTC.Defaults.SCTSpeed.."]")

ZO_CreateStringId("FTC_Menu_SArc",          "Intensität des Bogens")
ZO_CreateStringId("FTC_Menu_SArcDesc",      "Ändert die Krümmung der Animation im schwebenden Kampftext, höhere Werte generieren eine größere Biegung. [Standard: "..FTC.Defaults.SCTArc.."]")

ZO_CreateStringId("FTC_Menu_SScrollOut",    "Richtung des ausgehenden Schadens")
ZO_CreateStringId("FTC_Menu_SScrollOutDesc","Ändert die Richtung des schwebenden Kampftextes im Fenster des ausgehenden Schadens. [Standar: "..FTC.Defaults.SCTOutScroll.."]")

ZO_CreateStringId("FTC_Menu_SScrollIn",     "Richtung des eingehenden Schadens")
ZO_CreateStringId("FTC_Menu_SScrollInDesc","Ändert die Richtung des schwebenden Kampftextes im Fenster des eingehenden Schadens. [Standard: "..FTC.Defaults.SCTInScroll.."]")

ZO_CreateStringId("FTC_Menu_SFont1",        "Primäre Schriftart")
ZO_CreateStringId("FTC_Menu_SFont1Desc",    "Ändert die primäre Schriftart der Schadenswerte im schwebenden Kampftext. [Standard: "..FTC.UI:TranslateFont(FTC.Defaults.SCTFont1).."]")

ZO_CreateStringId("FTC_Menu_SFont2",        "Sekundäre Schriftart")
ZO_CreateStringId("FTC_Menu_SFont2Desc",    "Ändert die sekundäre Schriftart der Fähigkeitsnamen im schwebenden Kampftext. [Standard: "..FTC.UI:TranslateFont(FTC.Defaults.SCTFont2).."]")

ZO_CreateStringId("FTC_Menu_SFontS",        "Schriftgröße")
ZO_CreateStringId("FTC_Menu_SFontSDesc",    "Ändert die Schriftgröße im schwebenden Kampftext. [Standard: "..FTC.Defaults.SCTFontSize.."]")

ZO_CreateStringId("FTC_Menu_SIconS",        "Symbolgröße")
ZO_CreateStringId("FTC_Menu_SIconSDesc",    "Ändert die Symbolgröße im schwebenden Kampftext. [Standard: "..FTC.Defaults.SCTIconSize.."]")

ZO_CreateStringId("FTC_Menu_SCTReset",      "Zurücksetzen")
ZO_CreateStringId("FTC_Menu_SCTResetDesc",  "Setzt die Einstellungen des schwebenden Kampftextes zurück auf die Standardwerte.")

--[[----------------------------------------------------------
    DAMAGE STATISTICS
  ]]----------------------------------------------------------

-- Damage Report UI
ZO_CreateStringId("FTC_DReport",            "FTC Schadensreport")
ZO_CreateStringId("FTC_HReport",            "FTC Heilungsreport")
ZO_CreateStringId("FTC_NoDamage",           "Kein Schaden ausgeteilt!")
ZO_CreateStringId("FTC_NoHealing",          "Keine Heilung gewirkt!")
ZO_CreateStringId("FTC_AllTargets",         "Alle Ziele")
ZO_CreateStringId("FTC_Ability",            "Fähigkeit")
ZO_CreateStringId("FTC_Crit",               "Krit")
ZO_CreateStringId("FTC_Average",            "Durchschnitt")
ZO_CreateStringId("FTC_Max",                "Max")
ZO_CreateStringId("FTC_Damage",             "Schaden")
ZO_CreateStringId("FTC_Healing",            "Heilung")
ZO_CreateStringId("FTC_DPS",                "DPS")
ZO_CreateStringId("FTC_HPS",                "HPS")

-- Damage Report Menu
ZO_CreateStringId("FTC_Menu_THeader",       "Schadensstatistik Einstellungen")

ZO_CreateStringId("FTC_Menu_TTimeout",      "Zeitüberschreitung in Sekunden")
ZO_CreateStringId("FTC_Menu_TTimeoutDesc",  "Ändert die Sekunden, die nach einem Kampf vergehen müssen, damit Schadensstatistik neu aufgezeichnet wird. [Standard: "..FTC.Defaults.DamageTimeout.."]")

local default = FTC.Defaults.StatTriggerHeals and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_TRHeal",        "Aktiviere Heilungstrigger")
ZO_CreateStringId("FTC_Menu_TRHealDesc",    "Bei ausgehender Heilung wird die Schadensstatistik sofort aktiviert.  [Standard: "..default.."]")

local default = FTC.Defaults.StatsShareDPS and "Ein" or "Aus"
ZO_CreateStringId("FTC_Menu_TShare",        "[BETA] Schadensstatistik teilen")
ZO_CreateStringId("FTC_Menu_TShareDesc",    "Erlaubt euren Gruppenmitglieder die Werte der Schadensstatistik automatisch untereinander zu teilen, sofern sie ebenfalls die FTC Version 0.65+ nutzen und diese Option aktiviert haben. [Standard: "..default.."]")

ZO_CreateStringId("FTC_Menu_TReset",        "Zurücksetzen")
ZO_CreateStringId("FTC_Menu_TResetDesc",    "Setzt die Einstellungen der FTC Schadensstatistik zurück auf die Standardwerte.")
