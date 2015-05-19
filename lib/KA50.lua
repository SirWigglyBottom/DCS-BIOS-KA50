BIOS.protocol.beginModule("Ka-50", 0x3200)
BIOS.protocol.setExportModuleAircrafts({"Ka-50"})

local documentation = moduleBeingDefined.documentation

local document = BIOS.util.document


local definePushButton = BIOS.util.definePushButton
local defineTumb = BIOS.util.defineTumb
local defineToggleSwitch = BIOS.util.defineToggleSwitch
local defineMultipositionSwitch = BIOS.util.defineMultipositionSwitch
local definePotentiometer = BIOS.util.definePotentiometer
local defineRotary = BIOS.util.defineRotary
--working rotary/pushbutton example:
-- defineRotary("ABRIS_SHUNT", 9, 3006, 523, "ABRIS Display", "Rotary knob")
-- definePushButton("BTN_ABRIS_SHUNT", 9, 3007, 518, "ABRIS Display", "ABRIS Rotary Pushbutton")
--Working position selector
-- defineTumb("CONTR_SAPROTATE", 6, 3005, 462, 0.1, {0.0, 0.6}, nil, false, "Ejection System", "Ejecting system circuit selector")
-- working 3-way switch
-- defineMultipositionSwitch("EEG_TURBINE_TEST", 4, 3017, 295, 3, 0.1, "Engine Systems", "EEG power turbine channel 1 test – Operate – EEG power turbine channel 2 test, three-switch contactor")


-- CPT MECH 34
defineToggleSwitch("GEAR", 34, 3001, 65, "Gear System", "Gear Lever")
defineToggleSwitch("AVAR_GEAR", 34, 3004, 66, "Gear System", "Main/Common hydraulics for emergency gear")
defineToggleSwitch("AVAR_GEAR_COVER", 34, 3005, 67, "Gear System", "Main/Common hydraulics for emergency gear - cover")

--ACCELEROMETER 61
definePushButton("GFORCE_RESET", 61, 3001, 572, "Gear System", "Accelerometer Reset")

-- SYSTEM CONTROLLER 14
definePushButton("CSO", 14, 3001, 44, "System Controller", "Master caution push-ligh")
definePushButton("CONTROL_ALARM", 14, 3002, 45, "System Controller", "Lamps test")
definePushButton("MAIN_ROTOR", 14, 3003, 46, "System Controller", "Rotor RPM warning push-light")
defineToggleSwitch("BKO", 14, 3004, 49, "System Controller", "MWS operation mode (not functional)")


-- ELECTRICS POWER 2
defineToggleSwitch("ENERG_DC_GROUND", 2, 3001, 262, "Electrical System", "DC ground power")
defineToggleSwitch("ENERG_DC_GROUND_COVER", 2, 3002, 263, "Electrical System", "DC ground power Cover")
defineToggleSwitch("ENERG_BATT2", 2, 3003, 543, "Electrical System", "Battery 2")
defineToggleSwitch("ENERG_BATT2_COVER", 2, 3004, 544, "Electrical System", "Battery 2 Cover")
defineToggleSwitch("ENERG_BATT1", 2, 3005, 264, "Electrical System", "Battery 1")
defineToggleSwitch("ENERG_BATT1_COVER", 2, 3006, 265, "Electrical System", "Battery 1 Cover")

defineToggleSwitch("RAMP_POWER", 2, 3007, 267, "Electrical System", "AC ground power")
defineToggleSwitch("GEN_LEFT", 2, 3008, 268, "Electrical System", "AC left generator")
defineToggleSwitch("GEN_RIGHT", 2, 3009, 269, "Electrical System", "AC right generator")
defineToggleSwitch("INVERTER", 2, 3010, 270, "Electrical System", "DC/AC inverter")

-- FUEL SYSTEM 3
defineToggleSwitch("FUEL_PUMP_FRONT", 3, 3001, 271, "Fuel Systems", "Forward fuel tank pumps")
defineToggleSwitch("FUEL_PUMP_BACK", 3, 3002, 272, "Fuel Systems", "Rear fuel tank pumps")
defineToggleSwitch("FUEL_PUMP_INNER", 3, 3003, 273, "Fuel Systems", "Inner external fuel tanks pumps")
defineToggleSwitch("FUEL_PUMP_OUTER", 3, 3004, 274, "Fuel Systems", "Outer external fuel tanks pumps")
defineToggleSwitch("FUEL_METER", 3, 3005, 275, "Fuel Systems", "Fuelmeter power")
defineToggleSwitch("FUEL_ENGINE_LEFT", 3, 3006, 276, "Fuel Systems", "Left engine fuel shutoff valve")
defineToggleSwitch("FUEL_ENGINE_LEFT_COVER", 3, 3007, 277, "Fuel Systems", "Left engine fuel shutoff valve cover")
defineToggleSwitch("FUEL_ENGINE_RIGHT", 3, 3008, 278, "Fuel Systems", "Right engine fuel shutoff valve")
defineToggleSwitch("FUEL_ENGINE_RIGHT_COVER", 3, 3009, 279, "Fuel Systems", "Right engine fuel shutoff valve cover")
defineToggleSwitch("FUEL_APU", 3, 3010, 280, "Fuel Systems", "APU fuel shutoff valve")
defineToggleSwitch("FUEL_APU_COVER", 3, 3011, 281, "Fuel Systems", "APU fuel shutoff valve cover")
defineToggleSwitch("FUEL_CROSSFEED", 3, 3012, 282, "Fuel Systems", "Fuel crossfeed valve")
defineToggleSwitch("FUEL_CROSSFEED_COVER", 3, 3013, 283, "Fuel Systems", "Fuel crossfeed valve cover")
definePushButton("FUEL_QIS_TEST", 3, 3014, 616, "Fuel Systems", "Fuel quantity indicator self test button")

