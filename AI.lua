--[[
    Script by Tobias00723                          ████████
    from the TGFB server                      ████████  ████████
    Discord : https://discord.gg/hEHd4A3czx ██████          ██████
    any questions?                   ^^   ████     ▒      ▒     █████
    find me on my discord server     ^^ ████      ▒▒      ▒▒▒      ███
    _________________________________ ████       ▒▒▒      ▒▒▒       ███
                                      ███       ▒▒▒▒      ▒▒▒▒       ███
                                     ██       ▒▒▒▒        ▒▒▒▒▒      ███
                                    ███      ▒▒▒▒▒▒        ▒▒▒▒▒▒      ███
        Script as is.               ███     ▓▒▒▒▒▒▒        ▒▒▒▒▒▒▒     ███
                                    ███    ▒▒▒▒▒▒▒▒        ▓▒▒▒▒▒▒▓    ███
        Enjoy The open sauce!       ███   ▓▒▒▓▒▒▓▒▓         ▒▒▓▒▒▒▒▒   ███
                                    ███  ▓▒▓▓▒▓▓▒▓          ▓▓▒▓▓▓▓▓▓  ███
   If used credit, is appreaciated.  █  ▓▓▓▒▓ ▓▓▓▒          ▓▓▓▓ ▒▓▒▓▓  █
        Happy "borrowing" :)           ▓▓▓▓    ▓▓▓   ████    ▓▓▓   ▓▓▓▓
    _________________________________ ▓▓▓      ▓▓    ▓▓▓▓    ▓▓      ▓▓▓
                                     ▓▓        ▓▓    ▓▓▓▓    ▓▓        ▓▓
                                    ▓▓          ▓    ▓▓▓▓     ▓         ▓▓
    Copyright (c) 2025 TGFB                          ▓▓▓▓
    All rights reserved.                             ▓▓▓▓
]]


