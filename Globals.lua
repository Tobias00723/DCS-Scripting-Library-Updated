--[[

    Script by Tobias00723
    from the TGFB server
    Discord : https://discord.gg/hEHd4A3czx
    any questions?                   ^^
    find me on my discord server ^^

    These scripts are opensource and free to use for everybody.
    But i would appreaciate some credit if you "borrow" some code ;p

]]
do
    ---@meta

    --classes
    do

        --vec 2
        do
            ---@class vec2
            ---@field x number
            ---@field y number
        end

        --- Vec3
        do
            ---@class vec3
            ---@field x number
            ---@field y number
            ---@field z number
        end

        --Position3
        do
            ---@class position3
            ---@field p vec3
            ---@field x vec3
            ---@field y vec3
            ---@field z vec3
        end

        --Forces names
        do
            ---@alias Force_name
            ---|'AirForce'
            ---|'AirBase'
            ---| string
        end

        --Attributes
        do
            ---@alias Attributes
            ---| "AA_flak"
            ---| "AA_missile"
            ---| "AAA"
            ---| "ATGM"
            ---| "AWACS"
            ---| "Air"
            ---| "Air Defence"
            ---| "Air Defence vehicles"
            ---| "Aircraft Carriers"
            ---| "Airfields"
            ---| "All"
            ---| "AntiAir Armed Vehicles"
            ---| "Anti-Ship missiles"
            ---| "APC"
            ---| "Armed Air Defence"
            ---| "Armed ground units"
            ---| "Armed ships"
            ---| "Armed vehicles"
            ---| "Armored vehicles"
            ---| "Artillery"
            ---| "Attack helicopters"
            ---| "Aux"
            ---| "Battle airplanes"
            ---| "Battleplanes"
            ---| "Bomb"
            ---| "Bombers"
            ---| "Buildings"
            ---| "Cars"
            ---| "catapult"
            ---| "cord"
            ---| "Corvettes"
            ---| "Cruise missiles"
            ---| "Cruisers"
            ---| "CustomAimPoint"
            ---| "Datalink"
            ---| "DetectionByAWACS"
            ---| "Destroyers"
            ---| "EWR"
            ---| "Fighters"
            ---| "Fortifications"
            ---| "Frigates"
            ---| "Grass Airfields"
            ---| "Ground Units"
            ---| "Ground Units Non Airdefence"
            ---| "Ground vehicles"
            ---| "Heavy armed ships"
            ---| "HeavyArmoredUnits"
            ---| "Helicopters"
            ---| "Heliports"
            ---| "human_vehicle"
            ---| "IFV"
            ---| "IR Guided SAM"
            ---| "Indirect fire"
            ---| "Infantry"
            ---| "Infantry carriers"
            ---| "Interceptors"
            ---| "Light armed ships"
            ---| "LightArmoredUnits"
            ---| "LR SAM"
            ---| "MANPADS"
            ---| "MANPADS AUX"
            ---| "MLRS"
            ---| "MR SAM"
            ---| "Missile"
            ---| "Missiles"
            ---| "Mobile AAA"
            ---| "Modern Tanks"
            ---| "Multirole fighters"
            ---| "NonAndLightArmoredUnits"
            ---| "NonArmoredUnits"
            ---| "Old Tanks"
            ---| "Planes"
            ---| "Point"
            ---| "Prone"
            ---| "RADAR_BAND1_FOR_ARM"
            ---| "RADAR_BAND2_FOR_ARM"
            ---| "Refuelable"
            ---| "Rocket"
            ---| "Rocket Attack Valid AirDefence"
            ---| "SAM"
            ---| "SAM AUX"
            ---| "SAM CC"
            ---| "SAM LL"
            ---| "SAM SR"
            ---| "SAM TR"
            ---| "SAM elements"
            ---| "SAM related"
            ---| "SR SAM"
            ---| "Shell"
            ---| "Ships"
            ---| "Static AAA"
            ---| "Strategic bombers"
            ---| "Tankers"
            ---| "Tanks"
            ---| "Transport helicopters"
            ---| "Transports"
            ---| "Trucks"
            ---| "UAVs"
            ---| "Unarmed ships"
            ---| "Unarmed vehicles"
            ---| "Vehicles"
            ---| "Weapon"
            ---| "low_reflection_vessel"
            ---| "no_tail_trail"
            ---| "plane_carrier"
            ---| "ski_jump"
        end

        --Typenames
        do
            ---@alias TypeNames
            ---| TypeNames_AC
            ---| TypeNames_Heli
            ---| TypeNames_Ground
            ---| TypeNames_ship

            --AC
            do
                ---@alias TypeNames_AC
                ---| "A-10C"
                ---| "A-10C_2"
                ---| "A-20G"
                ---| "AJS37"
                ---| "AV8BNA"
                ---| "Bf-109K-4"
                ---| "C-101CC"
                ---| "C-101EB"
                ---| "Christen Eagle II"
                ---| "F-14B"
                ---| "F-15C"
                ---| "F-15E"
                ---| "F-16A"
                ---| "F-16C_50"
                ---| "F-16C bl.50"
                ---| "F-4E-45MC"
                ---| "F-5E"
                ---| "F-5E-3"
                ---| "F-5E-3_FC"
                ---| "F-86F Sabre"
                ---| "F-86F_FC"
                ---| "F-15ESE"
                ---| "FA-18C_hornet"
                ---| "FW-190A8"
                ---| "FW-190D9"
                ---| "H-6J"
                ---| "Hawk"
                ---| "I-16"
                ---| "J-11A"
                ---| "JF-17"
                ---| "KC130"
                ---| "KC135MPRS"
                ---| "KJ-2000"
                ---| "L-39C"
                ---| "L-39ZA"
                ---| "M-2000C"
                ---| "MB-339A"
                ---| "MB-339APAN"
                ---| "MQ-9 Reaper"
                ---| "MiG-15bis"
                ---| "MiG-15bis_FC"
                ---| "MiG-19P"
                ---| "MiG-21Bis"
                ---| "Mirage-F1B"
                ---| "Mirage-F1BD"
                ---| "Mirage-F1BE"
                ---| "Mirage-F1BQ"
                ---| "Mirage-F1C"
                ---| "Mirage-F1C-200"
                ---| "Mirage-F1CE"
                ---| "Mirage-F1CG"
                ---| "Mirage-F1CH"
                ---| "Mirage-F1CJ"
                ---| "Mirage-F1CK"
                ---| "Mirage-F1CR"
                ---| "Mirage-F1CT"
                ---| "Mirage-F1CZ"
                ---| "Mirage-F1DDA"
                ---| "Mirage-F1ED"
                ---| "Mirage-F1EDA"
                ---| "Mirage-F1EE"
                ---| "Mirage-F1EH"
                ---| "Mirage-F1EQ"
                ---| "Mirage-F1JA"
                ---| "Mirage-F1M-CE"
                ---| "Mirage-F1M-EE"
                ---| "MosquitoFBMkVI"
                ---| "P-47D-30"
                ---| "P-47D-40"
                ---| "P-47D-30bl1"
                ---| "P-51D"
                ---| "P-51D-30-NA"
                ---| "RQ-1A Predator"
                ---| "S-3B"
                ---| "S-3B Tanker"
                ---| "SpitfireLFMkIX"
                ---| "SpitfireLFMkIXCW"
                ---| "Su-34"
                ---| "TF-51D"
                ---| "Tornado GR4"
                ---| "Tornado IDS"
                ---| "WingLoong-I"
                ---| "Yak-52"
                ---| "A-10A"
                ---| "A-50"
                ---| "An-26B"
                ---| "An-30M"
                ---| "B-1B"
                ---| "B-52H"
                ---| "C-130"
                ---| "C-17A"
                ---| "E-2C"
                ---| "E-3A"
                ---| "F-117A"
                ---| "F-14A"
                ---| "F/A-18A"
                ---| "F/A-18C"
                ---| "IL-76MD"
                ---| "IL-78M"
                ---| "KC-135"
                ---| "MiG-23MLD"
                ---| "MiG-25PD"
                ---| "MiG-25RBT"
                ---| "MiG-27K"
                ---| "MiG-29A"
                ---| "MiG-29S"
                ---| "MiG-29G"
                ---| "MiG-31"
                ---| "Mirage 2000-5"
                ---| "Su-17M4"
                ---| "Su-24M"
                ---| "Su-24MR"
                ---| "Su-25"
                ---| "Su-25T"
                ---| "Su-27"
                ---| "Su-30"
                ---| "Su-33"
                ---| "Su-25TM"
                ---| "Tu-142"
                ---| "Tu-160"
                ---| "Tu-22M3"
                ---| "Tu-95MS"
                ---| "Yak-40"
            end

            --Heli
            do
                ---@alias TypeNames_Heli
                ---| "AH-64D_BLK_II"
                ---| "CH-47Fbl1"
                ---| "Ka-50"
                ---| "Ka-50_3"
                ---| "Mi-24P"
                ---| "Mi-28N"
                ---| "OH-58D"
                ---| "OH58D"
                ---| "SA342M"
                ---| "UH-1H"
                ---| "UH-60L"
                ---| "AH-1W"
                ---| "AH-64A"
                ---| "AH-64D"
                ---| "CH-47D"
                ---| "CH-53E"
                ---| "Ka-27"
                ---| "Mi-26"
                ---| "Mi-8MT"
                ---| "Mi-24V"
                ---| "SH-60B"
                ---| "UH-60A"
            end

            --Ground
            do
                ---@alias TypeNames_Ground
                ---| "S-300PS 5P85C ln"
                ---| "Patriot ECS"
                ---| "Patriot AMG"
                ---| "Strela-1 9P31"
                ---| "Ural-375 ZU-23"
                ---| "Soldier stinger"
                ---| "FPS-117"
                ---| "HQ-7_LN_P"
                ---| "BMP-1"
                ---| "BMP-3"
                ---| "outpost_road"
                ---| "PLZ05"
                ---| "Smerch_HE"
                ---| "Blitz_36-6700A"
                ---| "Hawk sr"
                ---| "HQ-7_STR_SP"
                ---| "Infantry AK Ins"
                ---| "Challenger2"
                ---| "Dog Ear radar"
                ---| "Predator GCS"
                ---| "ATZ-5"
                ---| "55G6 EWR"
                ---| "S-300PS 40B6MD sr_19J6"
                ---| "FPS-117 ECS"
                ---| "Soldier M4 GRG"
                ---| "KrAZ6322"
                ---| "Gepard"
                ---| "SON_9"
                ---| "Marder"
                ---| "RPC_5N62V"
                ---| "Ural-375 ZU-23 Insurgent"
                ---| "Patriot EPP"
                ---| "M4_Sherman"
                ---| "M-113"
                ---| "Stinger comm"
                ---| "Cobra"
                ---| "RD_75"
                ---| "outpost_road_r"
                ---| "ZU-23 Insurgent"
                ---| "Patriot cp"
                ---| "Ural-4320T"
                ---| "tt_KORD"
                ---| "Silkworm_SR"
                ---| "r11_volvo_drivable"
                ---| "snr s-125 tr"
                ---| "Ural-375 PBU"
                ---| "S-300PS 5P85D ln"
                ---| "leopard-2A4"
                ---| "MCV-80"
                ---| "Soldier RPG"
                ---| "SA-18 Igla-S manpad"
                ---| "ZTZ96B"
                ---| "S-300PS 64H6E sr"
                ---| "Bunker"
                ---| "AA8"
                ---| "S-60_Type59_Artillery"
                ---| "M-60"
                ---| "Trolley bus"
                ---| "Patriot ln"
                ---| "ZBD04A"
                ---| "ZIL-131 KUNG"
                ---| "SKP-11"
                ---| "MLRS"
                ---| "BTR-80"
                ---| "MLRS FDDM"
                ---| "tt_ZU-23"
                ---| "Leopard1A3"
                ---| "house2arm"
                ---| "Tor 9A331"
                ---| "Soldier M249"
                ---| "MaxxPro_MRAP"
                ---| "Ural-375"
                ---| "Igla manpad INS"
                ---| "MAZ-6303"
                ---| "M-2 Bradley"
                ---| "NASAMS_LN_B"
                ---| "M 818"
                ---| "SA-18 Igla comm"
                ---| "M1134 Stryker ATGM"
                ---| "Land_Rover_101_FC"
                ---| "S-300PS 54K6 cp"
                ---| "rapier_fsa_launcher"
                ---| "leopard-2A4_trs"
                ---| "LARC-V"
                ---| "ZU-23 Emplacement"
                ---| "KAMAZ Truck"
                ---| "HEMTT TFFT"
                ---| "JTAC"
                ---| "HEMTT_C-RAM_Phalanx"
                ---| "Hawk pcp"
                ---| "VAZ Car"
                ---| "Osa 9A33 ln"
                ---| "MJ-1_drivable"
                ---| "GAZ-66"
                ---| "GAZ-3308"
                ---| "Tigr_233036"
                ---| "M48 Chaparral"
                ---| "S-200_Launcher"
                ---| "L118_Unit"
                ---| "LAZ Bus"
                ---| "ZiL-131 APA-80"
                ---| "outpost"
                ---| "SpGH_Dana"
                ---| "flak18"
                ---| "ZSU-23-4 Shilka"
                ---| "ATMZ-5"
                ---| "Hawk ln"
                ---| "Pz_IV_H"
                ---| "2S6 Tunguska"
                ---| "M1126 Stryker ICV"
                ---| "tt_DSHK"
                ---| "TPZ"
                ---| "Grad-URAL"
                ---| "FPS-117 Dome"
                ---| "HL_KORD"
                ---| "M1043 HMMWV Armament"
                ---| "SAU Msta"
                ---| "UAZ-469"
                ---| "T-55"
                ---| "HL_ZU-23"
                ---| "S_75_ZIL"
                ---| "BRDM-2"
                ---| "Scud_B"
                ---| "AAV7"
                ---| "SAU 2-C9"
                ---| "T-72B"
                ---| "T155_Firtina"
                ---| "ATZ-10"
                ---| "SAU Akatsia"
                ---| "hy_launcher"
                ---| "LiAZ Bus"
                ---| "ATZ-60_Maz"
                ---| "SAU Gvozdika"
                ---| "M1128 Stryker MGS"
                ---| "ZSU_57_2"
                ---| "SNR_75V"
                ---| "BTR_D"
                ---| "GAZ-3307"
                ---| "Ural ATsP-6"
                ---| "Vulcan"
                ---| "ZIL-4331"
                ---| "B600_drivable"
                ---| "BMP-2"
                ---| "Infantry AK ver3"
                ---| "Patriot str"
                ---| "Kub 1S91 str"
                ---| "ZU-23 Closed Insurgent"
                ---| "TZ-22_KrAZ"
                ---| "M1A2C_SEP_V3"
                ---| "Roland ADS"
                ---| "Stinger comm dsr"
                ---| "RLS_19J6"
                ---| "5p73 s-125 ln"
                ---| "p-19 s-125 sr"
                ---| "2B11 mortar"
                ---| "S_75M_Volhov"
                ---| "Ural-4320-31"
                ---| "Uragan_BM-27"
                ---| "NASAMS_Command_Post"
                ---| "LAV-25"
                ---| "SA-11 Buk LN 9A310M1"
                ---| "Roland Radar"
                ---| "Sandbox"
                ---| "SA-11 Buk CC 9S470M1"
                ---| "S-300PS 5H63C 30H6_tr"
                ---| "Leclerc"
                ---| "T-80UD"
                ---| "1L13 EWR"
                ---| "KS-19"
                ---| "Sd_Kfz_251"
                ---| "S-300PS 40B6MD sr"
                ---| "M2A1_halftrack"
                ---| "Merkava_Mk4"
                ---| "generator_5i57"
                ---| "VAB_Mephisto"
                ---| "rapier_fsa_optical_tracker_unit"
                ---| "T-90"
                ---| "rapier_fsa_blindfire_radar"
                ---| "NASAMS_Radar_MPQ64F1"
                ---| "NASAMS_LN_C"
                ---| "P20_drivable"
                ---| "SA-11 Buk SR 9S18M1"
                ---| "Leopard-2"
                ---| "M6 Linebacker"
                ---| "Strela-10M3"
                ---| "Hawk cwar"
                ---| "tacr2a"
                ---| "M1097 Avenger"
                ---| "SA-18 Igla manpad"
                ---| "outpost_road_l"
                ---| "M978 HEMTT Tanker"
                ---| "Ural-4320 APA-5D"
                ---| "M-109"
                ---| "Bedford_MWD"
                ---| "TYPE-59"
                ---| "T-72B3"
                ---| "BTR-82A"
                ---| "tt_B8M1"
                ---| "HL_B8M1"
                ---| "Hawk tr"
                ---| "TACAN_beacon"
                ---| "Smerch"
                ---| "Predator TrojanSpirit"
                ---| "HL_DSHK"
                ---| "Hummer"
                ---| "M-1 Abrams"
                ---| "M1045 HMMWV TOW"
                ---| "ZIL-135"
                ---| "S-300PS 40B6M tr"
                ---| "Chieftain_mk3"
                ---| "Kub 2P25 ln"
                ---| "MTLB"
                ---| "HQ-7_LN_SP"
                ---| "SA-18 Igla-S comm"
                ---| "TugHarlan_drivable"
                ---| "Land_Rover_109_S3"
                ---| "PT_76"
                ---| "Soldier M4"
                ---| "Infantry AK ver2"
                ---| "houseA_arm"
                ---| "Soldier AK"
                ---| "Infantry AK"
                ---| "BMD-1"
                ---| "ZU-23 Emplacement Closed"
                ---| "house1arm"
                ---| "IKARUS Bus"
                ---| "bofors40"
                ---| "Grad_FDDM"
            end

            --Ship
            do
                ---@alias TypeNames_ship
                ---| "KILO"
                ---| "HandyWind"
                ---| "PERRY"
                ---| "Stennis"
                ---| "KUZNECOW"
                ---| "CastleClass_01"
                ---| "leander-gun-achilles"
                ---| "CVN_73"
                ---| "BDK-775"
                ---| "hms_invincible"
                ---| "atconveyor"
                ---| "Dry-cargo ship-2"
                ---| "TICONDEROG"
                ---| "NEUSTRASH"
                ---| "CVN_75"
                ---| "Ship_Tilde_Supply"
                ---| "leander-gun-ariadne"
                ---| "Type_071"
                ---| "Type_052C"
                ---| "CV_1143_5"
                ---| "MOSCOW"
                ---| "Type_054A"
                ---| "leander-gun-condell"
                ---| "PIOTR"
                ---| "Seawise_Giant"
                ---| "ELNYA"
                ---| "Dry-cargo ship-1"
                ---| "Type_093"
                ---| "IMPROVED_KILO"
                ---| "REZKY"
                ---| "LHA_Tarawa"
                ---| "HarborTug"
                ---| "ZWEZDNY"
                ---| "leander-gun-andromeda"
                ---| "santafe"
                ---| "La_Combattante_II"
                ---| "ara_vdm"
                ---| "Forrestal"
                ---| "USS_Arleigh_Burke_IIa"
                ---| "CVN_72"
                ---| "CVN_71"
                ---| "speedboat"
                ---| "MOLNIYA"
                ---| "Type_052B"
                ---| "leander-gun-lynch"
                ---| "ALBATROS"
            end
        end
    end

    ED_FINAL_VERSION = true ---@type boolean
    ED_PUBLIC_AVAILABLE = true ---@type boolean
    _APP_VERSION = "2.9.7.59263" ---@type string
    db_path = "./Scripts/Database/" ---@type string
    troopsPath = "./Scripts/Database/troops/" ---@type string


    --Functions
    do
        --No Docu
        function addPackage() end

        --No Docu
        function checkCAPSync() end

        --No Docu
        function class() end

        --No Docu
        function doZipFile() end

        --No Docu
        function forceAttackGroup() end

        --No Docu
        function gcinfo() end

        --No Docu
        function merge_all_units_to_AGGRESSORS() end

        --No Docu
        function safe_require() end

        --No Docu
        function setFlightCurrentWP() end
    end
end