-- COMMS POWER 50, 49, 48, 25, 25, 0(?)
defineToggleSwitch("COMMS_INTERCOM", 50, 3001, 284, "Communication Power Systems", "Intercom")
defineToggleSwitch("COMMS_VHF1", 49, 3005, 285, "Communication Power Systems", "VHF-1 (R828) power switch")
defineToggleSwitch("COMMS_VHF2", 48, 3011, 286, "Communication Power Systemss", "VHF-2 (R-800) power switch")
defineToggleSwitch("COMMS_DATALINK_TLK", 25, 3017, 287, "Communication Power Systems", "Radio equipment datalink TLK power switch")
defineToggleSwitch("COMMS_DATALINK_UHF_TLK", 25, 3018, 288, "Communication Power Systems", "Radio equipment datalink UHF TLK power switch")
defineToggleSwitch("COMMS_DATALINK_SA_TLF", 0, 3007, 289, "Communication Power Systems", "Radio equipment datalink SA-TLF power switch")

-- WEAPON SYS 12
defineToggleSwitch("W_SYS", 12, 3018, 547, "Weapons Control System", "Weapon Control System Power")
defineToggleSwitch("W_SYS_COVER", 12, 3019, 548, "Weapons Control System", "Weapon Control System Power Cover")

-- EJECT SYSTEM 6
defineToggleSwitch("RIGHT_EMER_SW2", 6, 3001, 214, "Ejection System", "Ejecting system power 1")
defineToggleSwitch("RIGHT_EMER_SW1", 6, 3002, 215, "Ejection System", "Ejecting system power 2")
defineToggleSwitch("RIGHT_EMER_SW3", 6, 3003, 216, "Ejection System", "Ejecting system power 3")
defineToggleSwitch("RIGHT_EMER_COVER", 6, 3004, 217, "Ejection System", "Ejecting system power Cover")
defineTumb("CONTR_SAPROTATE", 6, 3005, 462, 0.1, {0.0, 0.6}, nil, false, "Ejection System", "Ejecting system circuit selector")
definePushButton("CONTR_SAP", 6, 3006, 460, "Ejection System", "Ejecting system circuit test")

-- HYDRAULICS 5
defineToggleSwitch("HYDRO", 5, 3001, 220, "Hydraulics Systems", "Main hydraulics switch")
defineToggleSwitch("HYDRO_COVER", 5, 3002, 221, "Hydraulics Systems", "Main hydraulics switch Cover")

-- IFF 42
defineToggleSwitch("IFF", 42, 3001, 218, "IFF Systems", "IFF power switch")
defineToggleSwitch("IFF_COVER", 42, 3002, 219, "IFF Systems", "IFF power switch Cover")

-- ENGINES 4
defineToggleSwitch("EEG_LEFT", 4, 3001, 290, "Engine Systems", "EEG Left engine Electronic Engine Governor")
defineToggleSwitch("EEG_LEFT_COVER", 4, 3002, 291, "Engine Systems", "EEG Left engine Electronic Engine Governor Cover")
defineToggleSwitch("EEG_RIGHT", 4, 3003, 292, "Engine Systems", "EEG Right engine Electronic Engine Governor")
defineToggleSwitch("EEG_RIGHT_COVER", 4, 3004, 293, "Engine Systems", "EEG Right engine Electronic Engine GovernorCover")

defineToggleSwitch("EEG_GAS_GEN_TEST", 4, 3015, 294, "Engine Systems", "EEG gas generator test – Operate switch")
defineToggleSwitch("EEG_GAS_GEN_TEST_COVER", 4, 3016, 569, "Engine Systems", "EEG gas generator test – Operate switch Cover")
defineMultipositionSwitch("EEG_TURBINE_TEST", 4, 3017, 295, 3, 0.1, "Engine Systems", "EEG power turbine channel 1 test – Operate – EEG power turbine channel 2 test, three-switch contactor")
defineToggleSwitch("EEG_TURBINE_TEST_COVER", 4, 3018, 570, "Engine Systems", "EEG power turbine channel 1 test – Operate – EEG power turbine channel 2 test, three-switch contactor Cover")

definePushButton("RT_12_6_LEFT", 4, 3019, 457, "Engine Systems", "Left EGT control threshold governor button")
definePushButton("RT_12_6_RIGHT", 4, 3020, 458, "Engine Systems", "Right EGT control threshold governor button")
definePushButton("RT_12_6_IV", 4, 3021, 459, "Engine Systems", "Engines vibrations monitoring system control button")

-- NAV SYSTEM 59, 28
defineToggleSwitch("NAV_POWER", 59, 3001, 222, "Navigation Systems", "Navigation system power")
defineMultipositionSwitch("GYRO_HDG_SEL", 28, 3001, 229, 3, 0.1, "Navigation Systems", "Gyro/Mag/Manual heading")

