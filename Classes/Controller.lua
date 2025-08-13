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
        ---**DetectedTarget Controller.getDetectedTargets**
        do
            ---Applies only to a Unit Controller. Cannot be used at the group level.
            ---@private
            ---@class Controller.getDetectedTargets
            ---@field object Objects
            ---@field visible boolean
            ---@field type boolean
            ---@field distance boolean
        end
    end

    ---Controller is an object that performs AI-routines. In other words a controller is an instance of the AI. Controller stores the current main task, active enroute tasks, and behavior options. Controllers also can perform commands. Controllers exist at both a group and unit level. However only planes and helicopters can be controlled individually at a unit level. Some functions can only work for Unit Controllers. Different tasks, options, and commands are available for the different group types. (Plane, Helicopter, Ground Unit, and Ship). See the linked articles on these subjects for more information.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Controller
    ---@class Controller
    Controller = {}

    ---Controller is an object that performs AI-routines. In other words a controller is an instance of the AI. Controller stores the current main task, active enroute tasks, and behavior options. Controllers also can perform commands. Controllers exist at both a group and unit level. However only planes and helicopters can be controlled individually at a unit level. Some functions can only work for Unit Controllers. Different tasks, options, and commands are available for the different group types. (Plane, Helicopter, Ground Unit, and Ship). See the linked articles on these subjects for more information.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Controller
    ---@enum Conroller.Detection
    Controller.Detection = {
        VISUAL = 1,
        OPTIC = 2,
        RADAR = 4,
        IRST = 8,
        RWR = 16,
        DLINK = 32
    }

    ---@type number
    Controller.id_ = 0

    --Functions
    do
        ---Returns a table of detected targets that are detected by the different detection methods. If not detection method is specified, then all forms of detection will be used. Applies only to a Unit Controller. Cannot be used at the group level.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDetectedTargets
        ---@return table<number, Controller.getDetectedTargets>
        ---@param detectionType1? Conroller.Detection
        ---@param ...? Conroller.Detection
        function Controller.getDetectedTargets(self, detectionType1, ...) end
        

        ---Returns true if the controller currently has a task.
        ---https://wiki.hoggitworld.com/view/DCS_func_hasTask
        ---@return boolean
        function Controller.hasTask(self) end

        ---Returns multiple entries that define a number of values if the target is detected by the Unit or group associated with the controller. Values returned are: |boolean detected, -- boolean value if the target is detected| boolean visible, -- boolean value if target is visible by line of sight| ModelTime lastTime, -- the last model time that the target was detected| boolean type, -- if the type of target is known| boolean distance, -- if distance to the target is known| Vec3 lastPos, -- last known position of the target| Vec3 lastVel -- last know velocity vector of the tar|. Function is available at the unit level for all unit types. When used with a Group Controller the function will return expected values only with Ground and Ship groups.
        ---https://wiki.hoggitworld.com/view/DCS_func_isTargetDetected
        ---@return boolean detected , boolean? visible , number|boolean? lastTime_bool_if_currently_visable  , boolean? type , boolean? distance , vec3? lastPos , vec3? lastVel
        ---@param target Objects
        ---@param detectionType1? Conroller.Detection
        ---@param detectionType2? Conroller.Detection  
        ---@param ... Conroller.Detection 
        function Controller.isTargetDetected(self, target, detectionType1, detectionType2, ...) end

        ---Forces the controller to become aware of the specified target, without the controller manually detecting the object itself. Applies only to a Unit Controller. Cannot be used at the group level.
        ---https://wiki.hoggitworld.com/view/DCS_func_knowTarget
        ---@param object Objects
        ---@param type? boolean
        ---@param distance? boolean
        function Controller.knowTarget(self, object, type, distance) end

        ---Removes the top task from the tasking queue.
        ---https://wiki.hoggitworld.com/view/DCS_func_popTask
        function Controller.popTask(self) end

        ---Pushes the specified task to the front of the tasking queue. If no other tasks are currently active it will function effectively the same as Controller.setTask()For more information see the specific task page you are looking for: Main Tasks: mission, AttackGroup, AttackUnit, Bombing, CarpetBombing, AttackMapObject, BombingRunway, orbit, refueling, land, follow, followBigFormation, escort, Embarking, fireAtPoint, hold, FAC_AttackGroup, EmbarkToTransport, DisembarkFromTransport, CargoTransportation, goToWaypoint, groundEscort. Enroute Tasks: engageTargets, engageTargetsInZone, engageGroup, engageUnit, awacs, tanker, ewr, FAC_engageGroup, FAC.
        ---https://wiki.hoggitworld.com/view/DCS_func_pushTask
        ---@param task Task
        function Controller.pushTask(self, task) end

        ---Resets the current task assigned to the controller.
        ---https://wiki.hoggitworld.com/view/DCS_func_resetTask
        function Controller.resetTask(self) end

        ---Sets the controlled aircraft group to the specified altitude in meters. Optional boolean keep when set to true will maintain that altitude on passing waypoints. If no present or false the aircraft will return to the altitude as defined by their route. Optional string altType will specify the altitude type used. If nil the altitude type of the current waypoint will be used. Accepted values are the altitude enumerator:
        ---AI.Task.AltitudeType,
        ---"RADIO" = "RADIO"
        ---"BARO"  = "BARO"
        ---https://wiki.hoggitworld.com/view/DCS_func_setAltitude
        ---@param altitude number
        ---@param keep? boolean
        ---@param altType? AI.Task.AltitudeType
        function Controller.setAltitude(self, altitude, keep, altType) end

        ---Commands are instant actions that require zero time to perform. Commands may be used both for control unit/group behavior and control game mechanics. Setting a command will have no impact on active tasking. Reference the following pages for details on each command: script, setCallsign, setFrequency, switchWaypoint, stopRoute, switchAction, setInvisible, setImmortal, activateBeacon, deactivateBeacon, eplrs, start, transmitMessage, stopTransmission, smoke_on_off
        ---https://wiki.hoggitworld.com/view/DCS_func_setCommand
        ---@param command Task_Commands
        function Controller.setCommand(self, command) end

        ---Enables or disables the AI controller for the specified group or unit. When AI is turned off the units are incapable of moving, shooting, or detecting targets. Function CAN NOT be used on aircraft or helicopters. This function will only work on ground or naval forces! When the value passed is false the AI is set off. When the value passed is true the AI is set on.
        ---https://wiki.hoggitworld.com/view/DCS_func_setOnOff
        ---@param value boolean
        function Controller.setOnOff(self, value) end

        ---Options are a pair of identifier and value. Behavior options are global parameters and will affect controller behavior in all tasks it performs. Options are executed immediately. For example Rules of Engagement (ROE) are an option that can dictate whether or not a group is currently allowed to attack. This option can over-ride tasking to attack specific targets. Unlike Tasks and Commands, options are organized by id and value. Reference the following pages for details on each option: ROE, Reaction To Threat, Radar Using, Flare Using, Formation, RTB On Bingo, silence, Disperse on Attack, Alarm State, RTB on Out of Ammo, ECM Using, Prohibit AA, Prohibit Jettison, Prohibit Afterburner, Prohibit AG, Missile Attack Range, Prohibit WP Pass Report, Engage Air Weapons, Option Radio Usage Contact, Option Radio Usage Engage, Option Radio Usage Kill, AC Engagement Range Restriction, jett tanks if empty, forced attack, Altitude Restriction for AAA Min, restrict targets, Altitude Restriction for AAA Max.
        ---https://wiki.hoggitworld.com/view/DCS_func_setOption
        ---@param optionId AI.Option.Air.id|AI.Option.Ground.id|AI.Option.Naval.id
        ---@param optionValue AI.Option.Air.val|AI.Option.Ground.val|AI.Option.Naval.val
        function Controller.setOption(self, optionId, optionValue) end

        ---Sets the controlled group to go the specified speed in meters per second. Optional boolean keep when set to true will maintain that speed on passing waypoints. If no present or false the controlled group will return to the speed as defined by their route.
        ---https://wiki.hoggitworld.com/view/DCS_func_setSpeed
        ---@param speed number
        ---@param keep? boolean
        function Controller.setSpeed(self, speed, keep) end

        ---Sets the specified task to the units or groups associated with the controller object. Tasks must fit a specified format. For more information see the specific task page you are looking for: Main Tasks: mission, AttackGroup, AttackUnit, Bombing, CarpetBombing, AttackMapObject, BombingRunway, orbit, refueling, land, follow, followBigFormation, escort, Embarking, fireAtPoint, hold, FAC_AttackGroup, EmbarkToTransport, DisembarkFromTransport, CargoTransportation, goToWaypoint, groundEscort. Enroute Tasks: engageTargets, engageTargetsInZone, engageGroup, engageUnit, awacs, tanker, ewr, FAC_engageGroup, FAC.
        ---https://wiki.hoggitworld.com/view/DCS_func_setTask
        ---@param task Task
        function Controller.setTask(self, task) end
    end
end
