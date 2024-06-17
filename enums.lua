---A list of enums in DCS for reference.

--[[
    updated by Tobias00723
    orignial author : unkown ;/
    
    from the TGFB server
    Discord : https://discord.gg/hEHd4A3czx
    any questions?                   ^^
    find me on the my discord server ^^

    feel free to use these DCS prototypes
    no mentions or anything needed :)
]]

attributes = {}

goaltype = {
	["INVALID"] = 0,
	["DAMAGE"]  = 1,
	["MAX"]     = 2,
}

objtype = {
	["INVALID"] = 0,
	["UNIT"]    = 1,
	["STATIC"]  = 2,
	["GROUP"]   = 3,
	["SCENERY"] = 4,
	["MAX"]     = 4,
}

priority = {
	["INVALID"]   = 0,
	["PRIMARY"]   = 1,
	["SECONDARY"] = 2,
	["MAX"]       = 3,
}

attributes.net.get_player_info = {
	["id"]  = "playerID",
	["name"]   = "player name",
	["side"] = "0 - spectators, 1 - red, 2 - blue",
	["slot"]       = "slotID of the player or",
	["ping"]   = "ping of the player in ms",
	["ipaddr"] = "IP address of the player, SERVER ONLY",
	["ucid"]       = "Unique Client Identifier, SERVER ONLY",
}
---The country enumerator contains the constant countryIds and strings for each country present in DCS World. Country ids are indexed starting at 0.
---https:--wiki.hoggitworld.com/view/DCS_enum_country
country = {
	---@enum countryid
	id = {
		RUSSIA                     = 0,
		UKRAINE                    = 1,
		USA                        = 2,
		TURKEY                     = 3,
		UK                         = 4,
		FRANCE                     = 5,
		GERMANY                    = 6,
		AGGRESSORS                 = 7,
		CANADA                     = 8,
		SPAIN                      = 9,
		THE_NETHERLANDS            = 10,
		BELGIUM                    = 11,
		NORWAY                     = 12,
		DENMARK                    = 13,
		ISRAEL                     = 15,
		GEORGIA                    = 16,
		INSURGENTS                 = 17,
		ABKHAZIA                   = 18,
		SOUTH_OSETIA               = 19,
		ITALY                      = 20,
		AUSTRALIA                  = 21,
		SWITZERLAND                = 22,
		AUSTRIA                    = 23,
		BELARUS                    = 24,
		BULGARIA                   = 25,
		CZECH_REPUBLIC             = 26,
		CHINA                      = 27,
		CROATIA                    = 28,
		EGYPT                      = 29,
		FINLAND                    = 30,
		GREECE                     = 31,
		HUNGARY                    = 32,
		INDIA                      = 33,
		IRAN                       = 34,
		IRAQ                       = 35,
		JAPAN                      = 36,
		KAZAKHSTAN                 = 37,
		NORTH_KOREA                = 38,
		PAKISTAN                   = 39,
		POLAND                     = 40,
		ROMANIA                    = 41,
		SAUDI_ARABIA               = 42,
		SERBIA                     = 43,
		SLOVAKIA                   = 44,
		SOUTH_KOREA                = 45,
		SWEDEN                     = 46,
		SYRIA                      = 47,
		YEMEN                      = 48,
		VIETNAM                    = 49,
		VENEZUELA                  = 50,
		TUNISIA                    = 51,
		THAILAND                   = 52,
		SUDAN                      = 53,
		PHILIPPINES                = 54,
		MOROCCO                    = 55,
		MEXICO                     = 56,
		MALAYSIA                   = 57,
		LIBYA                      = 58,
		JORDAN                     = 59,
		INDONESIA                  = 60,
		HONDURAS                   = 61,
		ETHIOPIA                   = 62,
		CHILE                      = 63,
		BRAZIL                     = 64,
		BAHRAIN                    = 65,
		THIRD_REICH                = 66,
		YUGOSLAVIA                 = 67,
		USSR                       = 68,
		ITALIAN_SOCIAL_REPUBLIC    = 69,
		ALGERIA                    = 70,
		KUWAIT                     = 71,
		QATAR                      = 72,
		OMAN                       = 73,
		UNITED_ARAB_EMIRATES       = 74,
		SOUTH_AFRICA               = 75,
		CUBA                       = 76,
		PORTUGAL                   = 77,
		GDR                        = 78,
		LEBANON                    = 79,
		CJTF_BLUE                  = 80,
		CJTF_RED                   = 81,
		UN_PEACEKEEPERS            = 82,
		ARGENTINA                  = 83,
		CYPRUS                     = 84,
		SLOVENIA                   = 85,
		BOLIVIA                    = 86,
		GHANA                      = 87,
		NIGERIA                    = 88,
		PERU                       = 89,
		ECUADOR                    = 90
	},

	name = {
		[0] = "RUSSIA",
		[1] = "UKRAINE",
		[2] = "USA",
		[3] = "TURKEY",
		[4] = "UK",
		[5] = "FRANCE",
		[6] = "GERMANY",
		[7] = "AGGRESSORS",
		[8] = "CANADA",
		[9] = "SPAIN",
		[10] = "THE_NETHERLANDS",
		[11] = "BELGIUM",
		[12] = "NORWAY",
		[13] = "DENMARK",
		[15] = "ISRAEL",
		[16] = "GEORGIA",
		[17] = "INSURGENTS",
		[18] = "ABKHAZIA",
		[19] = "SOUTH_OSETIA",
		[20] = "ITALY",
		[21] = "AUSTRALIA",
		[22] = "SWITZERLAND",
		[23] = "AUSTRIA",
		[24] = "BELARUS",
		[25] = "BULGARIA",
		[26] = "CZECH_REPUBLIC",
		[27] = "CHINA",
		[28] = "CROATIA",
		[29] = "EGYPT",
		[30] = "FINLAND",
		[31] = "GREECE",
		[32] = "HUNGARY",
		[33] = "INDIA",
		[34] = "IRAN",
		[35] = "IRAQ",
		[36] = "JAPAN",
		[37] = "KAZAKHSTAN",
		[38] = "NORTH_KOREA",
		[39] = "PAKISTAN",
		[40] = "POLAND",
		[41] = "ROMANIA",
		[42] = "SAUDI_ARABIA",
		[43] = "SERBIA",
		[44] = "SLOVAKIA",
		[45] = "SOUTH_KOREA",
		[46] = "SWEDEN",
		[47] = "SYRIA",
		[48] = "YEMEN",
		[49] = "VIETNAM",
		[50] = "VENEZUELA",
		[51] = "TUNISIA",
		[52] = "THAILAND",
		[53] = "SUDAN",
		[54] = "PHILIPPINES",
		[55] = "MOROCCO",
		[56] = "MEXICO",
		[57] = "MALAYSIA",
		[58] = "LIBYA",
		[59] = "JORDAN",
		[60] = "INDONESIA",
		[61] = "HONDURAS",
		[62] = "ETHIOPIA",
		[63] = "CHILE",
		[64] = "BRAZIL",
		[65] = "BAHRAIN",
		[66] = "THIRD_REICH",
		[67] = "YUGOSLAVIA",
		[68] = "USSR",
		[69] = "ITALIAN_SOCIAL_REPUBLIC",
		[70] = "ALGERIA",
		[71] = "KUWAIT",
		[72] = "QATAR",
		[73] = "OMAN",
		[74] = "UNITED_ARAB_EMIRATES",
		[75] = "SOUTH_AFRICA",
		[76] = "CUBA",
		[77] = "PORTUGAL",
		[78] = "GDR",
		[79] = "LEBANON",
		[80] = "CJTF_BLUE",
		[81] = "CJTF_RED",
		[82] = "UN_PEACEKEEPERS",
		[83] = "ARGENTINA",
		[84] = "CYPRUS",
		[85] = "SLOVENIA",
		[86] = "BOLIVIA",
		[87] = "GHANA",
		[88] = "NIGERIA",
		[89] = "PERU",
		[90] = "ECUADOR"
	},

	names = {
		[0] = "RUSSIA",
		[1] = "UKRAINE",
		[2] = "USA",
		[3] = "TURKEY",
		[4] = "UK",
		[5] = "FRANCE",
		[6] = "GERMANY",
		[7] = "AGGRESSORS",
		[8] = "CANADA",
		[9] = "SPAIN",
		[10] = "THE_NETHERLANDS",
		[11] = "BELGIUM",
		[12] = "NORWAY",
		[13] = "DENMARK",
		[15] = "ISRAEL",
		[16] = "GEORGIA",
		[17] = "INSURGENTS",
		[18] = "ABKHAZIA",
		[19] = "SOUTH_OSETIA",
		[20] = "ITALY",
		[21] = "AUSTRALIA",
		[22] = "SWITZERLAND",
		[23] = "AUSTRIA",
		[24] = "BELARUS",
		[25] = "BULGARIA",
		[26] = "CZECH_REPUBLIC",
		[27] = "CHINA",
		[28] = "CROATIA",
		[29] = "EGYPT",
		[30] = "FINLAND",
		[31] = "GREECE",
		[32] = "HUNGARY",
		[33] = "INDIA",
		[34] = "IRAN",
		[35] = "IRAQ",
		[36] = "JAPAN",
		[37] = "KAZAKHSTAN",
		[38] = "NORTH_KOREA",
		[39] = "PAKISTAN",
		[40] = "POLAND",
		[41] = "ROMANIA",
		[42] = "SAUDI_ARABIA",
		[43] = "SERBIA",
		[44] = "SLOVAKIA",
		[45] = "SOUTH_KOREA",
		[46] = "SWEDEN",
		[47] = "SYRIA",
		[48] = "YEMEN",
		[49] = "VIETNAM",
		[50] = "VENEZUELA",
		[51] = "TUNISIA",
		[52] = "THAILAND",
		[53] = "SUDAN",
		[54] = "PHILIPPINES",
		[55] = "MOROCCO",
		[56] = "MEXICO",
		[57] = "MALAYSIA",
		[58] = "LIBYA",
		[59] = "JORDAN",
		[60] = "INDONESIA",
		[61] = "HONDURAS",
		[62] = "ETHIOPIA",
		[63] = "CHILE",
		[64] = "BRAZIL",
		[65] = "BAHRAIN",
		[66] = "THIRD_REICH",
		[67] = "YUGOSLAVIA",
		[68] = "USSR",
		[69] = "ITALIAN_SOCIAL_REPUBLIC",
		[70] = "ALGERIA",
		[71] = "KUWAIT",
		[72] = "QATAR",
		[73] = "OMAN",
		[74] = "UNITED_ARAB_EMIRATES",
		[75] = "SOUTH_AFRICA",
		[76] = "CUBA",
		[77] = "PORTUGAL",
		[78] = "GDR",
		[79] = "LEBANON",
		[80] = "CJTF_BLUE",
		[81] = "CJTF_RED",
		[82] = "UN_PEACEKEEPERS",
		[83] = "ARGENTINA",
		[84] = "CYPRUS",
		[85] = "SLOVENIA",
		[86] = "BOLIVIA",
		[87] = "GHANA",
		[88] = "NIGERIA",
		[89] = "PERU",
		[90] = "ECUADOR"
	},
}