-- ABRIS Display 9
definePushButton("BTN_ABRIS_01", 9, 3001, 512, "ABRIS Display", "ABRIS Pushbutton 1")
definePushButton("BTN_ABRIS_02", 9, 3002, 513, "ABRIS Display", "ABRIS Pushbutton 2")
definePushButton("BTN_ABRIS_03", 9, 3003, 514, "ABRIS Display", "ABRIS Pushbutton 3")
definePushButton("BTN_ABRIS_04", 9, 3004, 515, "ABRIS Display", "ABRIS Pushbutton 4")
definePushButton("BTN_ABRIS_05", 9, 3005, 516, "ABRIS Display", "ABRIS Pushbutton 5")
defineRotary("ABRIS_SHUNT", 9, 3006, 523, "ABRIS Display", "Rotary Knob")
definePushButton("BTN_ABRIS_SHUNT", 9, 3007, 518, "ABRIS Display", "ABRIS Rotary Pushbutton")
definePotentiometer("ABRIS_BRIGHTNESS", 9, 3008, 517, nil, "ABRIS Display", "ABRIS Brightness")
defineToggleSwitch("ABRIS_POWER", 9, 3009, 130, "ABRIS Display", "ABRIS Power")

-- HUD 7
definePotentiometer("HUD_BRIGHTNESS", 7, 3001, 8, nil, "HUD", "HUD Brightness")
defineTumb("HUD_SET_KA02", 7, 3002, 9, 1.0, {-1.0, 1.0}, nil, false, "HUD", "HUD Modes Reticle/Night/Day")
definePushButton("HUD_TEST", 7, 3003, 7, "HUD", "HUD Test")
defineToggleSwitch("HUD_FILTER", 7, 3004, 510, "HUD", "HUD Filter")

-- PVI NAV Panel 20, 25
definePushButton("PVI_0", 20, 3001, 312, "PVI", "Nav 0 Button")
definePushButton("PVI_1", 20, 3002, 303, "PVI", "Nav 1 Button")
definePushButton("PVI_2", 20, 3003, 304, "PVI", "Nav 2 Button")
definePushButton("PVI_3", 20, 3004, 305, "PVI", "Nav 3 Button")
definePushButton("PVI_4", 20, 3005, 306, "PVI", "Nav 4 Button")
definePushButton("PVI_5", 20, 3006, 307, "PVI", "Nav 5 Button")
definePushButton("PVI_6", 20, 3007, 308, "PVI", "Nav 6 Button")
definePushButton("PVI_7", 20, 3008, 309, "PVI", "Nav 7 Button")
definePushButton("PVI_8", 20, 3009, 310, "PVI", "Nav 8 Button")
definePushButton("PVI_9", 20, 3010, 311, "PVI", "Nav 9 Button")
definePushButton("PVI_PPM", 20, 3011, 315, "PVI", "WPT Button")
definePushButton("PVI_PZ", 20, 3012, 519, "PVI", "Inflight INU Realignment Button")
definePushButton("PVI_OP", 20, 3013, 316, "PVI", "Fixpoints Button")
definePushButton("PVI_TB", 20, 3014, 520, "PVI", "Precise INU Alignment Button")
definePushButton("PVI_AER", 20, 3015, 317, "PVI", "Airfields Button")
definePushButton("PVI_HB", 20, 3016, 521, "PVI", "Normal INU Alignment Button")
definePushButton("PVI_OT", 20, 3017, 318, "PVI", "Targets Button")
definePushButton("PVI_ENTER", 20, 3018, 313, "PVI", "Enter Button")
definePushButton("PVI_CANCEL", 20, 3019, 314, "PVI", "Cancel Button")
definePushButton("PVI_KC", 20, 3020, 522, "PVI", "Initial Nav Pos Button")
definePushButton("PVI_FILAMBA", 20, 3021, 319, "PVI", "Self coordinates Button")
definePushButton("PVI_FIZ", 20, 3022, 320, "PVI", "Course:Course Deviation/Time/Range to WPT Button")
definePushButton("PVI_DU", 20, 3023, 321, "PVI", "Wind Heading/Speed Button")
definePushButton("PVI_FII", 20, 3024, 322, "PVI", "True Heading/Time/Range to final WPT Button")
definePushButton("PVI_ACDC", 20, 3025, 323, "PVI", "Bearing/Range to target Button")
defineTumb("PVI_MMSWITCH", 20, 3026, 324, 0.1, {0.0, 0.6}, nil, false, "PVI", "Master modes switch") -- FIX
defineToggleSwitch("PVI_I251V", 20, 3028, 325, "PVI", "INU fixtaking method switch")
defineToggleSwitch("DATALINK_POWER", 25, 3016, 326, "DATALINK", "Datalink power switch")
definePotentiometer("PVI_BRIGHTNESS", 20, 3029, 327, {0.001, 0.1}, "PVI", "Brightness") -- non-functional potentiometer

