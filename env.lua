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

---@meta

---env contains basic logging functions useful for debugging scripting commands. The input text is automatically added to dcs.log in your saved games folder, default location: C:\Users\<<userName>>\Saved Games\DCS\Logs.
---Lua syntax errors are automatically generated and placed in the dcs.log file.
---https://wiki.hoggitworld.com/view/DCS_singleton_env
env = {}
    env.mission = {
    --- Contains all coalition specific data including bullseye, nav_points, and all units.
    coalition = {

        --- blue
        blue = {
            --- Coalition's bullseye data (vec2)
            ---@type table
            bullseye = {},

            --- Coalition's navigation points
            nav_points = {
                [1] = {
                    --- Type of the navigation point
                    ---@type string
                    type = "Default",  -- Replace with actual type
            
                    --- Comment associated with the navigation point
                    ---@type string
                    comment = "",  -- Replace with actual comment
            
                    --- Callsign string for the navigation point
                    ---@type string
                    callsignStr = "ADDER",  -- Replace with actual callsign string
            
                    --- Unique identifier for the navigation point
                    ---@type number
                    id = 165,  -- Replace with actual ID
            
                    --- Properties of the navigation point
                    properties = {
                        --- Vertical navigation setting
                        ---@type number
                        vnav = 1,  -- Replace with actual vnav value
            
                        --- Scale setting
                        ---@type number
                        scale = 0,  -- Replace with actual scale value
            
                        --- Vertical angle setting
                        ---@type number
                        vangle = 0,  -- Replace with actual vertical angle
            
                        --- Angle setting
                        ---@type number
                        angle = 0,  -- Replace with actual angle
            
                        --- Steer setting
                        ---@type number
                        steer = 2  -- Replace with actual steer value
                    }, -- end of ["properties"]
            
                    --- Y coordinate of the navigation point
                    ---@type number
                    y = 565294.38378226,  -- Replace with actual Y coordinate
            
                    --- X coordinate of the navigation point
                    ---@type number
                    x = -258679.99585824,  -- Replace with actual X coordinate
            
                    --- Numeric callsign for the navigation point
                    ---@type number
                    callsign = 8  -- Replace with actual numeric callsign
                }, -- end of [1]
            
                [2] = {
                    --- Type of the navigation point
                    ---@type string
                    type = "Default",  -- Replace with actual type
            
                    --- Comment associated with the navigation point
                    ---@type string
                    comment = "",  -- Replace with actual comment
            
                    --- Callsign string for the navigation point
                    ---@type string
                    callsignStr = "TankerWest",  -- Replace with actual callsign string
            
                    --- Unique identifier for the navigation point
                    ---@type number
                    id = 166,  -- Replace with actual ID
            
                    --- Properties of the navigation point
                    ---@type table
                    properties = {
                        --- Vertical navigation setting
                        ---@type number
                        vnav = 1,  -- Replace with actual vnav value
            
                        --- Scale setting
                        ---@type number
                        scale = 0,  -- Replace with actual scale value
            
                        --- Vertical angle setting
                        ---@type number
                        vangle = 0,  -- Replace with actual vertical angle
            
                        --- Angle setting
                        ---@type number
                        angle = 0,  -- Replace with actual angle
            
                        --- Steer setting
                        ---@type number
                        steer = 0  -- Replace with actual steer value
                    }, -- end of ["properties"]
            
                    --- Y coordinate of the navigation point
                    ---@type number
                    y = 582950.21212368,  -- Replace with actual Y coordinate
            
                    --- X coordinate of the navigation point
                    ---@type number
                    x = -235302.37129506,  -- Replace with actual X coordinate
            
                    --- Numeric callsign for the navigation point
                    ---@type number
                    callsign = 0  -- Replace with actual numeric callsign
                } -- end of [2]
            
                -- Add more navigation points as needed
            }, -- end of ["nav_points"]

            --- name of side
            ---@type string
            name = "",

            --- Coalition's units by country
            country = {
                [1] = {
                    --- ID of the country
                    ---@type number
                    id = 0,

                    --- name of country
                    ---@type string
                    name = "",

                    --- List of all planes in mission
                    plane = {
                        --- list of all plane groups
                        ---@type table
                        group = {}
                    },

                    --- List of all helicopter in mission
                    ---@type table
                    helicopter = {},

                    --- List of all ships in mission
                    ---@type table
                    ship = {},

                    --- List of all vehicles in mission
                    ---@type table
                    vehicle = {},

                    --- List of all static in mission
                    ---@type table
                    static = {},
                }
            }  -- Example placeholder for units
        },

        red = {
            --- Coalition's bullseye data (vec2)
            ---@type table
            bullseye = {},

            --- Coalition's navigation points
            nav_points = {
                [1] = {
                    --- Type of the navigation point
                    ---@type string
                    type = "Default",  -- Replace with actual type
            
                    --- Comment associated with the navigation point
                    ---@type string
                    comment = "",  -- Replace with actual comment
            
                    --- Callsign string for the navigation point
                    ---@type string
                    callsignStr = "ADDER",  -- Replace with actual callsign string
            
                    --- Unique identifier for the navigation point
                    ---@type number
                    id = 165,  -- Replace with actual ID
            
                    --- Properties of the navigation point
                    properties = {
                        --- Vertical navigation setting
                        ---@type number
                        vnav = 1,  -- Replace with actual vnav value
            
                        --- Scale setting
                        ---@type number
                        scale = 0,  -- Replace with actual scale value
            
                        --- Vertical angle setting
                        ---@type number
                        vangle = 0,  -- Replace with actual vertical angle
            
                        --- Angle setting
                        ---@type number
                        angle = 0,  -- Replace with actual angle
            
                        --- Steer setting
                        ---@type number
                        steer = 2  -- Replace with actual steer value
                    }, -- end of ["properties"]
            
                    --- Y coordinate of the navigation point
                    ---@type number
                    y = 565294.38378226,  -- Replace with actual Y coordinate
            
                    --- X coordinate of the navigation point
                    ---@type number
                    x = -258679.99585824,  -- Replace with actual X coordinate
            
                    --- Numeric callsign for the navigation point
                    ---@type number
                    callsign = 8  -- Replace with actual numeric callsign
                }, -- end of [1]
            
                [2] = {
                    --- Type of the navigation point
                    ---@type string
                    type = "Default",  -- Replace with actual type
            
                    --- Comment associated with the navigation point
                    ---@type string
                    comment = "",  -- Replace with actual comment
            
                    --- Callsign string for the navigation point
                    ---@type string
                    callsignStr = "TankerWest",  -- Replace with actual callsign string
            
                    --- Unique identifier for the navigation point
                    ---@type number
                    id = 166,  -- Replace with actual ID
            
                    --- Properties of the navigation point
                    ---@type table
                    properties = {
                        --- Vertical navigation setting
                        ---@type number
                        vnav = 1,  -- Replace with actual vnav value
            
                        --- Scale setting
                        ---@type number
                        scale = 0,  -- Replace with actual scale value
            
                        --- Vertical angle setting
                        ---@type number
                        vangle = 0,  -- Replace with actual vertical angle
            
                        --- Angle setting
                        ---@type number
                        angle = 0,  -- Replace with actual angle
            
                        --- Steer setting
                        ---@type number
                        steer = 0  -- Replace with actual steer value
                    }, -- end of ["properties"]
            
                    --- Y coordinate of the navigation point
                    ---@type number
                    y = 582950.21212368,  -- Replace with actual Y coordinate
            
                    --- X coordinate of the navigation point
                    ---@type number
                    x = -235302.37129506,  -- Replace with actual X coordinate
            
                    --- Numeric callsign for the navigation point
                    ---@type number
                    callsign = 0  -- Replace with actual numeric callsign
                } -- end of [2]
            
                -- Add more navigation points as needed
            }, -- end of ["nav_points"]

            --- name of side
            ---@type string
            name = "",

            --- Coalition's units by country
            country = {
                [1] = {
                    --- ID of the country
                    ---@type number
                    id = 0,

                    --- name of country
                    ---@type string
                    name = "",

                    --- List of all planes in mission
                    plane = {
                        --- list of all plane groups
                        ---@type table
                        group = {}
                    },

                    --- List of all helicopter in mission
                    ---@type table
                    helicopter = {},

                    --- List of all ships in mission
                    ---@type table
                    ship = {},

                    --- List of all vehicles in mission
                    ---@type table
                    vehicle = {},

                    --- List of all static in mission
                    ---@type table
                    static = {},
                }
            }  -- Example placeholder for units
        },

        neutrals = {
            --- Coalition's bullseye data (vec2)
            ---@type table
            bullseye = {},

            --- Coalition's navigation points
            nav_points = {
                [1] = {
                    --- Type of the navigation point
                    ---@type string
                    type = "Default",  -- Replace with actual type
            
                    --- Comment associated with the navigation point
                    ---@type string
                    comment = "",  -- Replace with actual comment
            
                    --- Callsign string for the navigation point
                    ---@type string
                    callsignStr = "ADDER",  -- Replace with actual callsign string
            
                    --- Unique identifier for the navigation point
                    ---@type number
                    id = 165,  -- Replace with actual ID
            
                    --- Properties of the navigation point
                    properties = {
                        --- Vertical navigation setting
                        ---@type number
                        vnav = 1,  -- Replace with actual vnav value
            
                        --- Scale setting
                        ---@type number
                        scale = 0,  -- Replace with actual scale value
            
                        --- Vertical angle setting
                        ---@type number
                        vangle = 0,  -- Replace with actual vertical angle
            
                        --- Angle setting
                        ---@type number
                        angle = 0,  -- Replace with actual angle
            
                        --- Steer setting
                        ---@type number
                        steer = 2  -- Replace with actual steer value
                    }, -- end of ["properties"]
            
                    --- Y coordinate of the navigation point
                    ---@type number
                    y = 565294.38378226,  -- Replace with actual Y coordinate
            
                    --- X coordinate of the navigation point
                    ---@type number
                    x = -258679.99585824,  -- Replace with actual X coordinate
            
                    --- Numeric callsign for the navigation point
                    ---@type number
                    callsign = 8  -- Replace with actual numeric callsign
                }, -- end of [1]
            
                [2] = {
                    --- Type of the navigation point
                    ---@type string
                    type = "Default",  -- Replace with actual type
            
                    --- Comment associated with the navigation point
                    ---@type string
                    comment = "",  -- Replace with actual comment
            
                    --- Callsign string for the navigation point
                    ---@type string
                    callsignStr = "TankerWest",  -- Replace with actual callsign string
            
                    --- Unique identifier for the navigation point
                    ---@type number
                    id = 166,  -- Replace with actual ID
            
                    --- Properties of the navigation point
                    ---@type table
                    properties = {
                        --- Vertical navigation setting
                        ---@type number
                        vnav = 1,  -- Replace with actual vnav value
            
                        --- Scale setting
                        ---@type number
                        scale = 0,  -- Replace with actual scale value
            
                        --- Vertical angle setting
                        ---@type number
                        vangle = 0,  -- Replace with actual vertical angle
            
                        --- Angle setting
                        ---@type number
                        angle = 0,  -- Replace with actual angle
            
                        --- Steer setting
                        ---@type number
                        steer = 0  -- Replace with actual steer value
                    }, -- end of ["properties"]
            
                    --- Y coordinate of the navigation point
                    ---@type number
                    y = 582950.21212368,  -- Replace with actual Y coordinate
            
                    --- X coordinate of the navigation point
                    ---@type number
                    x = -235302.37129506,  -- Replace with actual X coordinate
            
                    --- Numeric callsign for the navigation point
                    ---@type number
                    callsign = 0  -- Replace with actual numeric callsign
                } -- end of [2]
            
                -- Add more navigation points as needed
            }, -- end of ["nav_points"]

            --- name of side
            ---@type string
            name = "",

            --- Coalition's units by country
            country = {
                [1] = {
                    --- ID of the country
                    ---@type number
                    id = 0,

                    --- name of country
                    ---@type string
                    name = "",

                    --- List of all planes in mission
                    plane = {
                        --- list of all plane groups
                        ---@type table
                        group = {}
                    },

                    --- List of all helicopter in mission
                    ---@type table
                    helicopter = {},

                    --- List of all ships in mission
                    ---@type table
                    ship = {},

                    --- List of all vehicles in mission
                    ---@type table
                    vehicle = {},

                    --- List of all static in mission
                    ---@type table
                    static = {},
                }
            }  -- Example placeholder for units
        },

    }, -- end of ["coalition"]

    --- Contains a list of country ids that belong to a given coalition.
    ---@type table
    coalitions = {
        --- Country IDs for the blue coalition
        ---@type table
        blue = {},  -- Example placeholder for blue coalition country IDs

        --- Country IDs for the red coalition
        ---@type table
        red = {},  -- Example placeholder for red coalition country IDs

        --- Country IDs for the neutral coalition
        ---@type table
        neutrals = {}  -- Example placeholder for neutral coalition country IDs
    }, -- end of ["coalitions"]

    --- Value used by the editor to know what index the dictkey and reskeys are on.
    ---@type number
    currentKey = 0,

    --- The date the mission takes place at
    ---@type table
    date = {
        --- Year of the mission
        ---@type number
        Year = 2024,

        --- Month of the mission
        ---@type number
        Month = 6,

        --- Day of the mission
        ---@type number
        Day = 13
    }, -- end of ["date"]

    --- Mission briefing defined under the "Situation" page on the briefing panel.
    ---@type string
    descriptionText = "",

    --- Blue coalition task defined on the briefing panel.
    ---@type string
    descriptionBlueTask = "",

    --- Neutral coalition task defined on the briefing panel.
    ---@type string
    descriptionNeutralsTask = "",

    --- Red coalition task defined on the briefing panel.
    ---@type string
    descriptionRedTask = "",

    --- Table containing information on any drawing placed in the editor.
    ---@type table
    drawings = {},  -- Example placeholder for drawing information

    --- Lists failure parameters for whichever aircraft is set to player.
    ---@type table
    failures = {},  -- Example placeholder for failures data

    --- Options that are forced by the mission and their corresponding settings.
    ---@type table
    forcedOptions = {},  -- Example placeholder for forced options

    --- Data on the number of Combined Arms slots and their respective coalitions.
    groundControl = {
        --- Passwords for different roles
        passwords = {
            --- Password for artillery commander role
            ---@type table
            artillery_commander = {
                -- Add artillery commander passwords here
            }, -- end of ["artillery_commander"]
    
            --- Password for instructor role
            ---@type table
            instructor = {
                -- Add instructor passwords here
            }, -- end of ["instructor"]
    
            --- Password for observer role
            ---@type table
            observer = {
                -- Add observer passwords here
            }, -- end of ["observer"]
    
            --- Password for forward observer role
            ---@type table
            forward_observer = {
                -- Add forward observer passwords here
            }, -- end of ["forward_observer"]
        }, -- end of ["passwords"]
    
        --- Roles and their coalition-specific data
        roles = {
            --- Artillery commander role
            artillery_commander = {
                --- Number of slots for neutral coalition
                ---@type number
                neutrals = 0,  -- Replace with actual value
    
                --- Number of slots for blue coalition
                ---@type number
                blue = 0,  -- Replace with actual value
    
                --- Number of slots for red coalition
                ---@type number
                red = 0,  -- Replace with actual value
            }, -- end of ["artillery_commander"]
    
            --- Instructor role
            instructor = {
                --- Number of slots for neutral coalition
                ---@type number
                neutrals = 0,  -- Replace with actual value
    
                --- Number of slots for blue coalition
                ---@type number
                blue = 0,  -- Replace with actual value
    
                --- Number of slots for red coalition
                ---@type number
                red = 0,  -- Replace with actual value
            }, -- end of ["instructor"]
    
            --- Observer role
            observer = {
                --- Number of slots for neutral coalition
                ---@type number
                neutrals = 0,  -- Replace with actual value
    
                --- Number of slots for blue coalition
                ---@type number
                blue = 0,  -- Replace with actual value
    
                --- Number of slots for red coalition
                ---@type number
                red = 0,  -- Replace with actual value
            }, -- end of ["observer"]
    
            --- Forward observer role
            forward_observer = {
                --- Number of slots for neutral coalition
                ---@type number
                neutrals = 0,  -- Replace with actual value
    
                --- Number of slots for blue coalition
                ---@type number
                blue = 0,  -- Replace with actual value
    
                --- Number of slots for red coalition
                ---@type number
                red = 0,  -- Replace with actual value
            }, -- end of ["forward_observer"]
        }, -- end of ["roles"]
    
        --- Indicator whether pilot can control vehicles
        ---@type boolean
        isPilotControlVehicles = false,  -- Replace with actual value
    
    }, -- end of ["groundControl"]

    --- Last position of the map view the user was looking at when the mission was saved.
    map = {
        --- Map view X coordinate
        ---@type number
        centerX = 0,

        --- Map view Y coordinate
        ---@type number
        centerY = 0,

        --- Map view zoom level
        ---@type number
        zoom = 1
    }, -- end of ["map"]

    --- Internal value used to keep track of what the next unit and group id to use is.
    ---@type number
    maxDictId = 0,

    --- Neutral coalition briefing images.
    ---@type table
    pictureFileNameN = {},  -- Example placeholder for neutral briefing images

    --- Blue coalition briefing images.
    ---@type table
    pictureFileNameB = {},  -- Example placeholder for blue briefing images

    --- Red coalition briefing images.
    ---@type table
    pictureFileNameR = {},  -- Example placeholder for red briefing images

    --- Table of mod names whose units are present within the mission.
    ---@type table
    requiredModules = {},  -- Example placeholder for required modules

    --- Conditions and actions defined by mission goals to decide if a mission is "won".
    result = {
        --- Mission conditions
        ---@type table
        conditions = {},  -- Example placeholder for mission conditions

        --- Mission actions
        ---@type table
        actions = {}  -- Example placeholder for mission actions
    }, -- end of ["result"]

    --- Time in seconds since midnight for the date set when the mission starts.
    ---@type number
    start_time = 0,

    --- Name of the mission as defined in the briefing panel.
    ---@type string
    sortie = "",

    --- Name of the map the mission takes place on.
    ---@type string
    theatre = "",

    --- Table of trigger zones indexed numerically.
    triggers = {
        --- Zones defined within the triggers
        zones = {
            [44] = {
                --- Radius of the trigger zone
                ---@type number
                radius = 3000,  -- Replace with actual radius

                --- Unique identifier for the trigger zone
                ---@type number
                zoneId = 347,  -- Replace with actual zone ID

                --- Color of the trigger zone in RGBA format
                color = {
                    --- Red component (0-1)
                    ---@type number
                    [1] = 1,  -- Replace with actual red component

                    --- Green component (0-1)
                    ---@type number
                    [2] = 1,  -- Replace with actual green component

                    --- Blue component (0-1)
                    ---@type number
                    [3] = 1,  -- Replace with actual blue component

                    --- Alpha component (0-1, transparency)
                    ---@type number
                    [4] = 0.15  -- Replace with actual alpha component
                }, -- end of ["color"]

                --- Properties of the trigger zone
                properties = {
                    [1] = {
                        --- Key for the property
                        ---@type string
                        key = "lat",  -- Replace with actual key

                        --- Value for the property
                        ---@type string
                        value = "B"  -- Replace with actual value
                    }, -- end of [1]

                    [2] = {
                        --- Key for the property
                        ---@type string
                        key = "str",  -- Replace with actual key

                        --- Value for the property
                        ---@type string
                        value = "East Esmaeil Abad"  -- Replace with actual value
                    }, -- end of [2]

                    [3] = {
                        --- Key for the property
                        ---@type string
                        key = "type",  -- Replace with actual key

                        --- Value for the property
                        ---@type string
                        value = "obj"  -- Replace with actual value
                    } -- end of [3]

                    -- Add more properties as needed
                }, -- end of ["properties"]

                --- Visibility of the trigger zone
                ---@type boolean
                hidden = false,  -- Replace with actual visibility

                --- Y coordinate of the trigger zone center
                ---@type number
                y = -282851.07616364,  -- Replace with actual Y coordinate

                --- X coordinate of the trigger zone center
                ---@type number
                x = 381072.16872345,  -- Replace with actual X coordinate

                --- Name of the trigger zone
                ---@type string
                name = "OBJB20",  -- Replace with actual name

                --- Type of the trigger zone
                ---@type number
                type = 2,  -- Replace with actual type

                --- Vertices of the polygon defining the trigger zone
                ---@type table
                verticies = {
                    [1] = {
                        --- Y coordinate of the vertex
                        ---@type number
                        y = -298019.23760703,  -- Replace with actual Y coordinate

                        --- X coordinate of the vertex
                        ---@type number
                        x = 376996.1784471  -- Replace with actual X coordinate
                    }, -- end of [1]

                    [2] = {
                        --- Y coordinate of the vertex
                        ---@type number
                        y = -276624.3163146,  -- Replace with actual Y coordinate

                        --- X coordinate of the vertex
                        ---@type number
                        x = 367168.69201007  -- Replace with actual X coordinate
                    }, -- end of [2]

                    [3] = {
                        --- Y coordinate of the vertex
                        ---@type number
                        y = -269277.86743708,  -- Replace with actual Y coordinate

                        --- X coordinate of the vertex
                        ---@type number
                        x = 384020.41465456  -- Replace with actual X coordinate
                    }, -- end of [3]

                    [4] = {
                        --- Y coordinate of the vertex
                        ---@type number
                        y = -287482.88329585,  -- Replace with actual Y coordinate

                        --- X coordinate of the vertex
                        ---@type number
                        x = 396103.38978206  -- Replace with actual X coordinate
                    } -- end of [4]

                    -- Add more vertices as needed
                } -- end of ["verticies"]
            } -- end of [44]

            -- Add more zones as needed
        } -- end of ["zones"]
    }, -- end of ["triggers"]

    --- Table containing every single ME trigger.
    ---@type table
    trig = {

    }, -- end of ["trig"]

    --- Another table containing data on triggers.
    ---@type table
    trigRules = {

    }, -- end of ["trigRules"]

    --- Value used by the mission editor to know roughly which iteration of the editor the mission was saved in.
    ---@type number
    version = 0,

    --- Table with weather data.
    ---@type table
    weather = {
        --- Wind data
        ---@type table
        wind = {
            --- Wind speed
            ---@type number
            speed = 0,

            --- Wind direction
            ---@type number
            direction = 0
        }, -- end of ["wind"]

        --- Temperature data
        ---@type number
        temperature = 15

        -- Add more weather attributes as needed
    } -- end of ["weather"]
} -- end of ["missionData"]