---The AI table contains a list of constants for Options, Tasks, and Skills.
---https:--wiki.hoggitworld.com/view/DCS_enum_AI
AI = {}

---The AI table contains a list of constants for Options, Tasks, and Skills.
---https:--wiki.hoggitworld.com/view/DCS_enum_AI
AI = {
        Task = {
            OrbitPattern = {
                RACE_TRACK = "Race-Track",
                CIRCLE = "Circle"
            },
            Designation = {
                NO = "No",
                WP = "WP",
                IR_POINTER = "IR-Pointer",
                LASER = "Laser",
                AUTO = "Auto"
            },
            TurnMethod = {
                FLY_OVER_POINT = "Fly Over Point",
                FIN_POINT = "Fin Point"
            },
            VehicleFormation = {
                VEE = "Vee",
                ECHELON_RIGHT = "EchelonR",
                OFF_ROAD = "Off Road",
                RANK = "Rank",
                ECHELON_LEFT = "EchelonL",
                ON_ROAD = "On Road",
                CONE = "Cone",
                DIAMOND = "Diamond"
            },
            AltitudeType = {
                RADIO = "RADIO",
                BARO = "BARO"
            },
            WaypointType = {
                TAKEOFF = "TakeOff",
                TAKEOFF_PARKING = "TakeOffParking",
                TURNING_POINT = "Turning Point",
                TAKEOFF_PARKING_HOT = "TakeOffParkingHot",
                LAND = "Land"
            },
            WeaponExpend = {
                QUARTER = "Quarter",
                TWO = "Two",
                ONE = "One",
                FOUR = "Four",
                HALF = "Half",
                ALL = "All"
            }
        }
    }