-- UV-26 CMD Control Panel 22
defineMultipositionSwitch("UV26_BOARD", 22, 3001, 36, 3, 0.1, "UV-26", "CMD Select Left/Both/Right board flares dispensers")
defineToggleSwitch("UV26_PROGR", 22, 3003, 37, "UV-26", "CMD Amount flares counter/Programming")
definePushButton("UV26_SERIES", 22, 3004, 38, "UV-26", "CMD Num of sequences")
definePushButton("UV26_BURST", 22, 3005, 39, "UV-26", "CMD Num in sequence")
definePushButton("UV26_INTERNAL", 22, 3006, 41, "UV-26", "CMD Dispense interval")
definePushButton("UV26_START", 22, 3007, 43, "UV-26", "CMD Start dispense")
definePushButton("UV26_CANCELPRG", 22, 3008, 42, "UV-26", "CMD Reset to default program")
definePushButton("UV26_STOP", 22, 3009, 40, "UV-26", "CMD Stop dispense")


-- UV-26 related (REAR PANEL) 22
defineToggleSwitch("UV26_POWER", 22, 3010, 496, "UV-26", "CMD Power")
defineToggleSwitch("UV26_POWER_COVER", 22, 3012, 497, "UV-26", "CMD Power Cover")
defineToggleSwitch("UV26_BIT", 22, 3011, 498, "UV-26", "CMD Power")
defineToggleSwitch("UV26_BIT_COVER", 22, 3013, 499, "UV-26", "CMD Power Cover")

-- DATALINK 25
-- Datalink Control Panel 25
definePushButton("DLNK_SEND", 25, 3001, 159, "Datalink System", "Datalink Send/Memory")
definePushButton("DLNK_ESCAPE", 25, 3002, 150, "Datalink System", "Datalink Ingress to target")
definePushButton("DLNK_ERASE", 25, 3003, 161, "Datalink System", "Datalink Erase")
definePushButton("DLNK_CLEAN", 25, 3004, 15, "Datalink System", "Datalink N/A")
definePushButton("DLNK_WINGMAN_ALL", 25, 3005, 16, "Datalink System", "Datalink to ALL")
definePushButton("DLNK_WINGMAN_1", 25, 3006, 17, "Datalink System", "Datalink to Wingman 1")
definePushButton("DLNK_WINGMAN_2", 25, 3007, 18, "Datalink System", "Datalink to Wingman 2")
definePushButton("DLNK_WINGMAN_3", 25, 3008, 19, "Datalink System", "Datalink to Wingman 3")
definePushButton("DLNK_WINGMAN_4", 25, 3009, 20, "Datalink System", "Datalink to Wingman 4")
definePushButton("DLNK_TARGET_1", 25, 3010, 21, "Datalink System", "Datalink Target #1/Vehicle")
definePushButton("DLNK_TARGET_2", 25, 3011, 22, "Datalink System", "Datalink Target #2/SAM")
definePushButton("DLNK_TARGET_3", 25, 3012, 23, "Datalink System", "Datalink Target #3/Other Type")
definePushButton("DLNK_TARGET_POINT", 25, 3013, 50, "Datalink System", "Datalink Ingress point")

-- Datalink Mode Controls
defineMultipositionSwitch("DLNK_SELF_ID", 25, 3014, 328, 4, 0.1, "Datalink System", "Datalink self ID")
defineMultipositionSwitch("DLNK_MASTER_MODES", 25, 3015, 329, 4, 0.1, "Datalink System", "Datalink Master mode")

-- PUI-800 Weapons Control Panel 21, 12
defineToggleSwitch("PUI800_MASTER_ARM", 12, 3001, 387, "PUI-800 Weapon Control Panel", "Master Arm")
definePushButton("PUI800_AVARSTART", 12, 3002, 401, "PUI-800 Weapon Control Panel", "Not implemented")
definePushButton("PUI800_EXT_STR_JETT", 12, 3003, 402, "PUI-800 Weapon Control Panel", "External stores jettison")
defineToggleSwitch("PUI800_MASTER_EXPLODE", 12, 3022, 396, "PUI-800 Weapon Control Panel", "Jettison arm mode - arm fuse/disarm fuse")
defineToggleSwitch("PUI800_AUTO", 12, 3005,  403, "PUI-800 Weapon Control Panel", "Manual/Auto weapon system control switch")
defineToggleSwitch("PUI800_OFBR", 12, 3006, 399, "PUI-800 Weapon Control Panel", "Cannon round selector switch HE/AP")
defineToggleSwitch("PUI800_SR", 12, 3004, 400, "PUI-800 Weapon Control Panel", "Weapon mode switch - Burst Lengt")
defineToggleSwitch("PUI800_MR", 12, 3020, 398, "PUI-800 Weapon Control Panel", "Cannon rate of fire setting")
definePushButton("PUI800_MASTER_UNLOAD", 12, 3021, 397, "PUI-800 Weapon Control Panel", "Expedite emergency ATGM launch")

-- PUR Weapons Aux Panel
-- SHKVAL 8
defineToggleSwitch("IT23_BW_SW", 8, 3001, 404, "IT-23 SHKVAL", "IT-23 Black-White indication switch")
definePotentiometer("IT23_DISP_BRIGHT", 8, 3002, 406, nil, "IT-23 SHKVAL", "IT-23 display brightness")
definePotentiometer("IT23_DISP_CONTR", 8, 3003, 407, nil, "IT-23 SHKVAL", "IT-23 display contrast")
defineToggleSwitch("IT23_TR", 8, 3004, 410, "IT-23 SHKVAL", "N/A")