env = {
    warehouses = {
        -- [airbaseId] = warehouseTable for additional airbases can be added similarly
        airports = {
            [1] = {
                gasoline = {
                    ---@type number
                    InitFuel = 100,
                },

                ---@type boolean
                unlimitedMunitions = true,

                methanol_mixture = {
                    ---@type number
                    InitFuel = 100,
                },

                ---@type number
                OperatingLevel_Air = 10,
                
                diesel = {
                    ---@type number
                    InitFuel = 100,
                },

                ---@type number
                speed = 16.666666,

                ---@type number
                size = 100,

                ---@type number
                periodicity = 30,

                suppliers = {
                    ---@type table
                    [1] = {
                        ---@type number
                        Id = 23,
                        ---@type string
                        type = "airports",
                    },
                },

                ---@type string
                coalition = "blue",

                jet_fuel = {
                    ---@type number
                    InitFuel = 100,
                },

                ---@type number
                OperatingLevel_Eqp = 10,

                ---@type boolean
                unlimitedFuel = true,

                ---@type table
                aircrafts = {},

                ---@type table
                weapons = {},

                ---@type number
                OperatingLevel_Fuel = 10,

                ---@type boolean
                unlimitedAircrafts = true,
            },            
        },

        warehouses = {
            gasoline = {
                ---@type number
                InitFuel = 100,
            },

            ---@type boolean
            unlimitedMunitions = true,

            methanol_mixture = {
                ---@type number
                InitFuel = 100,
            },

            ---@type number
            OperatingLevel_Air = 10,
            
            diesel = {
                ---@type number
                InitFuel = 100,
            },

            ---@type number
            speed = 16.666666,

            ---@type number
            size = 100,

            ---@type number
            periodicity = 30,

            suppliers = {
                ---@type table
                [1] = {
                    ---@type number
                    Id = 23,
                    ---@type string
                    type = "airports",
                },
            },

            ---@type string
            coalition = "blue",

            jet_fuel = {
                ---@type number
                InitFuel = 100,
            },

            ---@type number
            OperatingLevel_Eqp = 10,

            ---@type boolean
            unlimitedFuel = true,

            ---@type table
            aircrafts = {},

            ---@type table
            weapons = {},

            ---@type number
            OperatingLevel_Fuel = 10,

            ---@type boolean
            unlimitedAircrafts = true,
        },
    },
}