---The AI table contains a list of constants for Options, Tasks, and Skills.
---https:--wiki.hoggitworld.com/view/DCS_enum_AI
AI.Option = {
            Air = {
                id = {
                    ROE = 0,
                    REACTION_ON_THREAT = 1,
                    RADAR_USING = 3,
                    FLARE_USING = 4,
                    Formation = 5,
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
                    FORCED_ATTACK = 26
                },
                val = {
                    ROE = {
                        WEAPON_FREE = 0,
                        OPEN_FIRE_WEAPON_FREE = 1,
                        OPEN_FIRE = 2,
                        RETURN_FIRE = 3,
                        WEAPON_HOLD = 4
                    },
                    REACTION_ON_THREAT = {
                        NO_REACTION = 0,
                        PASSIVE_DEFENCE = 1,
                        EVADE_FIRE = 2,
                        BYPASS_AND_ESCAPE = 3,
                        ALLOW_ABORT_MISSION = 4
                    },
                    RADAR_USING = {
                        NEVER = 0,
                        FOR_ATTACK_ONLY = 1,
                        FOR_SEARCH_IF_REQUIRED = 2,
                        FOR_CONTINUOUS_SEARCH = 3
                    },
                    FLARE_USING = {
                        NEVER = 0,
                        AGAINST_FIRED_MISSILE = 1,
                        WHEN_FLYING_IN_SAM_WEZ = 2,
                        WHEN_FLYING_NEAR_ENEMIES = 3
                    },
                    ECM_USING = {
                        NEVER_USE = 0,
                        USE_IF_ONLY_LOCK_BY_RADAR = 1,
                        USE_IF_DETECTED_LOCK_BY_RADAR = 2,
                        ALWAYS_USE = 3
                    },
                    MISSILE_ATTACK = {
                        MAX_RANGE = 0,
                        NEZ_RANGE = 1,
                        HALF_WAY_RMAX_NEZ = 2,
                        TARGET_THREAT_EST = 3,
                        RANDOM_RANGE = 4
                    }
                }
            },
            Ground = {
                id = {
                    ROE = 0,
                    FORMATION = 5,
                    DISPERSE_ON_ATTACK = 8,
                    ALARM_STATE = 9,
                    ENGAGE_AIR_WEAPONS = 20,
                    AC_ENGAGEMENT_RANGE_RESTRICTION = 24,
                    Restrict_AAA_min = 27,
                    Restrict_Targets = 28,
                    Restrict_AAA_max = 29
                },
                val = {
                    ALARM_STATE = {
                        AUTO = 0,
                        GREEN = 1,
                        RED = 2
                    },
                    ROE = {
                        OPEN_FIRE = 2,
                        RETURN_FIRE = 3,
                        WEAPON_HOLD = 4
                    }
                }
            },
            Naval = {
                id = {
                    ROE = 0
                },
                val = {
                    ROE = {
                        OPEN_FIRE = 2,
                        RETURN_FIRE = 3,
                        WEAPON_HOLD = 4
                    }
                }
            }
        }