-- HELMET 23 --No idea where this thing is located on the panel
definePotentiometer("HELMET_BRIGHT", 23, 3001, 405, nil, "Helmet Systems", "Helmet System Brightness")

-- WEAPON SYSTEM -- havent found actual location on panel yet.
defineMultipositionSwitch("LSR_CODE_SEL", 12, 3007, 408, 3, 0.1, "Weapon Systems", "Laser code selector")

-- MISC 41
defineToggleSwitch("HUDTV_DECLUTTER", 41, 3001, 409, "Misc System Interfaces", "HUD/TV declutter switch")
definePotentiometer("ALTIMETER_BAR", 41, 3005, 90, nil, "Misc System Interfaces", "Baro pressure QFE knob")

-- Auxiliary panel 32, 12
defineMultipositionSwitch("ATGM_TEMP", 32, 3001, 483, 11, 0.1, "Auxilary Panel", "ATGM Temperature selector")
defineMultipositionSwitch("RB_DATA_SEL", 12, 3023, 484, 11, 0.1, "Auxilary Panel", "Unguided rocket and gun pods ballistics data settings selector")
defineMultipositionSwitch("BIT_SEL", 32, 3003, 485, 9, 0.1, "Auxilary Panel", "Systems BIT selector")
defineToggleSwitch("CTRL_BIT_SW", 32, 3004, 486, "Auxilary Panel", "Control computers BIT switch")
definePushButton("SYS_SELF_TEST", 32, 3007, 489, "Auxilary Panel", "Self test system push-button")
defineToggleSwitch("EMER_INU", 32, 3008, 490, "Auxilary Panel", "Emergency INU alignment switch")
defineToggleSwitch("HANGAR_CABLE", 32, 3009, 491, "Auxilary Panel", "Stabilisation and indication of hanger cable switch")
defineToggleSwitch("VID_REC", 32, 3010, 492, "Auxilary Panel", "Video Tape Recorder Switch")

defineToggleSwitch("INU_POWER", 15, 3001, 487, "Auxilary Panel", "INU Power switch")
defineToggleSwitch("INU_HEATER", 15, 3002, 488, "Auxilary Panel", "INU Heater switch")

defineToggleSwitch("EKRAN", 34, 3002, 452, "Auxilary Panel", "Power plant, hydraulics, EKRAN self-test systems switch")
defineToggleSwitch("EKRAN_COVER", 34, 3003, 453, "Auxilary Panel", "Power plant, hydraulics, EKRAN self-test systems switch cover")

-- PPR - Autopilot Control Panel
-- AUTOPILOT 33

definePushButton("AP_BNK_H", 33, 3001, 330, "Autopilot Control Panel", "Autopilot Bank hold")
definePushButton("AP_HDG_H", 33, 3002, 331, "Autopilot Control Panel", "Autopilot Heading hold")
definePushButton("AP_PITCH_H", 33, 3003, 332, "Autopilot Control Panel", "Autopilot Pitch hold")
definePushButton("AP_ALT_H", 33, 3004, 333, "Autopilot Control Panel", "Autopilot Altitude hold")
definePushButton("AP_DIRECTOR", 33, 3005, 334, "Autopilot Control Panel", "Autopilot Director control")
defineToggleSwitch("AP_BAR_RAD_HOLD", 33, 3006, 335, "Autopilot Control Panel", "Autopilot BARO/RALT altitude hold mode")

-- NAV SYSTEM 28
defineToggleSwitch("AP_DH_DT", 28, 3003, 336, "Autopilot Control Panel", "Autopilot Desired heading - Desired track")

-- CLOCK 29 TODO: Fix this, looks odd in sim.
definePushButton("CLOCK_LEFT_PUSH", 29, 3001, 76, "Clock", "Mech clock left lever Pushbutton")
definePotentiometer("CLOCK_LEFT_LEVER", 29, 3003, 511, nil, "Clock", "Mech clock left lever") 
definePushButton("CLOCK_RIGHT_LEVER_PUSH", 29, 3005, 525, "Clock", "Mech clock right lever")
definePotentiometer("CLOCK_RIGHT_LEVER", 29, 3004, 77, nil, "Clock", "Mech clock right lever Pushbutton")
-- OVERHEAD PANEL 34
defineMultipositionSwitch("OVH_NAV_LIGHT", 45, 3004, 146, 4, 0.1, "Overhead Panel", "Navigation Lights 10\% / 30\% / 100\% / Off")
defineMultipositionSwitch("OVH_WINDSH_WIPER", 34, 3007, 147, 4, 0.1, "Overhead Panel", "Windshield wiper switch")
defineToggleSwitch("OVH_WINDSH_WASH", 0, 3008, 148, "Overhead Panel", "Windshield washer fluid switch")
definePotentiometer("OVH_BRIGHT_ADJ", 0, 3009, 126, nil, "Overhead Panel", "Brightness") --non functional ingame.
defineToggleSwitch("OVH_PITOT_STA_AOA_HEAT", 34, 3008, 539, "Overhead Panel", "Pitot static port and AoA sensors heat switch")
defineToggleSwitch("OVH_PITOT_RAM_CLK_HEAT", 34, 3009, 151, "Overhead Panel", "Pitot ram air and clock heat switch")
defineToggleSwitch("OVH_RTR_DEICE", 4, 3013, 153, "Overhead Panel", "Rotor de-icing system switch")
defineMultipositionSwitch("OVH_ENGINE_ICE_DUST", 4, 3014, 154, 3, 0.5, "Overhead Panel", "Engines de-icing / dust-protection systems switch")
definePushButton("OVH_PITOT_SYS_TEST", 34, 3010, 156, "Overhead Panel", "Pitot heat system test")

