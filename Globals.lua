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
                ---| "AH-1W"
                ---| "AH-64A"
                ---| "AH-64D"
                ---| "CH-47D"
                ---| "CH-53E"
                ---| "Ka-27"
                ---| "Mi-26"
                ---| "Mi-24V"

            end

            --Ground
            do
                ---@alias TypeNames_Ground
                ---| "flak18"
                ---| "bofors40"
                ---| "SON_9"
                ---| "KS-19"
                ---| "S-60_Type59_Artillery"
                ---| "ZU-23 Emplacement Closed"
                ---| "ZU-23 Emplacement"
                ---| "ZU-23 Closed Insurgent"
                ---| "ZU-23 Insurgent"
                ---| "Ural-375 ZU-23"
                ---| "Ural-375 ZU-23 Insurgent"
                ---| "AAV7"
                ---| "BTR-80"
                ---| "BTR_D"
                ---| "M-113"
                ---| "M2A1_halftrack"
                ---| "MaxxPro_MRAP"
                ---| "MTLB"
                ---| "Sd_Kfz_251"
                ---| "TPZ"
                ---| "hy_launcher"
                ---| "Silkworm_SR"
                ---| "M1045 HMMWV TOW"
                ---| "M1134 Stryker ATGM"
                ---| "VAB_Mephisto"
                ---| "house1arm"
                ---| "TACAN_beacon"
                ---| "houseA_arm"
                ---| "Sandbox"
                ---| "Bunker"
                ---| "IKARUS Bus"
                ---| "LAZ Bus"
                ---| "LiAZ Bus"
                ---| "VAZ Car"
                ---| "generator_5i57"
                ---| "1L13 EWR"
                ---| "55G6 EWR"
                ---| "FPS-117 ECS"
                ---| "FPS-117"
                ---| "FPS-117 Dome"
                ---| "HEMTT TFFT"
                ---| "tacr2a"
                ---| "Ural ATsP-6"
                ---| "AA8"
                ---| "Ural-4320 APA-5D"
                ---| "ZiL-131 APA-80"
                ---| "Grad_FDDM"
                ---| "HQ-7_LN_P"
                ---| "HQ-7_LN_SP"
                ---| "HQ-7_STR_SP"
                ---| "BMD-1"
                ---| "BMP-1"
                ---| "BMP-2"
                ---| "BMP-3"
                ---| "BTR-82A"
                ---| "LAV-25"
                ---| "M1126 Stryker ICV"
                ---| "M-2 Bradley"
                ---| "Marder"
                ---| "MCV-80"
                ---| "Soldier AK"
                ---| "Infantry AK"
                ---| "Infantry AK ver2"
                ---| "Infantry AK ver3"
                ---| "Soldier M249"
                ---| "Soldier M4"
                ---| "Soldier M4 GRG"
                ---| "Soldier RPG"
                ---| "Infantry AK Ins"
                ---| "JTAC"
                ---| "L118_Unit"
                ---| "HEMTT_C-RAM_Phalanx"
                ---| "PT_76"
                ---| "Hummer"
                ---| "Land_Rover_109_S3"
                ---| "Tigr_233036"
                ---| "UAZ-469"
                ---| "B600_drivable"
                ---| "MJ-1_drivable"
                ---| "P20_drivable"
                ---| "r11_volvo_drivable"
                ---| "TugHarlan_drivable"
                ---| "SA-18 Igla manpad"
                ---| "SA-18 Igla comm"
                ---| "Igla manpad INS"
                ---| "SA-18 Igla-S manpad"
                ---| "SA-18 Igla-S comm"
                ---| "Soldier stinger"
                ---| "Stinger comm"
                ---| "Stinger comm dsr"
                ---| "Challenger2"
                ---| "Chieftain_mk3"
                ---| "Leclerc"
                ---| "Leopard1A3"
                ---| "leopard-2A4"
                ---| "leopard-2A4_trs"
                ---| "Leopard-2"
                ---| "M-1 Abrams"
                ---| "M1A2C_SEP_V3"
                ---| "M-60"
                ---| "Merkava_Mk4"
                ---| "T-55"
                ---| "T-72B"
                ---| "T-72B3"
                ---| "T-80UD"
                ---| "T-90"
                ---| "Predator GCS"
                ---| "Predator TrojanSpirit"
                ---| "Dog Ear radar"
                ---| "Smerch"
                ---| "Smerch_HE"
                ---| "Uragan_BM-27"
                ---| "Grad-URAL"
                ---| "HL_B8M1"
                ---| "tt_B8M1"
                ---| "MLRS"
                ---| "MLRS FDDM"
                ---| "TYPE-59"
                ---| "2B11 mortar"
                ---| "outpost"
                ---| "PLZ05"
                ---| "ATMZ-5"
                ---| "ATZ-10"
                ---| "ATZ-5"
                ---| "ATZ-60_Maz"
                ---| "M978 HEMTT Tanker"
                ---| "TZ-22_KrAZ"
                ---| "outpost_road"
                ---| "outpost_road_r"
                ---| "outpost_road_l"
                ---| "S_75_ZIL"
                ---| "M1097 Avenger"
                ---| "M48 Chaparral"
                ---| "Hawk cwar"
                ---| "Hawk ln"
                ---| "Hawk pcp"
                ---| "Hawk sr"
                ---| "Hawk tr"
                ---| "M6 Linebacker"
                ---| "NASAMS_Command_Post"
                ---| "NASAMS_LN_B"
                ---| "NASAMS_LN_C"
                ---| "NASAMS_Radar_MPQ64F1"
                ---| "Patriot cp"
                ---| "Patriot AMG"
                ---| "Patriot ECS"
                ---| "Patriot EPP"
                ---| "Patriot ln"
                ---| "Patriot str"
                ---| "rapier_fsa_blindfire_radar"
                ---| "rapier_fsa_launcher"
                ---| "rapier_fsa_optical_tracker_unit"
                ---| "Roland ADS"
                ---| "Roland Radar"
                ---| "S-300PS 64H6E sr"
                ---| "S-300PS 54K6 cp"
                ---| "S-300PS 40B6MD sr"
                ---| "S-300PS 40B6M tr"
                ---| "S-300PS 5H63C 30H6_tr"
                ---| "S-300PS 5P85C ln"
                ---| "S-300PS 5P85D ln"
                ---| "S-300PS 40B6MD sr_19J6"
                ---| "SA-11 Buk CC 9S470M1"
                ---| "SA-11 Buk LN 9A310M1"
                ---| "SA-11 Buk SR 9S18M1"
                ---| "Strela-10M3"
                ---| "Tor 9A331"
                ---| "2S6 Tunguska"
                ---| "SNR_75V"
                ---| "S_75M_Volhov"
                ---| "RD_75"
                ---| "p-19 s-125 sr"
                ---| "5p73 s-125 ln"
                ---| "snr s-125 tr"
                ---| "S-200_Launcher"
                ---| "RPC_5N62V"
                ---| "RLS_19J6"
                ---| "Kub 2P25 ln"
                ---| "Kub 1S91 str"
                ---| "Osa 9A33 ln"
                ---| "Strela-1 9P31"
                ---| "Gepard"
                ---| "HL_ZU-23"
                ---| "tt_ZU-23"
                ---| "Vulcan"
                ---| "ZSU-23-4 Shilka"
                ---| "ZSU_57_2"
                ---| "M1128 Stryker MGS"
                ---| "SAU Gvozdika"
                ---| "SAU Msta"
                ---| "SAU Akatsia"
                ---| "SpGH_Dana"
                ---| "M-109"
                ---| "T155_Firtina"
                ---| "SAU 2-C9"
                ---| "Scud_B"
                ---| "BRDM-2"
                ---| "Cobra"
                ---| "HL_DSHK"
                ---| "HL_KORD"
                ---| "M1043 HMMWV Armament"
                ---| "tt_DSHK"
                ---| "tt_KORD"
                ---| "M4_Sherman"
                ---| "Pz_IV_H"
                ---| "Bedford_MWD"
                ---| "GAZ-3307"
                ---| "GAZ-3308"
                ---| "GAZ-66"
                ---| "KAMAZ Truck"
                ---| "KrAZ6322"
                ---| "LARC-V"
                ---| "Land_Rover_101_FC"
                ---| "M 818"
                ---| "MAZ-6303"
                ---| "Blitz_36-6700A"
                ---| "SKP-11"
                ---| "Ural-375"
                ---| "Ural-375 PBU"
                ---| "Ural-4320-31"
                ---| "Ural-4320T"
                ---| "ZIL-131 KUNG"
                ---| "ZIL-135"
                ---| "ZIL-4331"
                ---| "house2arm"
                ---| "ZBD04A"
                ---| "Trolley bus"
                ---| "ZTZ96B"

            end

            --Ship
            do
                ---@alias TypeNames_ship
                ---| "santafe"
                ---| "ara_vdm"
                ---| "speedboat"
                ---| "HandyWind"
                ---| "TICONDEROG"
                ---| "Forrestal"
                ---| "CVN_71"
                ---| "CVN_72"
                ---| "CVN_73"
                ---| "Stennis"
                ---| "CVN_75"
                ---| "USS_Arleigh_Burke_IIa"
                ---| "PERRY"
                ---| "HarborTug"
                ---| "LHA_Tarawa"
                ---| "Ship_Tilde_Supply"
                ---| "Seawise_Giant"

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