---The AI table contains a list of constants for Options, Tasks, and Skills.
---https:--wiki.hoggitworld.com/view/DCS_enum_AI
AI.Skill = {
	PLAYER = 0,
	CLIENT = 1,
	AVERAGE = 2,
	GOOD = 3,
	HIGH = 4,
	EXCELLENT = 5
   }

---The world enumerator contains a listing of events that can occur within the simulator, birthplace that defines how an object was spawned, and the shapes used with the world.searchObjects function. For each event see the pages for each event type
---https:--wiki.hoggitworld.com/view/DCS_enum_world
world = {
	event = {
		S_EVENT_INVALID = 0,
		S_EVENT_SHOT = 1,
		S_EVENT_HIT = 2,
		S_EVENT_TAKEOFF = 3,
		S_EVENT_LAND = 4,
		S_EVENT_CRASH = 5,
		S_EVENT_EJECTION = 6,
		S_EVENT_REFUELING = 7,
		S_EVENT_DEAD = 8,
		S_EVENT_PILOT_DEAD = 9,
		S_EVENT_BASE_CAPTURED = 10,
		S_EVENT_MISSION_START = 11,
		S_EVENT_MISSION_END = 12,
		S_EVENT_TOOK_CONTROL = 13,
		S_EVENT_REFUELING_STOP = 14,
		S_EVENT_BIRTH = 15,
		S_EVENT_HUMAN_FAILURE = 16,
		S_EVENT_DETAILED_FAILURE = 17,
		S_EVENT_ENGINE_STARTUP = 18,
		S_EVENT_ENGINE_SHUTDOWN = 19,
		S_EVENT_PLAYER_ENTER_UNIT = 20,
		S_EVENT_PLAYER_LEAVE_UNIT = 21,
		S_EVENT_PLAYER_COMMENT = 22,
		S_EVENT_SHOOTING_START = 23,
		S_EVENT_SHOOTING_END = 24,
		S_EVENT_MARK_ADDED = 25,
		S_EVENT_MARK_CHANGE = 26,
		S_EVENT_MARK_REMOVED = 27,
		S_EVENT_KILL = 28,
		S_EVENT_SCORE = 29,
		S_EVENT_UNIT_LOST = 30,
		S_EVENT_LANDING_AFTER_EJECTION = 31,
		S_EVENT_PARATROOPER_LENDING = 32,
		S_EVENT_DISCARD_CHAIR_AFTER_EJECTION = 33,
		S_EVENT_WEAPON_ADD = 34,
		S_EVENT_TRIGGER_ZONE = 35,
		S_EVENT_LANDING_QUALITY_MARK = 36,
		S_EVENT_BDA = 37,
		S_EVENT_AI_ABORT_MISSION = 38,
		S_EVENT_DAYNIGHT = 39,
		S_EVENT_FLIGHT_TIME = 40,
		S_EVENT_PLAYER_SELF_KILL_PILOT = 41,
		S_EVENT_PLAYER_CAPTURE_AIRFIELD = 42,
		S_EVENT_EMERGENCY_LANDING = 43,
		S_EVENT_UNIT_CREATE_TASK = 44,
		S_EVENT_UNIT_DELETE_TASK = 45,
		S_EVENT_MAX = 46
	},
	BirthPlace = {
		wsBirthPlace_Air = 1,
		wsBirthPlace_Ship = 3,
		wsBirthPlace_RunWay = 4,
		wsBirthPlace_Park = 5,
		wsBirthPlace_Heliport_Hot = 9,
		wsBirthPlace_Heliport_Cold = 10,
		wsBirthPlace_Ship_Cold = 11,
		wsBirthPlace_Ship_Hot = 12
	},
	VolumeType = {
		SEGMENT = 0,
		BOX = 1,
		SPHERE = 2,
		PYRAMID = 3
	}
}