-- HSI 30
defineRotary("HSI_CMD_CRS", 30, 3001, 126, "HSI", "HSI Commanded course rotary")
defineRotary("HSI_CMD_HDG", 30, 3002, 129, "HSI Commanded heading rotary")
definePushButton("HSI_TEST", 30, 3003, 113, "HSI", "HSI test")

-- HSI related 30
defineToggleSwitch("HSI_DH_DT", 30, 3004, 54, "HSI", "HSI Desired track angle - Desired heading, Auto - Manual")

-- ADI 31 --Potentiometer not decreasing yet.
definePotentiometer("ADI_PITCH_TRIM", 31, 3001, 105, nil, "ADI", "ADI Zero pitch trim")
defineToggleSwitch("ADI_TEST_COVER", 31, 3002, 550, "ADI", "ADI Test Cover")
definePushButton("ADI_TEST", 31, 3003, 110, "ADI", "ADI Test")

-- STANDBY ADI 55
definePushButton("SAI_CAGE", 55, 3001, 141, "SAI", "Standy ADI Cage")
defineRotary("SAI_CONTROL", 55, 3003, 597, "SAI", "Standy ADI Control")
defineToggleSwitch("SAI_POWER", 55, 3004, 230, "SAI", "Standby Attitude Indicator power switch")

-- RADIOALTIMETER 38
defineRotary("RAD_ALT_DANGER_SET", 38, 3001, 91, "Radar Altimeter", "Dangerous RALT set rotary") -- functional, not animated in DCS
definePushButton("RAD_ALT_TEST", 38, 3002, 96, "Radar Altimeter", "Radar altimeter test")

-- PVR (K-041)
-- WEAPONS
defineToggleSwitch("WP_MODE_TRAIN", 12, 3009, 432, "Weapon Panel", "Training mode")
definePushButton("WP_AUTO_TURN", 12, 3010, 437, "Weapon Panel", "Automatic turn on target mode")
definePushButton("WP_AIRBORNE_TGT", 12, 3011, 438, "Weapon Panel", "Airborne Target")
definePushButton("WP_FWD_HEMI_AIR", 12, 3012, 439, "Weapon Panel", "Forward hemisphere (head-on) air target aspect")
definePushButton("WP_GND_MOV_TGT", 12, 3013, 440, "Weapon Panel", "Ground moving target")

defineMultipositionSwitch("WP_MODE_SEL", 12, 3014, 431, 5, 0.1,"Weapon Panel", "Weapon system mode selector") -- need to test as multi switch
definePushButton("WP_TR_RESET", 12, 3016, 441, "Weapon Panel", "Targeting mode reset")
defineToggleSwitch("WP_AT_GUNSIGHT", 12, 3017, 436, "Weapon Panel", "Automatic Tracking / gun sight")


-- K041 59
defineToggleSwitch("K041_POWER", 59, 3002, 433, "K-041", "K-041 Targeting-navigation system power switch")

-- LASERRANGER 11
defineToggleSwitch("LASER_STBY", 11, 3001, 435, "Laser Ranger", "Laser standby ON/OFF switch")

-- HELMET 23
defineToggleSwitch("HELMET_POWER", 23, 3002, 434, "Helmet", "Helmet-mounted sight system power switch")

-- SHKVAL 8
defineMultipositionSwitch("SHKVAL_SCAN_RATE", 8, 3006, 301, 8, 0.1,"Shkval", "Shkval Scan Rate")

--laser ranger ( front panel) 11
defineToggleSwitch("LDP_LRF_COVER", 11, 3002, 57, "Laser Ranger", "Laser rangefinder / designator - mode switch Cover")
defineToggleSwitch("LDP_LRF", 11, 3003, 56, "Laser Ranger", "Laser rangefinder / designator - mode switch")
definePushButton("LDP_LD_RESET", 11, 3004, 55, "Laser Ranger", "Laser designator reset")

-- Laser Warning System (LW-140) 36
definePushButton("LW_RESET", 36, 3001, 35, "LW-140", "LWS Reset button")
defineToggleSwitch("LW_POWER", 36, 3002, 583, "LW-140", "LWS Power switch")
definePushButton("LW_SELF_TEST", 36, 3003, 584, "LW-140", "LWS self-test button")

-- Engines Start-Up Control Panel 4
definePushButton("START_PANEL_START", 4, 3005, 412, "Engines Start-Up Control Panel", "Start-up selected engine button")
definePushButton("START_PANEL_STOP_START", 4, 3006, 413, "Engines Start-Up Control Panel", "Interrupt start-up button")
definePushButton("START_PANEL_STOP_APU", 4, 3007, 414, "Engines Start-Up Control Panel", "Stop APU button")