---Prints the passed string to the dcs.log with a prefix of 'info'. The optional variable defines whether or not a message box will pop up when the logging occurs.
---https://wiki.hoggitworld.com/view/DCS_func_info
---@param log string
---@param showMessageBox boolean|nil 
function env.info(log, showMessageBox) end

---Prints the passed string to the dcs.log with a prefix of 'warning'. The optional variable defines whether or not a message box will pop up when the logging occurs.
---https://wiki.hoggitworld.com/view/DCS_func_warning
---@param log string
---@param showMessageBox boolean|nil 
function env.warning(log, showMessageBox) end

---Prints the passed string to the dcs.log with a prefix of 'error'. The optional variable defines whether or not a message box will pop up when the logging occurs.
---https://wiki.hoggitworld.com/view/DCS_func_warning
---@param log string
---@param showMessageBox boolean|nil 
function env.error(log, showMessageBox) end

---Prints the passed string to the dcs.log with a prefix of 'error'. The optional variable defines whether or not a message box will pop up when the logging occurs.
---https://wiki.hoggitworld.com/view/DCS_func_setErrorMessageBoxEnabled
---@example env.setErrorMessageBoxEnabled(false)
---@param toggle boolean 
function env.setErrorMessageBoxEnabled(toggle) end

---Returns a string associated with the passed dictionary key value. If the key is not found within the miz the function will return the string that was passed.
---https://wiki.hoggitworld.com/view/DCS_func_getValueDictByKey
---@return string
---@param string string 
function env.getValueDictByKey(string) end