---The radio enumerator has a single table that defines the radio modulation used to transmit.
---https:--wiki.hoggitworld.com/view/DCS_enum_radio
---TODO:
radio = {}

---@enum modulation
radio.modulation = {
    AM = 0,
    FM = 1
}

---The trigger enumerator contains data for the color of smoke and flares that can be deployed as trigger actions.
---https:--wiki.hoggitworld.com/view/DCS_enum_trigger
trigger = {
	---@enum smokeColor
	smokeColor = {
		Green = 0,
		Red = 1,
		White = 2,
		Orange = 3,
		Blue = 4
	},
	---@enum flareColor
	flareColor = {
		Green = 0,
		Red = 1,
		White = 2,
		Yellow = 3
	}
}

---The coalition singleton contains functions that gets information on the all of the units within the mission. It also has two of the most powerful functions that are capable of spawning groups and static objects into the mission.
---https://wiki.hoggitworld.com/view/DCS_singleton_coalition
coalition = {
	---@enum side
	side = {
		All = -1,
		NEUTRAL = 0,
		RED = 1,
		BLUE = 2
	},
	---@enum service
	service = {
		ATC = 0,
		AWACS = 1,
		TANKER = 2,
		FAC = 3
	}
}

---	The Weapon enumerator contains tables used to identify the capabilities and types of a particular weapon. Additionally the Weapon.flag table is large table that defines every category of weapon. Weapon.flag information is available in its own article.
---https:--wiki.hoggitworld.com/view/DCS_enum_weapon
---TODO:
weapon = {}