defineMultipositionSwitch("START_PANEL_TYP_SEL", 4, 3012, 415, 3, 0.1,"Engines Start-Up Control Panel", "Engine Startup/Crank/False Start selector")
defineMultipositionSwitch("START_PANEL_ENG_SEL", 4, 3008, 416, 4, 0.1,"Engines Start-Up Control Panel", "Engine selector")
defineToggleSwitch("START_PANEL_ENGL_CUTOFF", 4, 3009, 554, "Engines Start-Up Control Panel", "Left engine cut-off valve")
defineToggleSwitch("START_PANEL_ENGR_CUTOFF", 4, 3010, 555, "Engines Start-Up Control Panel", "Right engine cut-off valve")
defineToggleSwitch("START_PANEL_ROTOR_BRAKE", 4, 3011, 556, "Engines Start-Up Control Panel", "Rotor brake")
definePushButton("START_PANEL_EGT_TEST_RUN", 4, 3022, 131, "Engines Start-Up Control Panel", "Running engines exhaust gas temperature indicator test button")
definePushButton("START_PANEL_EGT_TEST_STOP", 4, 3023, 132, "Engines Start-Up Control Panel", "Stopped engines exhaust gas temperature indicator test button")

--Radio switcher 50
defineMultipositionSwitch("SPU9_SEL_RADIO", 50, 3002, 428, 4, 0.11,"SPU-9", "SPU-9 Radio communicator selector")

-- Fire Extinguishers Control Panel 40
definePushButton("FECP_LEE", 40, 3001, 236, "Fire Extinguishers Control Panel", "Left engine extinguisher")
definePushButton("FECP_APU", 40, 3002, 238, "Fire Extinguishers Control Panel", "APU extinguisher")
definePushButton("FECP_REE", 40, 3003, 240, "Fire Extinguishers Control Panel", "Right engine extinguisher")
definePushButton("FECP_VEE", 40, 3004, 242, "Fire Extinguishers Control Panel", "Ventilator extinguisher")
defineMultipositionSwitch("FECP_FEW", 40, 3005, 248, 3, 0.1, "Fire Extinguishers Control Panel", "Fire extinguisher Work – Off – Test switch")
defineToggleSwitch("FECP_FEW_CVR", 40, 3007, 249, "Fire Extinguishers Control Panel", "Fire extinguisher Work – Off – Test switch Cover")
defineToggleSwitch("FECP_FSIG", 40, 3008, 250, "Fire Extinguishers Control Panel", "Fire signaling")
defineToggleSwitch("FECP_FEF", 40, 3009, 246, "Fire Extinguishers Control Panel", "Fire extinguisher First (Auto) / Second (Manual) selector")
defineToggleSwitch("FECP_FEF_CVR", 40, 3010, 247, "Fire Extinguishers Control Panel", "Fire extinguisher First (Auto) / Second (Manual) selector Cover")

--both 3 buttons below reference the same object but set a different posiition. See top of side panel
defineTumb("FECP_1FWSG_BIT", 40, 3011, 251, 0.1, {0.0, 0.1}, nil, false, "Fire Extinguishers Control Panel", "1st fire warning sensors group BIT")
defineTumb("FECP_2FWSG_BIT", 40, 3012, 251, 0.2, {0.0, 0.2}, nil, false, "Fire Extinguishers Control Panel", "2nd fire warning sensors group BIT")
defineTumb("FECP_3FWSG_BIT", 40, 3013, 251, 0.3, {0.0, 0.3}, nil, false, "Fire Extinguishers Control Panel", "3rd fire warning sensors group BIT")

-- Misc. systems
defineMultipositionSwitch("GEARBOX_RED_PRESS_INDC_SEL", 4, 3024, 258, 3, 0.1,"Misc Systems", "Reducing gear box oil pressure indication selector")
defineToggleSwitch("SLING_SEL", 41, 3004, 259, "Misc Systems", "Sling load Auto/Manual")

-- ALMAZ system 13
definePushButton("VMS_OFF", 13, 3001, 384, "Voice Message System", "Voice message system messages off")
defineToggleSwitch("VMS_EMER_ON", 13, 3002, 386, "Voice Message System", "Voice message system emergency on")
definePushButton("VMS_REPEAT", 13, 3003, 385, "Voice Message System", "Voice message system messages repeat")
definePushButton("VMS_CHECK", 13, 3004, 442, "Voice Message System", "Voice message system check")

-- Lighting 51
defineToggleSwitch("LIGHT_COCKPIT_PNL", 51, 3001, 300, "Lightning System", "Lighting cockpit panel switch")
defineToggleSwitch("LIGHT_NV", 51, 3009, 299, "Lightning System", "Lighting night vision cockpit switch")
defineToggleSwitch("LIGHT_ADI_SAI", 51, 3003, 298, "Lightning System", "Lighting night vision cockpit switch")
defineToggleSwitch("LIGHT_AUX_PNL", 51, 3005, 450, "Lightning System", "Lighting auxiliary panel switch")
defineToggleSwitch("LIGHT_COCKPIT_INT", 51, 3009, 1001, "Lightning System", "Lighting cockpit interior lamp switch")

definePotentiometer("LIGHT_AUX_BRIGHT", 51, 3006, 451, nil, "Lightning System", "Lighting auxiliary panel brightness knob")
definePotentiometer("LIGHT_NV_BRIGHT", 51, 3008, 507, nil, "Lightning System", "Lighting night vision cockpit brightness knob")
definePotentiometer("LIGHT_COCKPIT_PNL_BRIGHT", 51, 3002, 593, nil, "Lightning System", "Lighting cockpit panel brightness knob")
definePotentiometer("LIGHT_HSI_ADI_BRIGHT", 51, 3004, 508, nil, "Lightning System", "Lighting HSI and ADI brightness knob")