do
    ---@meta

    do
        --AI.Option.Air.val
        do
            ---@alias AI.Option.Air.val
            ---| AI.Option.Air.val.ECM_USING
            ---| AI.Option.Air.val.FLARE_USING
            ---| AI.Option.Air.val.MISSILE_ATTACK
            ---| AI.Option.Air.val.RADAR_USING
            ---| AI.Option.Air.val.REACTION_ON_THREAT
            ---| AI.Option.Air.val.ROE

            ---@alias AI.Option.Ground.val
            ---| AI.Option.Ground.val.ALARM_STATE
            ---| AI.Option.Ground.val.ROE

            ---@alias AI.Option.Naval.val
            ---| AI.Option.Naval.val.ROE
        end
    end

    ---The AI table contains a list of constants for Options, Tasks, and Skills.
    ---https://wiki.hoggitworld.com/view/DCS_enum_AI
    AI = {}

    AI.Option = {}
    AI.Option.Air = {}
    AI.Option.Air.val = {}

    AI.Option.Ground = {}
    AI.Option.Ground.val = {}

    AI.Option.Naval = {}
    AI.Option.Naval.val = {}

    AI.Task = {}


    ---@enum AI.Option.Air.id
    AI.Option.Air.id = {
        NO_OPTION = -1,
        ROE = 0,
        REACTION_ON_THREAT = 1,
        RADAR_USING = 3,
        FLARE_USING = 4,
        FORMATION = 5,
        RTB_ON_BINGO = 6,
        SILENCE = 7,
        RTB_ON_OUT_OF_AMMO = 10,
        ECM_USING = 13,
        PROHIBIT_AA = 14,
        PROHIBIT_JETT = 15,
        PROHIBIT_AB = 16,
        PROHIBIT_AG = 17,
        MISSILE_ATTACK = 18,
        PROHIBIT_WP_PASS_REPORT = 19,
        OPTION_RADIO_USAGE_CONTACT = 21,
        OPTION_RADIO_USAGE_ENGAGE = 22,
        OPTION_RADIO_USAGE_KILL = 23,
        JETT_TANKS_IF_EMPTY = 25,
        FORCED_ATTACK = 26,
        PREFER_VERTICAL = 32,
        ALLOW_FORMATION_SIDE_SWAP = 35,
        LANDING_OPTIONS = 36,
    }

    ---@enum AI.Option.Ground.id
    AI.Option.Ground.id = {
        NO_OPTION = -1,
        ROE = 0,
        FORMATION = 5,
        DISPERSE_ON_ATTACK = 8,
        ALARM_STATE = 9,
        ENGAGE_AIR_WEAPONS = 20,
        AC_ENGAGEMENT_RANGE_RESTRICTION = 24,
        EVASION_OF_ARM = 31,
    }

    ---@enum AI.Option.Naval.id
    AI.Option.Naval.id = {
        NO_OPTION = -1,
        ROE = 0,
    }

    --AI.Option.Air.val
    do
        ---@enum AI.Option.Air.val.ECM_USING
        AI.Option.Air.val.ECM_USING = {
            ALWAYS_USE = 3,
            NEVER_USE = 0,
            USE_IF_DETECTED_LOCK_BY_RADAR = 2,
            USE_IF_ONLY_LOCK_BY_RADAR = 1,
        }


        ---@enum AI.Option.Air.val.FLARE_USING
        AI.Option.Air.val.FLARE_USING = {
            AGAINST_FIRED_MISSILE = 1,
            NEVER = 0,
            WHEN_FLYING_IN_SAM_WEZ = 2,
            WHEN_FLYING_NEAR_ENEMIES = 3,
        }

        ---@enum AI.Option.Air.val.MISSILE_ATTACK
        AI.Option.Air.val.MISSILE_ATTACK = {
            HALF_WAY_RMAX_NEZ = 2,
            MAX_RANGE = 0,
            NEZ_RANGE = 1,
            RANDOM_RANGE = 4,
            TARGET_THREAT_EST = 3,
        }

        ---@enum AI.Option.Air.val.RADAR_USING
        AI.Option.Air.val.RADAR_USING = {
            FOR_ATTACK_ONLY = 1,
            FOR_CONTINUOUS_SEARCH = 3,
            FOR_SEARCH_IF_REQUIRED = 2,
            NEVER = 0,
        }

        ---@enum AI.Option.Air.val.REACTION_ON_THREAT
        AI.Option.Air.val.REACTION_ON_THREAT = {
            ALLOW_ABORT_MISSION = 4,
            BYPASS_AND_ESCAPE = 3,
            EVADE_FIRE = 2,
            NO_REACTION = 0,
            PASSIVE_DEFENCE = 1,
        }

        ---@enum AI.Option.Air.val.ROE
        AI.Option.Air.val.ROE = {
            OPEN_FIRE = 2,
            OPEN_FIRE_WEAPON_FREE = 1,
            RETURN_FIRE = 3,
            WEAPON_FREE = 0,
            WEAPON_HOLD = 4,
        }
    end

    --AI.Option.Ground.val
    do
        ---@enum AI.Option.Ground.val.ALARM_STATE
        AI.Option.Ground.val.ALARM_STATE = {
            AUTO = 0,
            GREEN = 1,
            RED = 2,
        }

        ---@enum AI.Option.Ground.val.ROE
        AI.Option.Ground.val.ROE = {
            OPEN_FIRE = 2,
            RETURN_FIRE = 3,
            WEAPON_HOLD = 4,
        }
    end

    --AI.Option.Naval.val.ROE
    do
        ---@enum AI.Option.Naval.val.ROE
        AI.Option.Naval.val.ROE = {
            OPEN_FIRE = 2,
            RETURN_FIRE = 3,
            WEAPON_HOLD = 4,
        }
    end

    ---@enum AI.Skill
    AI.Skill = {
        AVERAGE = "Average",
        CLIENT = "Client",
        EXCELLENT = "Excellent",
        GOOD = "Good",
        HIGH = "High",
        PLAYER = "Player",
    }

    ---@enum AI.Task.AltitudeType
    AI.Task.AltitudeType = {
        BARO = "BARO",
        RADIO = "RADIO",
    }

    ---@enum AI.Task.Designation
    AI.Task.Designation = {
        AUTO = "Auto",
        IR_POINTER = "IR-Pointer",
        LASER = "Laser",
        NO = "No",
        WP = "WP",
    }

    ---@enum AI.Task.OrbitPattern
    AI.Task.OrbitPattern = {
        CIRCLE = "Circle",
        RACE_TRACK = "Race-Track",
    }

    ---@enum AI.Task.TurnMethod
    AI.Task.TurnMethod = {
        FIN_POINT = "Fin Point",
        FLY_OVER_POINT = "Fly Over Point",
    }

    ---@enum AI.Task.VehicleFormation
    AI.Task.VehicleFormation = {
        CONE = "Cone",
        DIAMOND = "Diamond",
        ECHELON_LEFT = "EchelonL",
        ECHELON_RIGHT = "EchelonR",
        OFF_ROAD = "Off Road",
        ON_ROAD = "On Road",
        RANK = "Rank",
        VEE = "Vee",
    }

    ---@enum  AI.Task.WaypointType
    AI.Task.WaypointType = {
        LAND = "Land",
        TAKEOFF = "TakeOff",
        TAKEOFF_PARKING = "TakeOffParking",
        TAKEOFF_PARKING_HOT = "TakeOffParkingHot",
        TURNING_POINT = "Turning Point",
    }

    ---@enum AI.Task.WeaponExpend
    AI.Task.WeaponExpend = {
        ALL = "All",
        FOUR = "Four",
        HALF = "Half",
        ONE = "One",
        QUARTER = "Quarter",
        TWO = "Two",
    }

    return AI
end