Weapon.Category = {
	SHELL = 0,
	MISSILE = 1,
	ROCKET = 2,
	BOMB = 3,
}

---Represents a weapon object: shell, rocket, missile and bomb
---https://wiki.hoggitworld.com/view/DCS_Class_Weapon
Weapon.GuidanceType = {
	INS = 1,
	IR = 2,
	RADAR_ACTIVE = 3,
	RADAR_SEMI_ACTIVE = 4,
	RADAR_PASSIVE = 5,
	TV = 6,
	LASER = 7,
	TELE = 8
}

---Represents a weapon object: shell, rocket, missile and bomb
---https://wiki.hoggitworld.com/view/DCS_Class_Weapon
Weapon.MissileCategory = {
	AAM = 1,
	SAM = 2,
	BM = 3,
	ANTI_SHIP = 4,
	CRUISE = 5,
	OTHER = 6
}

---Represents a weapon object: shell, rocket, missile and bomb
---https://wiki.hoggitworld.com/view/DCS_Class_Weapon
Weapon.WarheadType = {
	AP = 0,
	HE = 1,
	SHAPED_EXPLOSIVE = 2
}

---Callsigns assigned to units are given numeric values. The game features two forms of callsigns, but in the files both are defined strictly as numbers. Russian style callsigns all use 3 digit numbers: 903, 420, 018 NATO has a "callname, number, flightmember" style: Uzi 1-1, Hawg 8-1
---https:--wiki.hoggitworld.com/view/DCS_enum_callsigns
---TODO:
callsigns = {}

---Formations are a set of numbers to define different formations aircraft and helicopter groups may use. Like callsigns the formation values are another set of constant values that are not directly accessible by the scripting engine.
---https:--wiki.hoggitworld.com/view/DCS_enum_formation
---TODO:
formation = {}