-- Outside illumination 44, 45
defineMultipositionSwitch("OI_SEARCH_ON_RETR", 44, 3001, 382, 3, 0.5, "Outside Illumination", "Light landing-search. On/Retraction/Off")
defineToggleSwitch("OI_SEARCH_CHG_MAIN_RESV", 44, 3002, 383, "Outside Illumination", "Lights landing-search change. Main/Reserved")
defineToggleSwitch("OI_TL", 45, 3001, 296, "Outside Illumination", "Tip Lights")
defineToggleSwitch("OI_ANTI_COLL", 45, 3003, 228, "Outside Illumination", "Anticollision Light")
defineMultipositionSwitch("OI_FORMATION", 45, 3002, 297, 4, 0.1, "Outside Illumination", "Formation Lights")

-- SHKVAL windscreen wiper 8
definePushButton("SHKVAL_WIPER", 8, 3007, 224, "IT-23 SHKVAL", "IT-23 SHKVAL windscreen wiper")

--ARK 46
defineMultipositionSwitch("ADF_NDB_SWITCH", 46, 3003, 381, 3, 0.5, "ARK-22", "ADF Inner-Auto-Outer NDB switch")
defineMultipositionSwitch("ADF_CHAN_SWITCH", 46, 3001, 357, 10, 0.1, "ARK-22", "ADF channel switch")
defineToggleSwitch("COMPASS_ANTENNA", 46, 3004, 356, "ARK-22", "COMPASS-ANTENNA modes")
defineToggleSwitch("TLF_TLG", 46, 3005, 354, "ARK-22", "TLF-TLG modes")
definePotentiometer("ADF_VOLUME", 46, 3006, 353, nil, "ARK-22", "ADF Volume")
definePushButton("ADF_TEST", 46, 3007, 355, "ARK-22", "ADF Test")

--R-800 48
definePushButton("R800_BIT", 48, 3001, 418, "R-800", "R-800 (VHF-2) BIT button")
defineToggleSwitch("R800_AMFM_TOGGLE", 48, 3002, 417, "R-800", "R-800 (VHF-2) AM-FM toggle switch")
defineToggleSwitch("R800_EMER_RECV", 48, 3003, 421, "R-800", "R-800 (VHF-2) Emergency receiver")
defineToggleSwitch("R800_ADF_SWITCH", 48, 3004, 422, "R-800", "R-800 (VHF-2) ADF switch")
defineToggleSwitch("R800_DTRS", 48, 3005, 420, "R-800", "R-800 (VHF-2) Data transfer rate switch")
defineToggleSwitch("R800_SQUELCH", 48, 3006, 423, "R-800", "R-800 (VHF-2) Squelch")

-- Frequency rotaries 48
defineRotary("R800_FREQ_ROT_1", 48, 3007, -1, "R-800", "R-800 (VHF-2) 1st rotary")
defineRotary("R800_FREQ_ROT_2", 48, 3008, -1, "R-800", "R-800 (VHF-2) 2nd rotary")
defineRotary("R800_FREQ_ROT_3", 48, 3009, -1, "R-800", "R-800 (VHF-2) 3rd rotary")
defineRotary("R800_FREQ_ROT_4", 48, 3010, -1, "R-800", "R-800 (VHF-2) 4th rotary")

--R-828 49
defineMultipositionSwitch("R828_RAD_CHAN_SEL", 49, 3001, 371, 10, 0.1, "R-828", "R-828 (VHF-1) Radio channel selector")
definePotentiometer("R828_RAD_VOL", 49, 3002, 372, nil, "R-828", "R-828 (VHF-1) Radio Volume")
definePushButton("R828_TUNER", 49, 3003, 373, "R-828", "R-828 (VHF-1) Tuner button")
defineToggleSwitch("R828_SQUELCH", 49, 3004, 374, "R-828", "R-828 (VHF-1) Squelch")

-- Signal Flares 52
defineToggleSwitch("FLARE_RED", 52, 3002, 376, "Signal Flare System", "Signal flare red")
defineToggleSwitch("FLARE_GREEN", 52, 3001, 377, "Signal Flare System", "Signal flare green")
defineToggleSwitch("FLARE_WHITE", 52, 3003, 378, "Signal Flare System", "Signal flare white")
defineToggleSwitch("FLARE_YELLOW", 52, 3004, 379, "Signal Flare System", "Signal flare yellow")
defineToggleSwitch("FLARE_SYS_POWER", 52, 3005, 380, "Signal Flare System", "Signal flare system power")

-- PShK_7 (Latitude Entry Panel) 57

defineRotary("PSHK7_LAT_ROT", 57, 3001, 340, "PShK-7 Latitude Entry panel", "Latitude selection rotary")
defineToggleSwitch("PSHK7_LAT_NS_SEL", 57, 3002, 341, "PShK-7 Latitude Entry panel", "North/South latitude selection")

-- ZMS_3 (Magnetic Variation Entry Panel) 58
defineRotary("PSHK7_LAT_ROT", 58, 3001, 338, "ZMS-3", "Magnetic variation selection rotaty")

BIOS.protocol.endModule()