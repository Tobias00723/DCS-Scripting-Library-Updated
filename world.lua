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

    --classes
    do
        --/*EVENT's*/
        do
            ---@class Event_SHOT
            ---@field id 1            -- The event ID (always 1 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that initiated the shot
            ---@field weapon Weapon   -- The weapon that was fired

            ---@class Event_HIT
            ---@field id 2            -- The event ID (always 2 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that fired the weapon
            ---@field weapon Weapon   -- The weapon that hit the target
            ---@field target Objects   -- The object that was hit

            ---@class Event_TAKEOFF
            ---@field id 3             -- The event ID (always 3 for this event)
            ---@field time number      -- The time at which the event occurred
            ---@field initiator Unit   -- The unit that took off
            ---@field place Airbase    -- The place from where the unit took off (Airbase, FARP, or Ship)
            ---@field subPlace number  -- Additional information, often used for specifying sub-places (default is 0)

            ---@class Event_LAND
            ---@field id 4             -- The event ID (always 4 for this event)
            ---@field time number      -- The time at which the event occurred
            ---@field initiator Unit   -- The unit that has landed
            ---@field place Airbase    -- The place where the unit landed (Airbase, FARP, or Ship)
            ---@field subPlace number  -- Additional information, often used for specifying sub-places (default is 0)

            ---@class Event_CRASH
            ---@field id 5             -- The event ID (always 5 for this event)
            ---@field time number      -- The time at which the event occurred
            ---@field initiator Unit   -- The unit that has crashed

            ---@class Event_EJECTION
            ---@field id 6             -- The event ID (always 6 for this event)
            ---@field time number      -- The time at which the event occurred
            ---@field initiator Unit   -- The unit that has ejected
            ---@field target Objects    -- The object representing the ejector seat or pilot that ejected

            ---@class Event_REFUELING
            ---@field id 7             -- The event ID (always 7 for this event)
            ---@field time number      -- The time at which the event occurred
            ---@field initiator Unit   -- The unit that is receiving fuel

            ---@class Event_DEAD
            ---@field id 8             -- The event ID (always 8 for this event)
            ---@field time number      -- The time at which the event occurred
            ---@field initiator Objects -- The object that was destroyed

            ---@class Event_PILOT_DEAD
            ---@field id 9             -- The event ID (always 9 for this event)
            ---@field time number      -- The time at which the event occurred
            ---@field initiator Unit   -- The unit that the pilot was in when the pilot died

            ---@class Event_BASE_CAPTURED
            ---@field id 10            -- The event ID (always 10 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that captured the base
            ---@field place Airbase   -- The airbase or FARP that was captured
            ---@field subPlace number -- Additional information or sub-places (default is 0)

            ---@class Event_MISSION_START
            ---@field id 11            -- The event ID (always 11 for this event)
            ---@field time number     -- The time at which the mission start event occurred

            ---@class Event_MISSION_END
            ---@field id 12            -- The event ID (always 12 for this event)
            ---@field time number     -- The time at which the mission end event occurred

            ---@class Event_TOOK_CONTROL
            ---@field id 13           -- The event ID (always 13 for this event)

            ---@class Event_REFUELING_STOP
            ---@field id 14            -- The event ID (always 14 for this event)
            ---@field time number     -- The time at which the refueling stop event occurred
            ---@field initiator Unit  -- The unit that was receiving fuel

            ---@class Event_BIRTH
            ---@field id 15            -- The event ID (always 15 for this event)
            ---@field time number     -- The time at which the birth event occurred
            ---@field initiator Objects -- The object that was spawned into the mission

            ---@class Event_HUMAN_FAILURE
            ---@field id 16            -- The event ID (always 16 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that had the system failure

            ---@class Event_DETAILED_FAILURE
            ---@field id 17            -- The event ID (always 17 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that had the failure

            ---@class Event_ENGINE_STARTUP
            ---@field id 18            -- The event ID (always 18 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that is starting its engines

            ---@class Event_ENGINE_SHUTDOWN
            ---@field id 19            -- The event ID (always 19 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that is shutting down its engines

            ---@class Event_PLAYER_ENTER_UNIT
            ---@field id 20            -- The event ID (always 20 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that is being taken control of

            ---@class Event_PLAYER_LEAVE_UNIT
            ---@field id 21            -- The event ID (always 21 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that the player left

            ---@class Event_PLAYER_COMMENT
            ---@field id 22            -- The event ID (always 22 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field comment string  -- The comment or message associated with the event

            ---@class Event_SHOOTING_START
            ---@field id 23            -- The event ID (always 23 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that is shooting
            ---@field target Objects   -- The unit or object that is being targeted
            ---@field weapon_name string -- The name of the weapon being used

            ---@class Event_SHOOTING_END
            ---@field id 24            -- The event ID (always 24 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that stopped shooting
            ---@field weapon_name string -- The name of the weapon that stopped firing

            ---@class Event_MARK_ADDED
            ---@field id 25            -- The event ID (always 25 for this event)
            ---@field idx number
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that added the mark
            ---@field coalition coalition.side -- The coalition ID associated with the mark
            ---@field groupID number  -- The group ID associated with the mark
            ---@field text string     -- The text of the mark
            ---@field pos vec3        -- The position of the mark

            ---@class Event_MARK_CHANGE
            ---@field id 26            -- The event ID (always 26 for this event)
            ---@field idx number
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that changed the mark
            ---@field coalition number -- The coalition ID associated with the mark
            ---@field groupID number  -- The group ID associated with the mark
            ---@field text string     -- The updated text of the mark
            ---@field pos vec3        -- The updated position of the mark

            ---@class Event_MARK_REMOVE
            ---@field id 27            -- The event ID (always 27 for this event)
            ---@field idx number
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that removed the mark
            ---@field coalition number -- The coalition ID associated with the mark
            ---@field groupID number  -- The group ID associated with the mark
            ---@field text string     -- The text of the mark
            ---@field pos vec3        -- The position of the mark

            ---@class Event_KILL
            ---@field id 28            -- The event ID (always 28 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that killed the target
            ---@field weapon Weapon   -- The weapon used in the kill
            ---@field target Objects    -- The unit that was killed
            ---@field weapon_name string -- The name of the weapon used

            ---@class Event_SCORE
            ---@field id 29            -- The event ID (always 29 for this event)
            ---@field time number     -- The time at which the event occurred

            ---@class Event_UNIT_LOST
            ---@field id 30            -- The event ID (always 30 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that was lost

            ---@class Event_LANDING_AFTER_EJECTION
            ---@field id 31            -- The event ID (always 31 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Objects -- The object representing the ejected pilot
            ---@field place Unit      -- The aircraft that the pilot ejected from
            ---@field subplace number -- Additional information related to the landing (usually 0)

            ---@class Event_PARATROOPER_LENDING
            ---@field id 32

            ---@class Event_DISCARD_CHAIR_AFTER_EJECTION
            ---@field id 33            -- The event ID (always 33 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Objects -- The ejector seat object
            ---@field target Objects   -- The pilot object

            ---@class Event_WEAPON_ADD
            ---@field id 34            -- The event ID (always 34 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The aircraft that has the weapon
            ---@field weapon_name string -- The name of the added weapon

            ---@class Event_TRIGGER_ZONE
            ---@field id 35

            ---@class Event_LANDING_QUALITY_MARK
            ---@field id 36            -- The event ID (always 36 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that landed
            ---@field place Unit      -- The location where the aircraft landed
            ---@field comment string  -- The LSO score associated with the landing
            ---@field subPlace number -- Additional information related to the landing (usually 0)

            ---@class Event_BDA
            ---@field id 37
            ---@field time number
            ---@field weapon_name string
            ---@field initiator Objects
            ---@field target Objects
            ---@field weapon Objects

            ---@class Event_AI_ABORT_MISSION
            ---@field id 38            -- The event ID (always 38 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The AI aircraft that aborted the mission

            ---@class Event_DAYNIGHT
            ---@field id 39

            ---@class Event_FLIGHT_TIME
            ---@field id 40

            ---@class Event_PLAYER_SELF_KILL_PILOT
            ---@field id 41

            ---@class Event_PLAYER_CAPTURE_AIRFIELD
            ---@field id 42

            ---@class Event_EMERGENCY_LANDING
            ---@field id 43

            ---@class Event_UNIT_CREATE_TASK
            ---@field id 44

            ---@class Event_UNIT_DELETE_TASK
            ---@field id 45

            ---@class Event_SIMULATION_START
            ---@field id 46

            ---@class Event_WEAPON_REARM
            ---@field id 47

            ---@class Event_WEAPON_DROP
            ---@field id 48            -- The event ID (always 48 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The aircraft that jettisoned the weapon
            ---@field weapon_name string -- The name of the jettisoned weapon

            ---@class Event_UNIT_TASK_COMPLETE
            ---@field id 49

            ---@class Event_UNIT_TASK_STAGE
            ---@field id 50

            ---@class Event_MAC_EXTRA_SCORE
            ---@field id 51

            ---@class Event_MISSION_RESTART
            ---@field id 52

            ---@class Event_MISSION_WINNER
            ---@field id 53

            ---@class Event_RUNWAY_TAKEOFF
            ---@field id 54            -- The event ID (always 54 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that took off
            ---@field place Objects    -- The object from where the unit took off (Airbase, FARP, or Ship)
            ---@field subPlace number -- Additional information related to the takeoff (usually 0)

            ---@class Event_RUNWAY_TOUCH
            ---@field id 55            -- The event ID (always 55 for this event)
            ---@field time number     -- The time at which the event occurred
            ---@field initiator Unit  -- The unit that landed
            ---@field place Objects    -- The object where the unit landed (Airbase, FARP, or Ship)
            ---@field subPlace number -- Additional information related to the landing (usually 0)

            ---@class Event_MAC_LMS_RESTART
            ---@field id 56

            ---@class Event_SIMULATION_FREEZE
            ---@field id 57
            ---@field time number

            ---@class Event_SIMULATION_UNFREEZE
            ---@field id 58
            ---@field time number

            ---@class Event_HUMAN_AIRCRAFT_REPAIR_START
            ---@field id 59

            ---@class Event_HUMAN_AIRCRAFT_REPAIR_FINISH
            ---@field id 60

            ---@class Event_MAX
            ---@field id 61
        end


        --Missing info 32, 35, 37, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 56, 59, 60, 61

        --Mark_panel
        do
            --- Represents a Mark in the game with various properties.
            --- @class Mark_panel
            --- @field idx number The index of the mark, unique identifier.
            --- @field time number The time associated with the mark.
            --- @field initiator Unit The unit that initiated the mark.
            --- @field coalition coalition.side The coalition associated with the mark. (-1 for neutral, 1 for RED, 2 for BLUE)
            --- @field groupID number The group ID associated with the mark. (-1 for none, or a specific group ID)
            --- @field text string The text associated with the mark.
            --- @field pos vec3 The position of the mark in 3D space.
        end

        --VolumeType
        do
            --- @class world.searchObjects.search_volume.params
            --- @field point vec3
            --- @field radius number

            --- @class world.searchObjects.search_volume
            --- @field id world.VolumeType
            --- @field params world.searchObjects.search_volume.params
        end

        ---@class Event_info
        ---@field id world.event Number that represents the event see [world.event]
    end


    ---The world singleton contains functions centered around two different but extremely useful functions. 1. Events and event handlers are all governed within world.2. A number of functions to get information about the game world.
    ---https://wiki.hoggitworld.com/view/DCS_singleton_world
    ---@class world
    world               =
    {
        ---@enum world.event
        event               =
        {
            S_EVENT_INVALID                      = 0,
            S_EVENT_SHOT                         = 1,
            S_EVENT_HIT                          = 2,
            S_EVENT_TAKEOFF                      = 3,
            S_EVENT_LAND                         = 4,
            S_EVENT_CRASH                        = 5,
            S_EVENT_EJECTION                     = 6,
            S_EVENT_REFUELING                    = 7,
            S_EVENT_DEAD                         = 8,
            S_EVENT_PILOT_DEAD                   = 9,
            S_EVENT_BASE_CAPTURED                = 10,
            S_EVENT_MISSION_START                = 11,
            S_EVENT_MISSION_END                  = 12,
            S_EVENT_TOOK_CONTROL                 = 13,
            S_EVENT_REFUELING_STOP               = 14,
            S_EVENT_BIRTH                        = 15,
            S_EVENT_HUMAN_FAILURE                = 16,
            S_EVENT_DETAILED_FAILURE             = 17,
            S_EVENT_ENGINE_STARTUP               = 18,
            S_EVENT_ENGINE_SHUTDOWN              = 19,
            S_EVENT_PLAYER_ENTER_UNIT            = 20,
            S_EVENT_PLAYER_LEAVE_UNIT            = 21,
            S_EVENT_PLAYER_COMMENT               = 22,
            S_EVENT_SHOOTING_START               = 23,
            S_EVENT_SHOOTING_END                 = 24,
            S_EVENT_MARK_ADDED                   = 25,
            S_EVENT_MARK_CHANGE                  = 26,
            S_EVENT_MARK_REMOVED                 = 27,
            S_EVENT_KILL                         = 28,
            S_EVENT_SCORE                        = 29,
            S_EVENT_UNIT_LOST                    = 30,
            S_EVENT_LANDING_AFTER_EJECTION       = 31,
            S_EVENT_PARATROOPER_LENDING          = 32,
            S_EVENT_DISCARD_CHAIR_AFTER_EJECTION = 33,
            S_EVENT_WEAPON_ADD                   = 34,
            S_EVENT_TRIGGER_ZONE                 = 35,
            S_EVENT_LANDING_QUALITY_MARK         = 36,
            S_EVENT_BDA                          = 37,
            S_EVENT_AI_ABORT_MISSION             = 38,
            S_EVENT_DAYNIGHT                     = 39,
            S_EVENT_FLIGHT_TIME                  = 40,
            S_EVENT_PLAYER_SELF_KILL_PILOT       = 41,
            S_EVENT_PLAYER_CAPTURE_AIRFIELD      = 42,
            S_EVENT_EMERGENCY_LANDING            = 43,
            S_EVENT_UNIT_CREATE_TASK             = 44,
            S_EVENT_UNIT_DELETE_TASK             = 45,
            S_EVENT_SIMULATION_START             = 46,
            S_EVENT_WEAPON_REARM                 = 47,
            S_EVENT_WEAPON_DROP                  = 48,
            S_EVENT_UNIT_TASK_COMPLETE           = 49,
            S_EVENT_UNIT_TASK_STAGE              = 50,
            S_EVENT_MAC_EXTRA_SCORE              = 51,
            S_EVENT_MISSION_RESTART              = 52,
            S_EVENT_MISSION_WINNER               = 53,
            S_EVENT_RUNWAY_TAKEOFF               = 54,
            S_EVENT_RUNWAY_TOUCH                 = 55,
            S_EVENT_MAC_LMS_RESTART              = 56,
            S_EVENT_SIMULATION_FREEZE            = 57,
            S_EVENT_SIMULATION_UNFREEZE          = 58,
            S_EVENT_HUMAN_AIRCRAFT_REPAIR_START  = 59,
            S_EVENT_HUMAN_AIRCRAFT_REPAIR_FINISH = 60,
            S_EVENT_MAX                          = 61,
        },
        ---@enum world.BirthPlace
        BirthPlace          =
        {
            wsBirthPlace_Air           = 1,
            wsBirthPlace_Ship          = 3,
            wsBirthPlace_RunWay        = 4,
            wsBirthPlace_Park          = 5,
            wsBirthPlace_Heliport_Hot  = 9,
            wsBirthPlace_Heliport_Cold = 10,
            wsBirthPlace_Ship_Cold     = 11,
            wsBirthPlace_Ship_Hot      = 12
        },
        ---@enum world.VolumeType
        VolumeType          =
        {
            SEGMENT = 0,
            BOX     = 1,
            SPHERE  = 2,
            PYRAMID = 3
        },

        ---@type table<number, function>
        eventHandlers       = {},

        ---@type table<number, function>
        persistenceHandlers = {}
    }

    ---List of all current event handelars
    ---get id abtained by using world.addEventHandler(handler)
    ---@type table<number, any>
    world.eventHandlers = {}


    --Functions
    do
        ---Adds a function as an event handler that executes whenever a simulator event occurs. The most common uses of event handlers are to track statistics of units within a given scenario and to execute code based on certain events occurring. Handlers are passed event tables which contains numerous data regarding the event. For examples of the event tables returned, reference the event page on the wiki to get more information regarding the event.
        ---https://wiki.hoggitworld.com/view/DCS_func_addEventHandler
        ---@return function
        ---@param handler table EventHandler
        function world.addEventHandler( handler ) end

        ---Returns a table of airbase objects belonging to the specified coalition. Objects can be ships, static objects(FARP), or airbases on the map. When the function is run as world.getAirbases() no input values required, and the function returns all airbases, ships, and farps on the map.
        ---https://wiki.hoggitworld.com/view/DCS_func_getAirbases
        ---@return table<number, Airbase>
        ---@param coalitionid? coalition.side
        function world.getAirbases( coalitionid ) end

        ---Returns a table of mark panels and drawn shapes indexed numerically that are present within the mission. Panel is designed with the mark points in mind, but still returns data for shapes created via markups.
        ---https://wiki.hoggitworld.com/view/DCS_func_getMarkPanels
        ---@return table<number, Mark_panel>
        function world.getMarkPanels() end

        ---Returns a table of the single unit object in the game who's skill level is set as "Player". There is only a single player unit in a mission and in single player the user will always spawn into this unit automatically unless other client or Combined Arms slots are available.
        ---https://wiki.hoggitworld.com/view/DCS_func_getPlayer
        ---@return Unit class
        function world.getPlayer() end

        ---Adds a function as an event handler that executes whenever a simulator event occurs. The most common uses of event handlers are to track statistics of units within a given scenario and to execute code based on certain events occurring. Handlers are passed event tables which contains numerous data regarding the event. For examples of the event tables returned, reference the event page on the wiki to get more information regarding the event.
        ---[Event info](https://wiki.hoggitworld.com/view/Category:Events)
        ---@param self table
        ---@param event_info Event_info EventHandler
        function world.onEvent( self, event_info ) end

        ---Removes the specified event handler from handling events. Use this when an event handler has outlived its usefulness.
        ---https://wiki.hoggitworld.com/view/DCS_func_removeEventHandler
        ---@return function
        ---@param handler any EventHandler
        function world.removeEventHandler( handler ) end

        ---Searches the defined area passed to the function to remove craters, object wreckage, and any other debris within the search volume. Will not remove wreckage of scenery objects. See pages for the correct format of each volume type:
        ---https://wiki.hoggitworld.com/view/DCS_func_removeJunk
        ---@return number
        ---@param searchVolume table
        function world.removeJunk( searchVolume ) end

        ---Searches a defined volume of 3d space for the specified objects within it and then can run function on each returned object. Object category is either a single enum or a table of enums that defines the types of objects that will be searched for Search volume is the defined 3d space that will be searched. Handler is the function that will be run on each object that is found. Any data is a variable that is passed to the handler function, it can be anything.
        ---https://wiki.hoggitworld.com/view/DCS_func_searchObjects
        ---@return number
        ---@param ObjectCategory Object.Category|table<number, Object.Category>
        ---@param searchVolume world.searchObjects.search_volume|table
        ---@param Handler function ObjectSeatchHandler
        ---@param data? any
        function world.searchObjects( ObjectCategory, searchVolume, Handler, data ) end

        ---Read persistence data identified by name. Returns Lua-value stored in this miz/sav by a given name or nil if no value found.
        ---TBA
        ---@return any
        ---@param name string
        function world.getPersistenceData( name ) end

        ---Registers a handler for generating persistent data when saving simulation state. Name MUST conform to the same restriction described above. Handler MUST be a Lua-function which takes no arguments and returns persistent data as a Lua-value (boolean, number, string, table). The returned value must be JSON-serializable.
        ---TBA
        ---@param name string
        ---@param handler function
        function world.setPersistenceHandler( name, handler ) end

        ---No Docu
        ---@param ... any unkown
        function world.runPersistenceHandlers( ... ) end
    end
end