---	Attributes act as a list of properties of a given unit. These attributes can be used to quickly identify generalized properties for whatever scripts you have in mind.
---https:--wiki.hoggitworld.com/view/DCS_enum_attributes
attributes = {
	["plane_carrier"] = {},
	["no_tail_trail"] = {},
	["cord"] = {},
	["ski_jump"] = {},
	["catapult"] = {},
	["low_reflection_vessel"] = {},
	["AA_flak"] = {},
	["AA_missile"] = {},
	["Cruise missiles"] = { "Missiles", },
	["Anti-Ship missiles"] = { "Missiles", },
	["Missiles"] = { "Planes", },
	["Fighters"] = { "Planes", "Battle airplanes", },
	["Interceptors"] = { "Planes", "Battle airplanes", },
	["Multirole fighters"] = { "Planes", "Battle airplanes", },
	["Bombers"] = { "Planes", "Battle airplanes", },
	["Battleplanes"] = { "Planes", "Battle airplanes", },
	["AWACS"] = { "Planes", },
	["Tankers"] = { "Planes", },
	["Aux"] = { "Planes", },
	["Transports"] = { "Planes", },
	["Strategic bombers"] = { "Bombers", },
	["UAVs"] = { "Planes", },
	["Attack helicopters"] = {"Helicopters", },
	["Transport helicopters"]   = {"Helicopters", },
	["Planes"] = {"Air",},
	["Helicopters"] = {"Air",},
	["Cars"] = {"Unarmed vehicles",},
	["Trucks"] = {"Unarmed vehicles",},
	["Infantry"] = {"Armed ground units", "NonArmoredUnits"},
	["Tanks"] = {"Armored vehicles","Armed vehicles","AntiAir Armed Vehicles","HeavyArmoredUnits",},
	["Artillery"] = {"Armed vehicles","Indirect fire","LightArmoredUnits",},
	["MLRS"] = {"Artillery",},
	["IFV"] = {"Infantry carriers","Armored vehicles","Armed vehicles","AntiAir Armed Vehicles","LightArmoredUnits",},
	["APC"] = {"Infantry carriers","Armored vehicles","Armed vehicles","AntiAir Armed Vehicles","LightArmoredUnits",},
	["Fortifications"] = {"Armed ground units","AntiAir Armed Vehicles","HeavyArmoredUnits",},
	["Armed vehicles"] = {"Armed ground units","Ground vehicles",},
	["Static AAA"] = {"AAA", "Ground vehicles",},
	["Mobile AAA"] = {"AAA", "Ground vehicles",},
	["SAM SR"] = {"SAM elements",}, -- Search Radar
	["SAM TR"] = {"SAM elements"}, -- Track Radar
	["SAM LL"] = {"SAM elements","Armed Air Defence"},  -- Launcher
	["SAM CC"] = {"SAM elements",}, -- Command Center
	["SAM AUX"] = {"SAM elements",}, -- Auxilary Elements (not included in dependencies)
	["SR SAM"] = {}, -- short range
	["MR SAM"] = {}, -- medium range
	["LR SAM"] = {}, -- long range
	["SAM elements"] = {"Ground vehicles", "SAM related"}, --elements of composite SAM site
	["IR Guided SAM"] = {"SAM"},
	["SAM"] = {"SAM related", "Armed Air Defence", "Ground vehicles"}, --autonomous SAM unit (surveillance + guidance + launcher(s))
	["SAM related"] = {"Air Defence"}, --all units those related to SAM
	["AAA"] = {"Air Defence", "Armed Air Defence", "Rocket Attack Valid AirDefence",},
	["EWR"] = {"Air Defence vehicles",},
	["Air Defence vehicles"] = {"Air Defence","Ground vehicles",},
	["MANPADS"] = {"IR Guided SAM","Infantry","Rocket Attack Valid AirDefence",},
	["MANPADS AUX"] = {"Infantry","Rocket Attack Valid AirDefence","SAM AUX"},
	["Unarmed vehicles"] = {"Ground vehicles","Ground Units Non Airdefence","NonArmoredUnits",},
	["Armed ground units"] = {"Ground Units","Ground Units Non Airdefence",},
	["Armed Air Defence"] = {}, --air-defence units those have weapon onboard (SAM or AAA)
	["Air Defence"] = {"NonArmoredUnits"},
	["Aircraft Carriers"] = {"Heavy armed ships",},
	["Cruisers"] = {"Heavy armed ships",},
	["Destroyers"] = {"Heavy armed ships",},
	["Frigates"] = {"Heavy armed ships",},
	["Corvettes"] = {"Heavy armed ships",},
	["Heavy armed ships"] = {"Armed ships", "Armed Air Defence", "HeavyArmoredUnits",},
	["Light armed ships"] = {"Armed ships","NonArmoredUnits"},
	["Armed ships"] = {"Ships"},
	["Unarmed ships"] = {"Ships","HeavyArmoredUnits",},
	["Air"] = {"All","NonArmoredUnits",},
	["Ground vehicles"] = {"Ground Units", "Vehicles"},
	["Ships"] = {"All",},
	["Buildings"] = {"HeavyArmoredUnits",},
	["HeavyArmoredUnits"] = {},
	["ATGM"] = {},
	["Old Tanks"] = {},
	["Modern Tanks"] = {},
	["LightArmoredUnits"] = {"NonAndLightArmoredUnits",},
	["Rocket Attack Valid AirDefence"] = {},
	["Battle airplanes"] = {},
	["All"] = {},
	["Infantry carriers"] = {},
	["Vehicles"] = {},
	["Ground Units"] = {"All",},
	["Ground Units Non Airdefence"] = {},
	["Armored vehicles"] = {},
	["AntiAir Armed Vehicles"] = {}, --ground vehicles those capable of effective fire at aircrafts
	["Airfields"] = {},
	["Heliports"] = {},
	["Grass Airfields"] = {},
	["Point"] = {},
	["NonArmoredUnits"] = {"NonAndLightArmoredUnits",},
	["NonAndLightArmoredUnits"] = {},
	["human_vehicle"] = {}, -- player controlable vehicle
	["RADAR_BAND1_FOR_ARM"] = {},
	["RADAR_BAND2_FOR_ARM"] = {},
	["Prone"] = {},
	["DetectionByAWACS"] = {}, -- for navy\ground units with external target detection
	["Datalink"] = {}, -- for air\navy\ground units with on-board datalink station
	["CustomAimPoint"] = {}, -- unit has custom aiming point
	["Indirect fire"] = {},
	["Refuelable"] = {},
	["Weapon"] = {"Shell", "Rocket", "Bomb", "Missile"},
}

land.SurfaceType = {
	LAND = 1,
	SHALLOW_WATER = 2,
	WATER = 3,
	ROAD = 4,
	RUNWAY = 5,
}

attributes.net.get_stat = {
	["net.PS_PING"] 	= "ping (in ms)",
	["net.PS_CRASH"] 	= "number of crashes",
	["net.PS_CAR"]		= "number of destroyed vehicles",
	["net.PS_PLANE"]	= "number of destroyed planes/helicopters",
	["net.PS_SHIP"] 	= "number of destroyed ships",
	["net.PS_SCORE"]	= "total score",
	["net.PS_LAND"] 	= "number of landings",
	["net.PS_EJECT"] 	= "of ejects",
}

Controller.Detection = {
	VISUAL =  1,
	OPTIC =  2,
	RADAR =  4,
	IRST =  8,
	RWR =  16,
	DLINK =  32
}

Spot.Category = {
	INFRA_RED = 0,
	LASER = 1
}

DCS = {
	"UNIT_RUNTIME_ID", -- unique within runtime mission. int
	"UNIT_MISSION_ID", -- unique within mission file. int>0
	"UNIT_NAME", -- unit name, as assigned by mission designer.
	"UNIT_TYPE", -- unit type (Ural, ZU-23, etc)
	"UNIT_CATEGORY",
	"UNIT_GROUP_MISSION_ID", -- group ID, unique within mission file. int>0
	"UNIT_GROUPNAME", -- group name, as assigned by mission designer.
	"UNIT_GROUPCATEGORY",
	"UNIT_CALLSIGN",
	"UNIT_HIDDEN",-- ME hiding
	"UNIT_COALITION",-- "blue", "red" or "unknown"
	"UNIT_COUNTRY_ID",
	"UNIT_TASK", --"unit.group.task"
	"UNIT_PLAYER_NAME", -- valid for network "humanable" units
	"UNIT_ROLE",--"artillery_commander", "instructor", etc
	"UNIT_INVISIBLE_MAP_ICON",--ME invisible map icon
}