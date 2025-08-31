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
        --[[MISSION DATA]]
        do
            ---**env.mission.coalition.side.nav_points Class**
            do
                ---@class env.mission.coalition.side.nav_points
                ---@field type string Type of the navigation point
                ---@field comment string Comment associated with the navigation point
                ---@field callsignStr string Callsign string for the navigation point
                ---@field id number Unique identifier for the navigation point
                ---@field properties NavigationPoint.Properties Properties of the navigation point
                ---@field y number Y coordinate of the navigation point
                ---@field x number X coordinate of the navigation point
                ---@field callsign number Numeric callsign for the navigation point

                do
                    ---@class NavigationPoint.Properties
                    ---@field vnav number Vertical navigation setting
                    ---@field scale number Scale setting
                    ---@field vangle number Vertical angle setting
                    ---@field angle number Angle setting
                    ---@field steer number Steer setting
                end
            end

            ---**env.mission.coalition.side.Country Class**
            do
                ---@class env.mission.coalition.side.Country
                ---@field id number ID of the country
                ---@field name string Name of the country
                ---@field plane? Plane_Group_DATA List of all planes in mission
                ---@field helicopter? Plane_Group_DATA List of all helicopters in mission
                ---@field ship? table List of all ships in mission
                ---@field vehicle? Vehicle_Group_DATA List of all vehicles in mission
                ---@field static? table List of all static objects in mission
            end

            ---Plane Group DATA
            do
                --- Aircraft data
                ---@class Plane_Group_DATA
                ---@field group table<number, Plane_Group_DATA_group>

                ---@class Plane_Group_DATA_group
                ---@field frequency? number Frequency of the aircraft
                ---@field modulation? number Modulation setting of the aircraft
                ---@field groupId? number Group ID of the aircraft
                ---@field tasks table List of tasks associated with the aircraft
                ---@field route Aircraft.Route Details of the flight route
                ---@field hidden? boolean Whether the aircraft is hidden
                ---@field units table<number, Aircraft.Unit> List of units in the aircraft
                ---@field y number Y coordinate of the aircraft
                ---@field radioSet boolean Whether the radio is set
                ---@field name string Name of the aircraft
                ---@field communication? boolean Whether communication is enabled
                ---@field x number X coordinate of the aircraft
                ---@field start_time? number Start time of the aircraft's mission
                ---@field task string Task assigned to the aircraft
                ---@field uncontrolled? boolean Whether the aircraft is uncontrolled
                ---@field lateActivation? boolean set late activation
                ---@field hiddenOnPlanner? boolean if you can see on F10
                ---@field hiddenOnMFD? boolean can be seen on MFD

                ---@class Aircraft.Route
                ---@field points table<number, Aircraft.Route.Point> List of route points

                ---@class Aircraft.Route.Point
                ---@field alt number Altitude of the point
                ---@field action AI.Task.WaypointType Action at the route point
                ---@field alt_type AI.Task.AltitudeType Altitude type
                ---@field speed number Speed at the route point
                ---@field task Task_Wrappers details at the route point
                ---@field type AI.Task.WaypointType Type of the route point
                ---@field ETA number
                ---@field ETA_locked boolean
                ---@field y number Y coordinate of the point
                ---@field x number X coordinate of the point
                ---@field speed_locked boolean
                ---@field formation_template string Form of the route point
                ---@field airdromeId? number ID of the airdrome

                ---@class Aircraft.Unit
                ---@field alt number Altitude of the unit
                ---@field hardpoint_racks boolean Whether hardpoint racks are present
                ---@field alt_type AI.Task.AltitudeType Altitude type
                ---@field livery_id? string Livery ID of the unit
                ---@field skill AI.Skill Skill level of the unit
                ---@field parking? string Parking position Term_Index from :getparking tostring
                ---@field speed number Speed of the unit
                ---@field AddPropAircraft? Aircraft.AddPropAircraft Additional properties for the aircraft
                ---@field Radio? table<number, Aircraft.Radio>
                ---@field type TypeNames Type of the unit
                ---@field unitId? number Unit ID
                ---@field psi? number pressure of location
                ---@field onboard_num? string Onboard number of the unit
                ---@field dataCartridge? table
                ---@field parking_id? string Parking ID
                ---@field x number X coordinate of the unit
                ---@field name string Name of the unit
                ---@field payload? Aircraft.Payload Payload of the unit
                ---@field y number Y coordinate of the unit
                ---@field heading number Heading of the unit
                ---@field callsign table<number|string, number|string> Callsign details of the unit
                ---@field datalinks? Aircraft.Datalink DL info

                ---@class Aircraft.AddPropAircraft
                ---@


                ---@class Aircraft.Datalink
                ---@field Link16? Aircraft.Datalink.Link16
                ---@field IDM? Aircraft.Datalink.IDM
                ---@field SADL? Aircraft.Datalink.SADL
                ---@field Link4? table

                ---@class Aircraft.Datalink.Link16
                ---@field settings Aircraft.Datalink.Link16.settings
                ---@field network Aircraft.Datalink.Link16.network

                ---@class Aircraft.Datalink.Link16.settings
                ---@field FF1_Channel? number unk
                ---@field FF2_Channel? number +1 on  FF1
                ---@field transmitPower number
                ---@field VOCB_Channel? number unk
                ---@field VOCA_Channel? number unk
                ---@field AIC_Channel? number unk
                ---@field flightLead? boolean true if un is 1
                ---@field specialChannel? number same as fighterChannel and missionChannel unk dough
                ---@field fighterChannel? number same as missionChannel and specialChannel unk dough
                ---@field missionChannel? number same as specialChannel and fighterChannel unk dough
                ---@field AirKey? number
                ---@field GatewayKey? number

                ---@class Aircraft.Datalink.Link16.network
                ---@field teamMembers table<number, Aircraft.Datalink.Link16.network.teamMembers>
                ---@field donors table seems always empty

                ---@class Aircraft.Datalink.Link16.network.teamMembers
                ---@field missionUnitId number UnitID to be linked
                ---@field TDOA? boolean if in team flight? seems most of the time true

                ---@class Aircraft.Datalink.IDM
                ---@

                ---@class Aircraft.Datalink.SADL
                ---@

                ---@class Aircraft.Datalink.Link4
                ---@
                --[[["settings"] =
												{
													["flightLead"] = true,
													["transmitPower"] = 3,
													["specialChannel"] = 1,
													["fighterChannel"] = 1,
													["missionChannel"] = 1,
												}, -- end of ["settings"]
												["network"] =
												{
													["teamMembers"] =
													{
														[1] =
														{
															["missionUnitId"] = 7254,
															["TDOA"] = true,
														}, -- end of [1]
													}, -- end of ["teamMembers"]
													["donors"] = {},
												}, -- end of ["network"]
]]

                ---@class Aircraft.Radio
                ---@field channels table<number, number>
                ---@field modulations table<number, radio.modulation>
                ---@field channelsNames table<number, string>


                ---@class Aircraft.Payload
                ---@field pylons table<number, Aircraft.Payload.Pylon>|table List of pylons
                ---@field fuel number Amount of fuel
                ---@field flare? number Number of flares
                ---@field ammo_type? number Ammo type
                ---@field chaff? number Number of chaff
                ---@field gun? number Gun amount in %
                ---@field restricted? table

                ---@class Aircraft.Payload.Pylon
                ---@field CLSID string CLSID of the pylon
                ---@field settings? table
            end

            ---Vehicle Group DATA
            do
                ---@class Vehicle_Group_DATA
                ---@field group table<number, Vehicle_Group_DATA_group>

                ---@class Vehicle_Group_DATA_group
                ---@field visible boolean
                ---@field tasks table
                ---@field uncontrollable boolean
                ---@field task string their 'assignmend' ak 'fac' , 'Ground Nothing'
                ---@field taskSelected boolean
                ---@field route Vehicle_Group_DATA_group_route
                ---@field units table<number, Vehicle_Group_DATA_group_units>
                ---@field x number
                ---@field y number
                ---@field name string
                ---@field start_time number

                ---@class Vehicle_Group_DATA_group_route
                ---@field spans table
                ---@field points table<number, Vehicle_Group_DATA_group_route_point>

                ---@class Vehicle_Group_DATA_group_route_point
                ---@field alt number
                ---@field type AI.Task.WaypointType
                ---@field ETA number
                ---@field alt_type AI.Task.AltitudeType
                ---@field formation_template string
                ---@field y number
                ---@field x number
                ---@field ETA_locked boolean
                ---@field speed number
                ---@field action AI.Task.VehicleFormation
                ---@field task Task
                ---@field speed_locked boolean

                ---@class Vehicle_Group_DATA_group_units
                ---@field skill AI.Skill
                ---@field coldAtStart boolean
                ---@field type TypeNames_Ground
                ---@field unitId? number
                ---@field x number
                ---@field y number
                ---@field name string
                ---@field heading number
                ---@field playerCanDrive boolean
            end

            ---Tasks
            do
                ---@alias Task_Aircraft
                ---| Task_attackGroup
                ---| Task_attackUnit
                ---| Task_Bombing
                ---| Task_Stafing
                ---| Task_Carpet_Bombing
                ---| Task_AttackMapObject
                ---| Task_BombingRunway
                ---| Task_Orbit
                ---| Task_Refueling
                ---| Task_follow
                ---| Task_followBigFormation
                ---| Task_Escord
                ---| Task_FAC_AttackGroup
                ---| Task_Recovery_Tanker
                ---| Enroute_Tasks_engageTargets
                ---| Enroute_Tasks_engageTargetsInZone
                ---| Enroute_Tasks_engageGroup
                ---| Enroute_Tasks_engageUnit
                ---| Enroute_Tasks_AWACS
                ---| Enroute_Tasks_Tanker
                ---| Enroute_Tasks_FAC_engageGroup
                ---| Enroute_Tasks_FAC

                ---@alias Task_Aircraft_command
                ---| Commands_Tasks_Script
                ---| Commands_Tasks_SetCallsign
                ---| Commands_Tasks_SetFrequency
                ---| Commands_Tasks_SetFrequencyForUnit
                ---| Commands_Tasks_SwitchWaypoint
                ---| Commands_Tasks_SwitchAction
                ---| Commands_Tasks_SetInvisible
                ---| Commands_Tasks_SetImmortal
                ---| Commands_Tasks_SetUnlimitedFuel
                ---| Commands_Tasks_ActivateBeacon
                ---| Commands_Tasks_DeactivateBeacon
                ---| Commands_Tasks_EPLRS
                ---| Commands_Tasks_Start
                ---| Commands_Tasks_TransmitMessage
                ---| Commands_Tasks_StopTransmission
                ---| Commands_Tasks_SmokeOnOff

                ---@alias Task_Heli
                ---| Task_attackGroup
                ---| Task_attackUnit
                ---| Task_Bombing
                ---| Task_Stafing
                ---| Task_AttackMapObject
                ---| Task_BombingRunway
                ---| Task_Orbit
                ---| Task_land
                ---| Task_follow
                ---| Task_Escord
                ---| Task_Embarking
                ---| Task_FAC_AttackGroup
                ---| Task_disembarkFromTransport
                ---| Task_CargoTransportation
                ---| Task_GroundEscord
                ---| Enroute_Tasks_engageTargets
                ---| Enroute_Tasks_engageTargetsInZone
                ---| Enroute_Tasks_engageGroup
                ---| Enroute_Tasks_engageUnit
                ---| Enroute_Tasks_AWACS
                ---| Enroute_Tasks_Tanker
                ---| Enroute_Tasks_FAC_engageGroup
                ---| Enroute_Tasks_FAC

                ---@alias Task_Heli_command
                ---| Commands_Tasks_Script
                ---| Commands_Tasks_SetCallsign
                ---| Commands_Tasks_SetFrequency
                ---| Commands_Tasks_SetFrequencyForUnit
                ---| Commands_Tasks_SwitchWaypoint
                ---| Commands_Tasks_SwitchAction
                ---| Commands_Tasks_SetInvisible
                ---| Commands_Tasks_SetImmortal
                ---| Commands_Tasks_SetUnlimitedFuel
                ---| Commands_Tasks_ActivateBeacon
                ---| Commands_Tasks_DeactivateBeacon
                ---| Commands_Tasks_EPLRS
                ---| Commands_Tasks_Start
                ---| Commands_Tasks_TransmitMessage
                ---| Commands_Tasks_StopTransmission
                ---| Commands_Tasks_SmokeOnOff

                ---@alias Task_Ground
                ---| Task_Embarking
                ---| Task_FireAtPoint
                ---| Task_Hold
                ---| Task_FAC_AttackGroup
                ---| Task_EmbarkToTransport Infentry only
                ---| Task_disembarkFromTransport
                ---| Task_goToWaypoint
                ---| Enroute_Tasks_EWR
                ---| Enroute_Tasks_FAC_engageGroup
                ---| Enroute_Tasks_FAC

                ---@alias Task_Ground_command
                ---| Commands_Tasks_Script
                ---| Commands_Tasks_SetCallsign
                ---| Commands_Tasks_SetFrequency
                ---| Commands_Tasks_StopRoute
                ---| Commands_Tasks_SwitchAction
                ---| Commands_Tasks_SetInvisible
                ---| Commands_Tasks_SetImmortal
                ---| Commands_Tasks_ActivateBeacon
                ---| Commands_Tasks_DeactivateBeacon
                ---| Commands_Tasks_EPLRS
                ---| Commands_Tasks_TransmitMessage
                ---| Commands_Tasks_StopTransmission

                ---@alias Task_Ship
                ---| Task_FireAtPoint

                ---@alias Task_Ship_command
                ---| Commands_Tasks_Script
                ---| Commands_Tasks_SetInvisible
                ---| Commands_Tasks_SetImmortal
                ---| Commands_Tasks_ActivateBeacon
                ---| Commands_Tasks_DeactivateBeacon
                ---| Commands_Tasks_ActivateICLS
                ---| Commands_Tasks_DeactivateICLS
                ---| Commands_Tasks_EPLRS
                ---| Commands_Tasks_TransmitMessage
                ---| Commands_Tasks_StopTransmission
                ---| Commands_Tasks_ActivateLink4
                ---| Commands_Tasks_DeactivateLink4
                ---| Commands_Tasks_ActivateACLS
                ---| Commands_Tasks_DeactivateACLS
                ---| Commands_Tasks_LoadingShip

                ---@alias Task_type
                ---| 'Nothing'
                ---| 'AFAC'
                ---| 'AWACS'
                ---| 'Antiship Strike'
                ---| 'CAS'
                ---| 'CAP'
                ---| 'Escort'
                ---| 'Fighter Sweep'
                ---| 'Ground Attack'
                ---| 'Intercept'
                ---| 'Pinpoint Strike'
                ---| 'Reconnaissance'
                ---| 'Refueling'
                ---| 'Runway Attack'
                ---| 'SEAD'
                ---| 'Transport'

                ---@alias Task_Wrappers
                ---| Tasks_TaskWrapper_mission
                ---| Tasks_TaskWrapper_ComboTask
                ---| Tasks_TaskWrapper_ControlledTask
                ---| Tasks_TaskWrapper_WrappedAction


                ---@alias Task.Cap
                ---| Task_attackGroup
                ---| Enroute_Tasks_engageTargets
                ---| Enroute_Tasks_engageTargetsInZone
                ---| Enroute_Tasks_engageGroup
                ---| Enroute_Tasks_engageUnit
                ---| Task.ALL

                ---@alias Task.CAS
                ---| Task_attackGroup
                ---| Task_GroundEscord
                ---| Enroute_Tasks_engageTargets
                ---| Enroute_Tasks_engageTargetsInZone
                ---| Enroute_Tasks_engageGroup
                ---| Enroute_Tasks_engageUnit
                ---| Task.ALL

                ---@alias Task.Fighter_Sweep
                ---| Task_attackGroup
                ---| Enroute_Tasks_engageTargets
                ---| Enroute_Tasks_engageTargetsInZone
                ---| Enroute_Tasks_engageGroup
                ---| Enroute_Tasks_engageUnit
                ---| Task.ALL

                ---@alias Task.Intercept
                ---| Task_attackGroup
                ---| Task.ALL

                ---@alias Task.SEAD
                ---| Task_attackGroup
                ---| Task_Escord
                ---| Enroute_Tasks_engageTargets
                ---| Enroute_Tasks_engageTargetsInZone
                ---| Enroute_Tasks_engageGroup
                ---| Enroute_Tasks_engageUnit

                ---@alias Task.AntiShip
                ---| Task_attackGroup
                ---| Enroute_Tasks_engageTargets
                ---| Enroute_Tasks_engageTargetsInZone
                ---| Enroute_Tasks_engageGroup
                ---| Enroute_Tasks_engageUnit
                ---| Task.ALL

                ---@alias Task.Ground_Attack
                ---| Task_Carpet_Bombing
                ---| Task_AttackMapObject
                ---| Task_followBigFormation
                ---| Task_GroundEscord
                ---| Task.ALL

                ---@alias Task.Pinpoint_Strike
                ---| Task_AttackMapObject
                ---| Task.ALL

                ---@alias Task.RunwayAttack
                ---| Task_AttackMapObject
                ---| Task_BombingRunway
                ---| Task.ALL

                ---@alias Task.Escord
                ---| Task_Escord
                ---| Task_GroundEscord
                ---| Task.ALL

                ---@alias Task.Transport
                ---| Task_Embarking
                ---| Task_disembarkFromTransport
                ---| Task.ALL

                ---@alias Task.AFAC
                ---| Task_FAC_AttackGroup
                ---| Enroute_Tasks_engageTargets
                ---| Enroute_Tasks_engageTargetsInZone
                ---| Enroute_Tasks_engageGroup
                ---| Enroute_Tasks_engageUnit
                ---| Enroute_Tasks_FAC_engageGroup
                ---| Enroute_Tasks_FAC
                ---| Task.ALL

                ---@alias Task.Tanker
                ---| Task_Recovery_Tanker
                ---| Enroute_Tasks_Tanker
                ---| Task.ALL

                ---@alias Task.AWACS
                ---| Enroute_Tasks_AWACS
                ---| Task.ALL


                ---@alias Task.ALL
                ---| Task_attackUnit
                ---| Task_Bombing
                ---| Task_Stafing
                ---| Task_Refueling
                ---| Task_land
                ---| Task_follow
                ---| Task_FireAtPoint
                ---| Task_Hold
                ---| Task_EmbarkToTransport
                ---| Task_CargoTransportation
                ---| Task_goToWaypoint
                ---| Enroute_Tasks_EWR




                ---@alias Task
                ---| Task_Wrappers
                ---| Task.Cap
                ---| Task.CAS
                ---| Task.Fighter_Sweep
                ---| Task.Intercept
                ---| Task.SEAD
                ---| Task.AntiShip
                ---| Task.Ground_Attack
                ---| Task.Pinpoint_Strike
                ---| Task.RunwayAttack
                ---| Task.Escord
                ---| Task.Transport
                ---| Task.AFAC
                ---| Task.Tanker
                ---| Task.AWACS
                ---| Task_Commands


                ---@alias Task_Commands
                ---| Commands_Tasks_Script
                ---| Commands_Tasks_SetCallsign
                ---| Commands_Tasks_SetFrequency
                ---| Commands_Tasks_SetFrequencyForUnit
                ---| Commands_Tasks_SwitchWaypoint
                ---| Commands_Tasks_StopRoute
                ---| Commands_Tasks_SwitchAction
                ---| Commands_Tasks_SetInvisible
                ---| Commands_Tasks_SetImmortal
                ---| Commands_Tasks_SetUnlimitedFuel
                ---| Commands_Tasks_ActivateBeacon
                ---| Commands_Tasks_DeactivateBeacon
                ---| Commands_Tasks_ActivateICLS
                ---| Commands_Tasks_DeactivateICLS
                ---| Commands_Tasks_EPLRS
                ---| Commands_Tasks_Start
                ---| Commands_Tasks_TransmitMessage
                ---| Commands_Tasks_StopTransmission
                ---| Commands_Tasks_SmokeOnOff
                ---| Commands_Tasks_ActivateLink4
                ---| Commands_Tasks_DeactivateLink4
                ---| Commands_Tasks_ActivateACLS
                ---| Commands_Tasks_DeactivateACLS
                ---| Commands_Tasks_LoadingShip
                ---| Commands_Tasks_Set_Option

                --Task wrapper
                do
                    --Tasks_TaskWrapper_mission
                    do
                        ---The mission task is a collection of waypoints that are assigned to a group. When you create a group in the mission editor and place a route, you are created its mission task. For ground vehicles and ships the mission task is how you can more directly control where ground/ship forces are going.
                        ---https://wiki.hoggitworld.com/view/DCS_task_mission
                        ---@class Tasks_TaskWrapper_mission
                        ---@field id 'Mission' Mission identifier
                        ---@field params Mission.Task_Params_Task_ Parameters for the mission

                        ---@class Mission.Task_Params_Task_
                        ---@field airborne boolean Whether the mission involves airborne units
                        ---@field route Mission.Route Route information for the mission

                        ---@class Mission.Route
                        ---@field points table<number, Mission.Route.Point> List of waypoints

                        ---@class Mission.Route.Point
                        ---@field type AI.Task.WaypointType Type of the waypoint (e.g., TakeOff, Landing)
                        ---@field airdromeId? number ID of the airbase (only for aircraft)
                        ---@field timeReFuAr? number Duration in minutes for a refueling or repair waypoint (only for aircraft)
                        ---@field helipadId? number ID of the helipad (only for helicopters and aircraft)
                        ---@field linkUnit? number ID of the unit to link to (only for helicopters and aircraft)
                        ---@field action AI.Task.TurnMethod Action to be taken at the waypoint (e.g., Turn, Direct)
                        ---@field x number X coordinate of the waypoint
                        ---@field y number Y coordinate of the waypoint
                        ---@field alt number Altitude of the waypoint
                        ---@field alt_type? AI.Task.AltitudeType Type of altitude measurement (e.g., BARO, AGL)
                        ---@field speed number Speed in meters per second
                        ---@field speed_locked? boolean Whether the speed is fixed
                        ---@field ETA? number Estimated Time of Arrival at the waypoint
                        ---@field ETA_locked? boolean Whether the ETA is fixed
                        ---@field name string Name or description of the waypoint
                        ---@field task? Task Task or command assigned to the waypoint
                    end

                    --Tasks_TaskWrapper_ComboTask
                    do
                        ---A list of tasks indexed numerically for when the task will be executed in accordance with the AI task queue rules. This is the task that the DCS mission editor will default to using for groups placed in the editor.
                        ---https://wiki.hoggitworld.com/view/DCS_task_comboTask
                        ---@class Tasks_TaskWrapper_ComboTask
                        ---@field id 'ComboTask' string Identifier for the task type
                        ---@field params Tasks_TaskWrapper_ComboTask_Tasks List of tasks to be executed sequentially

                        ---@class Tasks_TaskWrapper_ComboTask_Tasks
                        ---@field tasks table<number, Task>
                    end

                    --Tasks_TaskWrapper_ControlledTask
                    do
                        ---A controlled task is a task that has start and/or stop conditions that will be used as a condition to start or stop the task. Start conditions are executed only once when the task is reached in the task queue. If the conditions are not met the task will be skipped. Stop Conditions are executed at a high rate Can be used with any task in DCS. Note that options and commands do *NOT* have stopConditions. These tasks are executed immediately and take "no time" to run.
                        ---https://wiki.hoggitworld.com/view/DCS_task_controlledTask
                        ---@class Tasks_TaskWrapper_ControlledTask
                        ---@field id 'ControlledTask' string Identifier for the task type
                        ---@field params table<string, any> Parameters for the controlled task
                        ---@field task Task The task to be executed
                        ---@field condition table<number, string|Tasks_TaskWrapper_ControlledTask.params> Table of start conditions required for the task to execute
                        ---@field stopCondition table<number, string|Tasks_TaskWrapper_ControlledTask.params> Table of stop conditions that will end the task once met

                        --- Optional parameters for `params`


                        ---@class Tasks_TaskWrapper_ControlledTask.params
                        ---@field time? number Time in seconds since mission start for a start condition
                        ---@field condition? string Lua code executed for start condition (requires `return true` to execute)
                        ---@field userFlag? (string|number) User flag to check for start condition
                        ---@field userFlagValue? boolean Required if checking if the flag is false
                        ---@field probability? number Chance of the task executing (0-100, only checked once for start condition)
                        ---@field lastWaypoint? number Last waypoint that, if reached, will stop the task
                        ---@field duration? number Duration in seconds for which the task will run (stop condition)
                    end

                    --Tasks_TaskWrapper_WrappedAction
                    do
                        --- Tasking Type: Main task
                        --- For: Airplanes, Helicopters, Ships, Ground Vehicles
                        --- Available Under: All
                        --- Description: Functions as a wrapper for setting commands and options as a task within a mission, comboTask, or controlledTask. This task allows you to encapsulate commands and options within a single task structure.
                        --- https://wiki.hoggitworld.com/view/DCS_task_wrappedAction
                        ---@class Tasks_TaskWrapper_WrappedAction
                        ---@field id 'WrappedAction' The identifier for the task, should be 'WrappedAction'.
                        ---@field params Tasks_TaskWrapper_WrappedAction.params_command Configuration parameters for the WrappedAction task.

                        ---@class Tasks_TaskWrapper_WrappedAction.params_command
                        ---@field action table<Task_Commands>
                    end
                end

                --Tasks
                do
                    --Task_attackGroup
                    do
                        ---For: Airplanes, Helicopters
                        ---Available Under: CAS, CAP, Fighter Sweep, Intercept, SEAD, AntiShip
                        ---Description: Assigns the controlled group to attack a specified group. The targeted group becomes automatically detected for the controlled group.
                        ---https://wiki.hoggitworld.com/view/DCS_task_attackGroup
                        ---@class Task_attackGroup
                        ---@field id 'AttackGroup' The identifier for the task, should be 'AttackGroup'.
                        ---@field params Task_Params_AttackGroup Configuration parameters for the AttackGroup task.

                        ---@class Task_Params_AttackGroup
                        ---@field groupId number The ID of the target group (required).
                        ---@field weaponType? Weapon.flag The type of weapon to be used (optional).
                        ---@field expend? AI.Task.WeaponExpend The weapon expend type (optional).
                        ---@field directionEnabled? boolean If true, specifies direction; otherwise, false or nil (optional).
                        ---@field direction? number The direction in degrees for the attack (optional).
                        ---@field altitudeEnabled? boolean If true, specifies altitude; otherwise, false or nil (optional).
                        ---@field altitude? number The altitude in meters for the attack (optional).
                        ---@field attackQtyLimit? boolean If true, limits the number of attacks; otherwise, false or nil (optional).
                        ---@field attackQty? number The number of attacks if attackQtyLimit is true (optional).
                    end

                    --Task_attackUnit
                    do
                        --- For: Airplanes, Helicopters
                        --- Description: Assigns the controlled group to attack a specified unit. The targeted unit becomes automatically detected for the controlled group.
                        ---https://wiki.hoggitworld.com/view/DCS_task_attackUnit
                        ---@class Task_attackUnit
                        ---@field id 'AttackUnit' The identifier for the task, should be 'AttackUnit'.
                        ---@field params Task_Params_AttackUnit Configuration parameters for the AttackUnit task.

                        ---@class Task_Params_AttackUnit
                        ---@field unitId number The ID of the target unit (required).
                        ---@field weaponType? number The type of weapon to be used (optional).
                        ---@field expend? AI.Task.WeaponExpend The weapon expend type, defining how much munitions the AI will expend per attack run (optional).
                        ---@field direction? number The direction in degrees for the attack (optional).
                        ---@field attackQtyLimit? boolean If true, limits the number of attacks; otherwise, false or nil (optional).
                        ---@field attackQty? number The number of attacks if attackQtyLimit is true (optional).
                        ---@field groupAttack? boolean If true, each aircraft in the group will attack the unit; otherwise, only a single aircraft will attack (optional).
                    end


                    --Task_Bombing
                    do
                        --- For: Airplanes, Helicopters
                        --- Description: Assigns a point on the ground for which the AI will attack. Best used for discriminant carpet bombing of a target or having a GBU hit a specific point on the map.
                        ---https://wiki.hoggitworld.com/view/DCS_task_bombing
                        ---@class Task_Bombing
                        ---@field id 'Bombing' The identifier for the task, should be 'Bombing'.
                        ---@field params Task_Params_Bombing Configuration parameters for the Bombing task.

                        ---@class Task_Params_Bombing
                        ---@field point vec2 The point on the ground to be attacked. Can also be specified as x and y values directly in the params table (required).
                        ---@field weaponType? number The type of weapon to be used (optional).
                        ---@field expend? AI.Task.WeaponExpend The weapon expend type, defining how much munitions the AI will expend per attack run (optional).
                        ---@field attackQty? number The number of attacks if `attackQtyLimit` is true (optional).
                        ---@field attackQtyLimit? boolean If true, limits the number of attacks; otherwise, false or nil (optional).
                        ---@field direction? number The direction in degrees for the attack (optional).
                        ---@field groupAttack? boolean If true, each aircraft in the group will attack the point; otherwise, only a single aircraft will attack (optional).
                        ---@field altitude? number The altitude in meters at which to engage (optional).
                        ---@field altitudeEnabled? boolean If true, specifies that the altitude check applies; otherwise, false or nil (optional).
                        ---@field attackType? string The attack profile. Valid entries: "Dive" for dive bombing (optional).
                    end

                    --Task_Stafing
                    do
                        --- For: Airplanes, Helicopters
                        --- Description: Assigns a point on the ground for which the AI will do a strafing run with guns or rockets.
                        ---https://wiki.hoggitworld.com/view/DCS_task_strafing
                        ---@class Task_Stafing
                        ---@field id 'Strafing' The identifier for the task, should be 'Strafing'.
                        ---@field params Task_Params_Strafing Configuration parameters for the Strafing task.

                        ---@class Task_Params_Strafing
                        ---@field point vec2 The point on the ground to be strafed. Can also be specified as x and y values directly in the params table (required).
                        ---@field weaponType? number The type of weapon to be used (optional).
                        ---@field expend? AI.Task.WeaponExpend The weapon expend type, defining how much munitions the AI will expend per attack run (optional).
                        ---@field attackQty? number The number of attacks if `attackQtyLimit` is true (optional).
                        ---@field attackQtyLimit? boolean If true, limits the number of attacks; otherwise, false or nil (optional).
                        ---@field direction? number The direction in degrees for the attack (optional).
                        ---@field directionEnabled? boolean If true, specifies that direction is enabled for the attack; otherwise, false or nil (optional).
                        ---@field groupAttack? boolean If true, each aircraft in the group will attack the point; otherwise, only a single aircraft will attack (optional).
                        ---@field length? number The total length of the strafing target (optional).
                    end

                    --Task_Carpet_Bombing
                    do
                        --- Task: CarpetBombing
                        --- For: Airplanes
                        --- Available Under: Ground Attack
                        --- Description: Assigns a point on the ground for which the AI will attack. Similar to the bombing task, but with more control over the target area. Can be combined with the follow big formation task for all participating aircraft to simultaneously bomb a target. In the mission editor, this task is called "WW2 Carpet Bombing," but it is not limited to WW2 aircraft. Attack direction is assumed to be from the point where the task is assigned.
                        --- https://wiki.hoggitworld.com/view/DCS_task_carpetBombing
                        ---@class Task_Carpet_Bombing
                        ---@field id 'CarpetBombing' The identifier for the task, should be 'CarpetBombing'.
                        ---@field params Task_Params_CarpetBombing Configuration parameters for the CarpetBombing task.

                        ---@class Task_Params_CarpetBombing
                        ---@field attackType string The type of attack to be performed. For this task, it should be 'Carpet' (required).
                        ---@field carpetLength number The distance in meters the pattern should cover. This value will scale the time between each bomb drop (required).
                        ---@field point vec2 The point on the ground to be bombed. Can also be specified as x and y values directly in the params table (required).
                        ---@field weaponType? number The type of weapon to be used (optional).
                        ---@field expend? AI.Task.WeaponExpend The weapon expend type, defining how much munitions the AI will expend per attack run (optional).
                        ---@field attackQty? number The number of attacks if `attackQtyLimit` is true (optional).
                        ---@field attackQtyLimit? boolean If true, limits the number of attacks; otherwise, false or nil (optional).
                        ---@field groupAttack? boolean If true, each aircraft in the group will attack the point; otherwise, only a single aircraft will attack (optional).
                        ---@field altitude? number The altitude in meters at which to engage (optional).
                        ---@field altitudeEnabled? boolean If true, specifies that the altitude check applies; otherwise, false or nil (optional).
                    end

                    --Task_AttackMapObject
                    do
                        --- For: Airplanes, Helicopters
                        --- Available Under: Ground Attack, Pinpoint Strike, RunwayAttack
                        --- Description: Assigns the nearest world object to the point for AI to attack.
                        --- https://wiki.hoggitworld.com/view/DCS_task_attackMapObject
                        ---@class Task_AttackMapObject
                        ---@field id 'AttackMapObject' The identifier for the task, should be 'AttackMapObject'.
                        ---@field params Task_Params_AttackMapObject Configuration parameters for the AttackMapObject task.

                        ---@class Task_Params_AttackMapObject
                        ---@field point vec2 The point on the ground where the nearest world object will be attacked (required).
                        ---@field weaponType? number The type of weapon to be used (optional).
                        ---@field expend? AI.Task.WeaponExpend The weapon expend type, defining how much munitions the AI will expend per attack run (optional).
                        ---@field attackQty? number The number of attacks if `attackQtyLimit` is true (optional).
                        ---@field attackQtyLimit? boolean If true, limits the number of attacks to `attackQty`; otherwise, false or nil (optional).
                        ---@field direction? number The direction in degrees for the attack (optional).
                        ---@field groupAttack? boolean If true, each aircraft in the group will attack the target; otherwise, only one aircraft will attack (optional).
                    end

                    --Task_BombingRunway
                    do
                        --- For: Airplanes, Helicopters
                        --- Available Under: Runway Attack
                        --- Description: Assigns the AI a task to bomb an airbase's runway. By default, the AI will line up along the length of the runway and drop its payload.
                        ---https://wiki.hoggitworld.com/view/DCS_task_bombingRunway
                        ---@class Task_BombingRunway
                        ---@field id 'BombingRunway' The identifier for the task, should be 'BombingRunway'.
                        ---@field params Task_Params_BombingRunway Configuration parameters for the BombingRunway task.

                        ---@class Task_Params_BombingRunway
                        ---@field runwayId number The index of the airbase runway to be bombed (required).
                        ---@field weaponType? number The type of weapon to be used (optional).
                        ---@field expend? AI.Task.WeaponExpend The weapon expend type, defining how much munitions the AI will expend per attack run (optional).
                        ---@field attackQty? number The number of attacks if `attackQtyLimit` is true (optional).
                        ---@field attackQtyLimit? boolean If true, limits the number of attacks to `attackQty`; otherwise, false or nil (optional).
                        ---@field direction? number If provided, the AI will attack from this azimuth and ignore bombing along the length of the runway (optional).
                        ---@field groupAttack? boolean If true, each aircraft in the group will attack the runway; otherwise, only one aircraft will attack (optional).
                    end

                    --Task_Orbit
                    do
                        --- For: Airplanes, Helicopters
                        --- Available Under: All aircraft tasks
                        --- Description: Orders an aircraft group to orbit at the waypoint.
                        ---https://wiki.hoggitworld.com/view/DCS_task_orbit
                        ---@class Task_Orbit
                        ---@field id 'Orbit' The identifier for the task, should be 'Orbit'.
                        ---@field params Task_Params_Orbit Configuration parameters for the Orbit task.

                        ---@class Task_Params_Orbit
                        ---@field pattern AI.Task.OrbitPattern The type of orbit pattern the AI will execute (required).
                        ---@field point? vec2 The origin point for the orbit. If not defined, the position of the current waypoint will be used (optional).
                        ---@field point2? vec2 The second point for a Race-Track orbit pattern. If not defined, the next waypoint position will be used (optional).
                        ---@field speed? number The speed in meters per second at which the AI will orbit. If not defined, the AI will orbit at 1.5 times their stall speed (optional).
                        ---@field altitude? number The altitude in meters at which the AI will orbit. If not defined, the altitude of the current waypoint will be used (optional).
                    end

                    --Task_Refueling
                    do
                        --- For: Airplanes
                        --- Available Under: Any aircraft type capable of refueling.
                        --- Description: Assigns the controlled aircraft to refuel from the nearest airborne tanker aircraft. Currently, helicopters can't refuel in mid-air, but this may change in the future.
                        ---https://wiki.hoggitworld.com/view/DCS_task_refueling
                        ---@class Task_Refueling
                        ---@field id 'Refueling' The identifier for the task, should be 'Refueling'.
                        ---@field params table Configuration parameters for the Refueling task (empty table, as no parameters are required or optional).
                    end

                    --Task_land
                    do
                        --- For: Helicopters
                        --- Description: Assigns the aircraft to land at a specific point on the ground. Useful for troop transport with helicopters. Currently only applies to Helicopters. For landing at airbases, FARPs, or ships, see the mission task page.
                        ---https://wiki.hoggitworld.com/view/DCS_task_land
                        ---@class Task_land
                        ---@field id 'Land' The identifier for the task, should be 'Land'.
                        ---@field params Task_Params_Land Configuration parameters for the Land task.

                        ---@class Task_Params_Land
                        ---@field point vec2 The point on the ground where the AI will attempt to land (required).
                        ---@field durationFlag? boolean If true, the AI will remain on the ground for a limited period (optional).
                        ---@field duration? number The duration in seconds that the AI will be landed before taking off. `durationFlag` must be true for this to apply (optional).
                    end

                    --Task_follow
                    do
                        --- Available Under: All air tasks
                        --- Description: Controlled aircraft will follow the assigned group along their route in formation. If the assigned group is on the ground, the AI will orbit overhead. If assigned to a flight lead or group, its wingmen will stay in their specified formation.
                        ---https://wiki.hoggitworld.com/view/DCS_task_follow
                        ---@class Task_follow
                        ---@field id 'Follow' The identifier for the task, should be 'Follow'.
                        ---@field params Task_Params_Follow Configuration parameters for the Follow task.

                        ---@class Task_Params_Follow
                        ---@field groupId number The unique groupId of the group to be followed (required).
                        ---@field pos vec3 The relative position (in 3D space) that the controlled flight will form up on (required).
                        ---@field lastWptIndexFlag? boolean If true (default: true), the AI will follow the group until it reaches a specified waypoint (optional).
                        ---@field lastWptIndex? number The waypoint index at which the following group will stop its task (default: -1). Must be set if `lastWptIndexFlag` is set to false; otherwise, the AI will immediately abandon the task (optional).
                    end

                    --Task_followBigFormation
                    do
                        --- For: Airplanes
                        --- Available Under: Ground Attack
                        --- Description: Advanced version of the follow task. It is primarily used with the Carpet Bombing task to allow large bomber formations to simultaneously bomb a given target. In the mission editor, this task also provides tools for placing units in historic bomber formations. This task is labeled as "WW2: Big Formation" in the editor but is functional with any aircraft assigned the ground attack task.
                        ---https://wiki.hoggitworld.com/view/DCS_task_followBigFormation
                        ---@class Task_followBigFormation
                        ---@field id 'FollowBigFormation' The identifier for the task, should be 'FollowBigFormation'.
                        ---@field params Task_Params_FollowBigFormation Configuration parameters for the Follow Big Formation task.

                        ---@class Task_Params_FollowBigFormation
                        ---@field groupId number The unique groupId of the group to be followed (required).
                        ---@field pos vec3 The relative position (in 3D space) that the controlled flight will form up on (required).
                        ---@field lastWptIndexFlag? boolean If true, the AI will follow the group until it reaches a specified waypoint (optional).
                        ---@field lastWptIndex? number The waypoint index at which the following group will stop its task. Must be set if `lastWptIndexFlag` is set to false; otherwise, the AI will immediately abandon the task (optional).
                    end

                    --Task_Escord
                    do
                        --- For: Airplanes, Helicopters
                        --- Available Under: Escort, SEAD
                        --- Description: The controlled aircraft will follow the assigned group along their route in formation and engage threats within a defined distance from the followed group. If the assigned group is on the ground, the AI will orbit overhead. If assigned to a flight lead or group, its wingmen will stay in their specified formation.
                        ---https://wiki.hoggitworld.com/view/DCS_task_escort
                        ---@class Task_Escord
                        ---@field id 'Escort' The identifier for the task, should be 'Escort'.
                        ---@field params Task_Params_Escort Configuration parameters for the Escort task.

                        ---@class Task_Params_Escort
                        ---@field groupId number The unique groupId of the group to be escorted (required).
                        ---@field pos vec3 The relative position (in 3D space) that the controlled flight will form up on (required).
                        ---@field engagementDistMax number The maximum distance within which the AI will engage threats from the escorted group (required).
                        ---@field targetTypes table<Attributes> An array of object attributes that the AI will engage (required).
                        ---@field lastWptIndexFlag? boolean If true, the AI will follow the group until it reaches a specified waypoint (optional, default is true).
                        ---@field lastWptIndex? number The waypoint index at which the following group will stop its task. Must be set if lastWptIndexFlag is set to false (optional, default is -1).
                    end

                    --Task_Embarking
                    do
                        --- For: Helicopters, Ground Vehicles
                        --- Available Under: Transport
                        --- Description: Used in conjunction with the EmbarkToTransport task for a ground infantry group, the controlled helicopter flight will land at the specified coordinates, pick up boarding troops, and transport them to that group's DisembarkFromTransport task.
                        ---https://wiki.hoggitworld.com/view/DCS_task_embarking
                        ---@class Task_Embarking
                        ---@field id 'Embarking' The identifier for the task, should be 'Embarking'.
                        ---@field params Task_Params_Embarking Configuration parameters for the Embarking task.

                        ---@class Task_Params_Embarking
                        ---@field x number The x coordinate of the landing point (required).
                        ---@field y number The y coordinate of the landing point (required).
                        ---@field groupsForEmbarking table<number, number> An array of group IDs for the infantry groups set to board the helicopter flight (required).
                        ---@field duration? number Defines the maximum time (in seconds) the helicopter flight will wait for troops to begin the boarding process (optional).
                        ---@field distributionFlag? boolean If true, defines that specific groups need to get into specific helicopters (optional).
                        ---@field distribution? table An array identifying the groups that need to board specific helicopters (optional).
                    end

                    --Task_FireAtPoint
                    do
                        --- Available Under: Ground Nothing, Ship Nothing (default and unseen tasks for vehicles and ships)
                        --- Description: Assigns a point on the ground for AI to shoot at. Commonly used with artillery to shell a target. Can also simulate a firefight by making AI shoot in the general direction of other AI but with low accuracy. This is useful for causing AI to expend their ammunition.
                        --- Note: It takes approximately 3 minutes for artillery positions to prepare and fire at the specified target.
                        ---https://wiki.hoggitworld.com/view/DCS_task_fireAtPoint
                        ---@class Task_FireAtPoint
                        ---@field id 'FireAtPoint' The identifier for the task, should be 'FireAtPoint'.
                        ---@field params Task_Params_FireAtPoint Configuration parameters for the FireAtPoint task.

                        ---@class Task_Params_FireAtPoint
                        ---@field x number The vec2 coordinate or x and y values defining where the AI will aim (required).
                        ---@field y number The vec2 coordinate or x and y values defining where the AI will aim (required).
                        ---@field templateId string unkown
                        ---@field zoneRadius? number Optional radius in meters defining the area AI will attempt to hit.
                        ---@field expendQty? number Specifies the number of shots to be fired (optional).
                        ---@field expendQtyEnabled? boolean If true, the `expendQty` value will be used (optional).
                        ---@field weaponType? Weapon.flag Specifies the weapon type to be used for the task (optional).
                        ---@field altitude? number Specifies the altitude at which the AI will aim (optional).
                        ---@field alt_type? number Determines whether the altitude is defined by AGL (1) or MSL (0) (optional).
                        ---@field counterbattaryRadius? number For ground groups only: Specifies the radius in meters from the group leader within which the group will move in random directions after completing the FireAtPoint task (optional).
                    end

                    --Task_Hold
                    do
                        --- For: Ground vehicles
                        --- Available Under: Ground Nothing (default and unseen tasks for vehicles)
                        --- Description: Stops a ground force in its current position.
                        ---https://wiki.hoggitworld.com/view/DCS_task_hold
                        ---@class Task_Hold
                        ---@field id 'Hold' The identifier for the task, should be 'Hold'.
                        ---@field params table Configuration parameters for the Hold task. (empty)
                    end

                    --Task_FAC_AttackGroup
                    do
                        --- For: Airplanes, Helicopters, Ground Vehicles
                        --- Available Under: AFAC, Ground Nothing
                        --- Description: Assigns the controlled group to act as a Forward Air Controller or JTAC in attacking the specified group. This task adds the group to the JTAC radio menu and interacts with a player to destroy the target.
                        ---https://wiki.hoggitworld.com/view/DCS_task_fac_AttackGroup
                        ---@class Task_FAC_AttackGroup
                        ---@field id 'FAC_AttackGroup' The identifier for the task, should be 'FAC_AttackGroup'.
                        ---@field params Task_Params_FAC_AttackGroup Configuration parameters for the FAC_AttackGroup task.

                        ---@class Task_Params_FAC_AttackGroup
                        ---@field groupId number The ID of the group to be assigned by the JTAC. (Required)
                        ---@field weaponType? Weapon.flag The weapon type enumerator that defines the preferred weapon of choice. (Optional)
                        ---@field designation? AI.Task.Designation Enumerator defining the preferred designation to be used. (Optional)
                        ---@field datalink? boolean Boolean value to determine if the JTAC will send the 9-line via SADL. Defaults to true. (Optional)
                        ---@field frequency? number The frequency for JTAC communication. (Optional)
                        ---@field modulation? radio.modulation Enumerator defining the modulation type for radio communication. (Optional)
                        ---@field callname? number The callsign ID for the JTAC. (Optional)
                        ---@field number? number The callsign number for the JTAC. (Optional)
                    end

                    --Task_EmbarkToTransport
                    do
                        --- For: Ground Units (Infantry Only)
                        --- Available Under: Infantry
                        --- Description: Used in conjunction with the embarking task for a transport helicopter group. The ground units will move to the specified location and wait to be picked up by a helicopter. The helicopter will then fly them to their dropoff point defined by another task for the ground forces; DisembarkFromTransport task.
                        --- https://wiki.hoggitworld.com/view/DCS_task_embarkToTransport
                        ---@class Task_EmbarkToTransport
                        ---@field id 'EmbarkToTransport' The identifier for the task, should be 'EmbarkToTransport'.
                        ---@field params Task_Params_EmbarkToTransport Configuration parameters for the EmbarkToTransport task.

                        ---@class Task_Params_EmbarkToTransport
                        ---@field x number The x-coordinate of the point where AI expects to be picked up. (Required)
                        ---@field y number The y-coordinate of the point where AI expects to be picked up. (Required)
                        ---@field zoneRadius? number Radius around the pickup point where the ground units will wait. (Optional)
                    end

                    --Task_disembarkFromTransport
                    do
                        --- For: Helicopters, Ground Vehicles
                        --- Available Under: Transport
                        --- Description: Specifies the location where an infantry group, transported by helicopters, will be unloaded. Used in conjunction with the embarking task.
                        ---https://wiki.hoggitworld.com/view/DCS_task_disembarkFromTransport
                        ---@class Task_disembarkFromTransport
                        ---@field id 'DisembarkFromTransport' The identifier for the task, should be 'DisembarkFromTransport'.
                        ---@field params Task_Params_DisembarkFromTransport Configuration parameters for the DisembarkFromTransport task.

                        ---@class Task_Params_DisembarkFromTransport
                        ---@field x number The x-coordinate of the point where the AI will be dropped off. (Required)
                        ---@field y number The y-coordinate of the point where the AI will be dropped off. (Required)
                        ---@field zoneRadius? number Radius around the drop-off point where the infantry group will disembark. (Optional)
                    end

                    --Task_CargoTransportation
                    do
                        --- For: Helicopters
                        --- Available Under: Helicopters
                        --- Description: Allows a transport helicopter to access the "All Cargo" radio item, enabling the selection of cargo containers placed on the map. When a container is selected, a red smoke marker is spawned, and cargo lifting cues can be enabled to guide the helicopter into position for attaching the cargo.
                        ---https://wiki.hoggitworld.com/view/DCS_task_cargoTransportation
                        ---@class Task_CargoTransportation
                        ---@field id 'CargoTransportation' The identifier for the task, should be 'CargoTransportation'.
                        ---@field params Task_Params_CargoTransportation Configuration parameters for the CargoTransportation task.

                        ---@class Task_Params_CargoTransportation
                        ---@field groupId? number The ID of the static object representing the cargo container. (Optional)
                        ---@field zoneId? number The ID of a trigger zone. (Optional)
                    end

                    --Task_goToWaypoint
                    do
                        --- Available Under: All task types
                        --- Description: Changes the active leg of a route for ground units. This allows for more complex patrol patterns and looped routes. If the task is part of a mission task, any task assigned at a waypoint will be repeated each time the group passes that waypoint. For example, a "FireAtPoint" task at waypoint 2 will be executed each time the group reaches that waypoint.
                        ---https://wiki.hoggitworld.com/view/DCS_task_goToWaypoint
                        ---@class Task_goToWaypoint
                        ---@field id 'goToWaypoint' The identifier for the task, should be 'goToWaypoint'.
                        ---@field params Task_Params_goToWaypoint Configuration parameters for the goToWaypoint task.

                        ---@class Task_Params_goToWaypoint
                        ---@field fromWaypointIndex number The waypoint index from which the AI will start moving.
                        ---@field goToWaypointIndex number The waypoint index where the AI will move to.
                    end

                    --Task_GroundEscord
                    do
                        --- For: Helicopters
                        --- Available Under: CAS, Escort, Ground Attack
                        --- Description: The assigned helicopter group will orbit above the assigned ground group at a low altitude. The helicopters will engage any valid detected targets. If multiple helicopters are in the group, they will be distributed throughout the orbit. The orbit pattern involves flying back and forth.
                        ---https://wiki.hoggitworld.com/view/DCS_task_groundEscort
                        ---@class Task_GroundEscord
                        ---@field id 'GroundEscort' The identifier for the task, should be 'GroundEscort'.
                        ---@field params Task_Params_GroundEscort Configuration parameters for the GroundEscort task.

                        ---@class Task_Params_GroundEscort
                        ---@field groupId number The unique ID of the ground group that is being escorted.
                        ---@field engagementDistMax number Defines the length of the orbit around the ground group. Helicopters will fly up to this distance before returning to the escorted group.
                        ---@field lastWptIndexFlag boolean (Default: True) If true, the AI will follow the group until it reaches a specified waypoint.
                        ---@field lastWptIndex number (Default: -1) Identifies the waypoint at which the escorting helicopters will stop their task. Must be set if `lastWptIndexFlag` is not false.
                        ---@field targetTypes table<Attributes> An array of object attributes which the AI will engage.
                        ---@field lastWptIndexFlagChangedManually? boolean (Optional) Possibly indicates if the `lastWptIndexFlag` was manually changed. Its exact purpose is unclear, but it is set to true in the mission editor.
                    end

                    --Task_Recovery_Tanker
                    do
                        --- For: Airplanes
                        --- Available Under: Tanker
                        --- Description: Assigns the aircraft to follow a naval group and perform a racetrack orbit along the current heading of the fleet at the specified altitude and speed.
                        --- https://wiki.hoggitworld.com/view/DCS_task_RecoveryTanker
                        ---@class Task_Recovery_Tanker
                        ---@field id 'RecoveryTanker' The identifier for the task, should be 'RecoveryTanker'.
                        ---@field params Task_Params_RecoveryTanker Configuration parameters for the RecoveryTanker task.

                        ---@class Task_Params_RecoveryTanker
                        ---@field groupId number The unique ID of the naval group that the tanker will follow.
                        ---@field speed number The speed of the tanker in meters per second.
                        ---@field altitude number The altitude at which the tanker orbits, in meters.
                        ---@field lastWptIndexFlag? boolean (Optional) If true, the task will end when the naval group reaches the waypoint specified by `lastWptIndex`. Required if `lastWptIndex` is to be used.
                        ---@field lastWptIndex? number (Optional) The waypoint index of the naval group. When this waypoint is reached, the recovery tanker will end the task. Must be set if `lastWptIndexFlag` is true.
                    end
                end

                --Enroute_Tasks
                do
                    --Enroute_Tasks_engageTargets
                    do
                        --- For: Airplanes, Helicopters
                        --- Available Under: CAP, CAS, SEAD, Anti-ship, Fighter Sweep, AFAC
                        --- Description: Assigns the controlled group to engage targets that have specific attributes. The group will only engage targets that are detected and match the provided attributes.
                        --- https://wiki.hoggitworld.com/view/DCS_task_engageTargets
                        ---@class Enroute_Tasks_engageTargets
                        ---@field id 'EngageTargets' The identifier for the task, should be 'EngageTargets'.
                        ---@field params Taks_Params_EngageTargets Configuration parameters for the engageTargets task.

                        ---@class Taks_Params_EngageTargets
                        ---@field maxDist number (Optional) The maximum distance in meters from their route that the group will deviate to engage a target.
                        ---@field maxDistEnabled boolean (Optional) Required to be true if `maxDist` is used. Determines whether `maxDist` should be checked.
                        ---@field targetTypes table<Attributes> An array of attribute names defining valid targets for engagement.
                        ---@field priority number (Optional) The priority of the task. Lower values indicate higher priority. Defaults to 0.
                    end

                    --Enroute_Tasks_engageTargetsInZone
                    do
                        --- For: Airplanes, Helicopters
                        --- Available Under: CAP, CAS, SEAD, Anti-ship, Fighter Sweep, AFAC
                        --- Description: Assigns the controlled group to engage targets within a specified zone that have a specific attribute. The group will only engage targets detected within this zone.
                        ---https://wiki.hoggitworld.com/view/DCS_task_engageTargetsInZone
                        ---@class Enroute_Tasks_engageTargetsInZone
                        ---@field id 'EngageTargetsInZone' The identifier for the task, should be 'EngageTargetsInZone'.
                        ---@field params Taks_Params_EngageTargetsInZone Configuration parameters for the engageTargetsInZone task.

                        ---@class Taks_Params_EngageTargetsInZone
                        ---@field point vec2 The center point of the zone where the group will engage targets.
                        ---@field zoneRadius number The radius in meters defining the size of the engagement zone.
                        ---@field targetTypes table<string> An array of attribute names defining valid targets for engagement.
                        ---@field priority number (Optional) The priority of the task. Lower values indicate higher priority. Defaults to 0.
                    end

                    --Enroute_Tasks_engageGroup
                    do
                        --- For: Airplanes, Helicopters
                        --- Available Under: CAP, CAS, SEAD, Anti-ship, Fighter Sweep, AFAC
                        --- Description: Assigns the controlled group to search for and engage a specific group. The target must be detected for the AI to engage it.
                        ---https://wiki.hoggitworld.com/view/DCS_task_engageGroup
                        ---@class Enroute_Tasks_engageGroup
                        ---@field id 'EngageGroup' The identifier for the task, should be 'EngageGroup'.
                        ---@field params Taks_Params_EngageGroup Configuration parameters for the engageGroup task.

                        ---@class Taks_Params_EngageGroup
                        ---@field groupId number Unique identifier for the target group that the AI will engage.
                        ---@field weaponType number (Optional) Defines the preferred weapon to use against the target.
                        ---@field expend AI.Task.WeaponExpend (Optional) Enum defining how much munitions the AI will expend per attack run.
                        ---@field attackQty number (Optional) Number of times the group will attack if the target is still alive and the AI still has ammo. Required if attackQtyLimit is true.
                        ---@field attackQtyLimit boolean (Optional) If true, limits the number of attacks based on attackQty. If false, no limit is imposed.
                        ---@field direction number (Optional) Defines the direction from which the flight will engage the target.
                        ---@field priority number (Optional) The priority of the task. Lower values indicate higher priority. Defaults to 0.
                    end

                    --Enroute_Tasks_engageUnit
                    do
                        --- For: Airplanes, Helicopters
                        --- Available Under: CAP, CAS, SEAD, Anti-ship, Fighter Sweep, AFAC
                        --- Description: Assigns the controlled group to search for and engage a specific unit. The target must be detected in order for the AI to engage it.
                        ---https://wiki.hoggitworld.com/view/DCS_task_engageUnit
                        ---@class Enroute_Tasks_engageUnit
                        ---@field id 'EngageUnit' The identifier for the task, should be 'EngageUnit'.
                        ---@field params Taks_Params_EngageUnit Configuration parameters for the engageUnit task.

                        ---@class Taks_Params_EngageUnit
                        ---@field unitId number Unique identifier of the target unit that the AI will engage.
                        ---@field weaponType number (Optional) Defines the preferred weapon to use against the target.
                        ---@field expend AI.Task.WeaponExpend (Optional) Enum that defines how much munitions the AI will expend per attack run.
                        ---@field attackQty number (Optional) Number of times the group will attack if the target is still alive and the AI still has ammo. Required if attackQtyLimit is true.
                        ---@field attackQtyLimit boolean (Optional) If true, limits the number of attacks based on attackQty. If false, no limit is imposed.
                        ---@field direction number (Optional) Defines the direction from which the flight will engage the target.
                        ---@field groupAttack boolean (Optional) If true, each aircraft in the group will attack the unit. If false, only one aircraft will attack each unit. Defaults to false.
                        ---@field priority number (Optional) The priority of the task. Lower values indicate higher priority. Defaults to 0.
                    end

                    --Enroute_Tasks_AWACS
                    do
                        --- For: Airplanes, Helicopters
                        --- Available Under: AWACS
                        --- Description: Assigns the aircraft to act as an AWACS (Airborne Warning and Control System) for friendly forces.
                        ---https://wiki.hoggitworld.com/view/DCS_task_awacs
                        ---@class Enroute_Tasks_AWACS
                        ---@field id 'AWACS' The identifier for the task, should be 'AWACS'.
                        ---@field params table Configuration parameters for the AWACS task.
                    end

                    --Enroute_Tasks_Tanker
                    do
                        --- For: Airplanes, Helicopters
                        --- Available Under: Tanker
                        --- Description: 	Assigns the aircraft to act as an Airborne tanker for friendly forces. The aircraft must be a certified tanker aircraft, otherwise it would be really awkward trying to hook up with it.
                        ---https://wiki.hoggitworld.com/view/DCS_task_tanker
                        ---@class Enroute_Tasks_Tanker
                        ---@field id 'Tanker' The identifier for the task, should be 'Tanker'.
                        ---@field params table Configuration parameters for the Tanker task. (empty)
                    end

                    --Enroute_Tasks_EWR
                    do
                        --- For: Airplanes, Helicopters
                        --- Available Under: Ground Units
                        --- Description: Assigns the group to act as an EWR radar for friendly forces.
                        ---https://wiki.hoggitworld.com/view/DCS_task_ewr
                        ---@class Enroute_Tasks_EWR
                        ---@field id 'EWR' The identifier for the task, should be 'EWR'.
                        ---@field params table Configuration parameters for the EWR task.
                    end

                    --Enroute_Tasks_FAC_engageGroup
                    do
                        --- For: Airplanes, Helicopters, Ground Vehicles
                        --- Available Under: AFAC, Ground Nothing
                        --- Description: Assigns the controlled group to act as a Forward Air Controller (FAC) or JTAC and engage the specified group as a JTAC target once it is detected. This task adds the group to the JTAC radio menu and interacts with a player to destroy the target.
                        ---https://wiki.hoggitworld.com/view/DCS_task_fac_engageGroup
                        ---@class Enroute_Tasks_FAC_engageGroup
                        ---@field id 'FAC_EngageGroup' The identifier for the task, should be 'FAC_EngageGroup'.
                        ---@field params Taks_Params_FAC_EngageGroup Configuration parameters for the FAC_EngageGroup task.

                        ---@class Taks_Params_FAC_EngageGroup
                        ---@field groupId number The ID of the group to be assigned by the JTAC.
                        ---@field weaponType? number Defines the preferred weapon of choice to engage the enemy. (Optional)
                        ---@field designation? AI.Task.Designation AI.Task.Designation Enumerator defining the preferred designation to be used. (Optional)
                        ---@field datalink? boolean Boolean value that determines whether or not the JTAC will send the 9-line via SADL. (Optional, default: true)
                        ---@field frequency? number Frequency for the JTAC communication. (Optional)
                        ---@field modulation? radio.modulation radio.modulation Modulation type for radio communication. (Optional)
                        ---@field callname? number Callsign ID for the JTAC. (Optional)
                        ---@field number? number Callsign number for the JTAC. (Optional)
                        ---@field priority? number The priority of the tasking; the lower the number, the more important the objective is. (Optional, default: 0)
                    end

                    --Enroute_Tasks_FAC
                    do
                        --- For: Airplanes, Helicopters, Ground Vehicles
                        --- Available Under: AFAC, Ground Nothing
                        --- Description: Assigns the controlled group to act as a Forward Air Controller (FAC) or JTAC. Any detected targets will be assigned as targets to the player via the JTAC radio menu. Target designation is set to auto and is dependent on the circumstances.
                        ---https://wiki.hoggitworld.com/view/DCS_task_fac
                        ---@class Enroute_Tasks_FAC
                        ---@field id 'FAC' The identifier for the task, should be 'FAC'.
                        ---@field params Taks_Params_FAC Configuration parameters for the FAC task.

                        ---@class Taks_Params_FAC
                        ---@field frequency number Frequency for JTAC communication. (Optional)
                        ---@field modulation radio.modulation Modulation type for radio communication. (Optional)
                        ---@field callname number Callsign ID for the FAC. (Optional)
                        ---@field number number Callsign number for the FAC. (Optional)
                        ---@field priority number The priority of the tasking; the lower the number, the more important the objective is. (Optional, default: 0)
                    end
                end

                --Commands_Tasks
                do
                    --Commands_Tasks_Script
                    do
                        --- For: Airplanes, Helicopters, Ground Vehicles, Ships
                        --- Available Under: All tasks types
                        --- Description: Runs a Lua script. The script can use the special identifier `...` to reference the group object the script is running within.
                        ---https://wiki.hoggitworld.com/view/DCS_command_script
                        ---@class Commands_Tasks_Script
                        ---@field id 'Script' The identifier for the task, should be 'Script'.
                        ---@field params Taks_Params_Script Configuration parameters for the Script task.

                        ---@class Taks_Params_Script
                        ---@field command string A valid Lua script string to be executed.
                    end

                    ---Commands_Tasks_SetCallsign
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles
                        --- Available Under: All tasks types
                        --- Description: Sets the callsign for the specified group. See the article on callsign constants to see your options.
                        --- https://wiki.hoggitworld.com/view/DCS_command_setCallsign
                        ---@class Commands_Tasks_SetCallsign
                        ---@field id 'SetCallsign' The identifier for the task, should be 'SetCallsign'.
                        ---@field params Taks_Params_SetCallsign Configuration parameters for the SetCallsign task.

                        ---@class Taks_Params_SetCallsign
                        ---@field callname number The number corresponding to the callsign identifier you wish the group to use.
                        ---@field number number The number value the group will be referred to as. Only valid numbers are 1-9.
                    end

                    ---Commands_Tasks_SetFrequency
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles
                        --- Available Under: All tasks types
                        --- Description: Changes the broadcasting frequency the AI will be using. The frequency should be specified in hertz (Hz), whereas the mission editor UI displays it in megahertz (MHz). To convert from MHz to Hz, multiply the MHz value by 1,000,000.
                        --- https://wiki.hoggitworld.com/view/DCS_command_setFrequency
                        ---@class Commands_Tasks_SetFrequency
                        ---@field id 'SetFrequency' The identifier for the task, should be 'SetFrequency'.
                        ---@field params Taks_Params_SetFrequency Configuration parameters for the SetFrequency task.

                        ---@class Taks_Params_SetFrequency
                        ---@field frequency number The frequency to be set for the group, in Hz.
                        ---@field modulation radio.modulation The modulation type for the frequency, either AM (0) or FM (1).
                        ---@field power number The power of the radio in watts. A default value is 10 watts.
                    end

                    ---Commands_Tasks_SetFrequencyForUnit
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters
                        --- Available Under: All tasks types
                        --- Description: Changes the broadcasting frequency for a specific unit within the group. The frequency should be specified in hertz (Hz), whereas the mission editor UI displays it in megahertz (MHz). To convert from MHz to Hz, multiply the MHz value by 1,000,000.
                        --- https://wiki.hoggitworld.com/view/DCS_command_setFrequencyForUnit
                        ---@class Commands_Tasks_SetFrequencyForUnit
                        ---@field id 'SetFrequencyForUnit' The identifier for the task, should be 'SetFrequencyForUnit'.
                        ---@field params Taks_Params_SetFrequencyForUnit Configuration parameters for the SetFrequencyForUnit task.

                        ---@class Taks_Params_SetFrequencyForUnit
                        ---@field unitId number The unique identifier of the unit within the group.
                        ---@field frequency number The frequency to be set for the unit, in Hz.
                        ---@field modulation radio.modulation The modulation type for the frequency, either AM (0) or FM (1).
                        ---@field power number The power of the radio in watts. A default value is 10 watts.
                    end

                    ---Commands_Tasks_SwitchWaypoint
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters
                        --- Available Under: All tasks types
                        --- Description: Changes the active waypoint of the group to the specified waypoint index. This allows for dynamic changes in the group's route during the mission.
                        --- https://wiki.hoggitworld.com/view/DCS_command_switchWaypoint
                        ---@class Commands_Tasks_SwitchWaypoint
                        ---@field id 'SwitchWaypoint' The identifier for the task, should be 'SwitchWaypoint'.
                        ---@field params Taks_Params_SwitchWaypoint Configuration parameters for the SwitchWaypoint task.

                        ---@class Taks_Params_SwitchWaypoint
                        ---@field fromWaypointIndex number The index of the waypoint the group is currently at.
                        ---@field goToWaypointIndex number The index of the waypoint to which the group should switch.
                    end


                    ---Commands_Tasks_StopRoute
                    do
                        --- Tasking Type: Command
                        --- For: Ground Vehicles
                        --- Available Under: All tasks types
                        --- Description: Depending on the input variables this function either halts a ground group or allows the group to resume its route.
                        --- https://wiki.hoggitworld.com/view/DCS_command_stopRoute
                        ---@class Commands_Tasks_StopRoute
                        ---@field id 'StopRoute' The identifier for the task, should be 'StopRoute'.
                        ---@field params Taks_Params_StopRoute Configuration parameters for the StopRoute task.

                        ---@class Taks_Params_StopRoute
                        ---@field value boolean True stops the group, false resumes the group's route.
                    end


                    ---Commands_Tasks_SwitchAction
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles
                        --- Available Under: All tasks types
                        --- Description: Switches to the specified action within the queue. This command is only functional if a mission task is active.
                        --- https://wiki.hoggitworld.com/view/DCS_command_switchAction
                        ---@class Commands_Tasks_SwitchAction
                        ---@field id 'SwitchAction' The identifier for the task, should be 'SwitchAction'.
                        ---@field params Taks_Params_SwitchAction Configuration parameters for the SwitchAction task.

                        ---@class Taks_Params_SwitchAction
                        ---@field actionIndex number The index of the action you wish to switch to.
                    end


                    ---Commands_Tasks_SetInvisible
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles, Ships
                        --- Available Under: All tasks types
                        --- Description: Sets the controlled group to be invisible to other AI forces. Note they can still be hit through sheer luck; AI will not actively target this group.
                        --- https://wiki.hoggitworld.com/view/DCS_command_setInvisible
                        ---@class Commands_Tasks_SetInvisible
                        ---@field id 'SetInvisible' The identifier for the task, should be 'SetInvisible'.
                        ---@field params Taks_Params_SetInvisible Configuration parameters for the SetInvisible task.

                        ---@class Taks_Params_SetInvisible
                        ---@field value boolean True enables invisibility, false disables it.
                    end


                    ---Commands_Tasks_SetImmortal
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles, Ships
                        --- Available Under: All tasks types
                        --- Description: Sets the controlled group to be immortal. Nothing will be able to kill it.
                        --- https://wiki.hoggitworld.com/view/DCS_command_setImmortal
                        ---@class Commands_Tasks_SetImmortal
                        ---@field id 'SetImmortal' The identifier for the task, should be 'SetImmortal'.
                        ---@field params Taks_Params_SetImmortal Configuration parameters for the SetImmortal task.

                        ---@class Taks_Params_SetImmortal
                        ---@field value boolean True enables immortality, false disables it.
                    end


                    ---Commands_Tasks_SetUnlimitedFuel
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles, Ships
                        --- Available Under: All tasks types
                        --- Description: Sets the unlimited fuel status for the specified group. When enabled, the group will not consume fuel and can fly or operate indefinitely.
                        --- https://wiki.hoggitworld.com/view/DCS_command_setUnlimitedFuel
                        ---@class Commands_Tasks_SetUnlimitedFuel
                        ---@field id 'SetUnlimitedFuel' The identifier for the task, should be 'SetUnlimitedFuel'.
                        ---@field params Taks_Params_SetUnlimitedFuel Configuration parameters for the SetUnlimitedFuel task.

                        ---@class Taks_Params_SetUnlimitedFuel
                        ---@field value boolean Indicates whether the group should have unlimited fuel (true) or not (false).
                    end


                    ---Commands_Tasks_ActivateBeacon
                    do
                        ---@alias Task.Alias.ActivateBeacon.system
                        ---| 0 BEACON_TYPE_NULL
                        ---| 1 BEACON_TYPE_VOR
                        ---| 2 BEACON_TYPE_DME
                        ---| 3 BEACON_TYPE_VOR_DME
                        ---| 4 BEACON_TYPE_TACAN
                        ---| 5 BEACON_TYPE_VORTAC
                        ---| 8 BEACON_TYPE_HOMER
                        ---| 32 BEACON_TYPE_RSBN
                        ---| 1024 BEACON_TYPE_BROADCAST_STATION
                        ---| 4104 BEACON_TYPE_AIRPORT_HOMER
                        ---| 4136 BEACON_TYPE_AIRPORT_HOMER_WITH_MARKER
                        ---| 16408 BEACON_TYPE_ILS_FAR_HOMER
                        ---| 16456 BEACON_TYPE_ILS_NEAR_HOMER
                        ---| 16640 BEACON_TYPE_ILS_LOCALIZER
                        ---| 16896 BEACON_TYPE_ILS_GLIDESLOPE
                        ---| 32776 BEACON_TYPE_NAUTICAL_HOMER


                        ---@alias Task.Alias.ActivateBeacon.Type
                        ---| 1 PAR_10
                        ---| 2 RSBN_5
                        ---| 3 TACAN
                        ---| 4 TACAN_TANKER
                        ---| 5 ILS_LOCALIZER
                        ---| 6 ILS_GLIDESLOPE
                        ---| 7 BROADCAST_STATION


                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles, Ships
                        --- Available Under: All tasks types
                        --- Description: Activates a beacon for the specified group. The beacon will start emitting signals that can be detected by other units, aiding in navigation or providing a location reference.
                        --- https://wiki.hoggitworld.com/view/DCS_command_activateBeacon
                        ---@class Commands_Tasks_ActivateBeacon
                        ---@field id 'ActivateBeacon' The identifier for the task, should be 'ActivateBeacon'.
                        ---@field params Taks_Params_ActivateBeacon Configuration parameters for the ActivateBeacon task.

                        ---@class Taks_Params_ActivateBeacon
                        ---@field type Task.Alias.ActivateBeacon.system The type of beacon to be activated.
                        ---@field system Task.Alias.ActivateBeacon.Type Determines which device(s) will be used.
                        ---@field frequency number Frequency of the beacon's transmitter in Hz.
                        ---@field callsign string The message that will broadcast in Morse Code.
                        ---@field name? string Optional. Serves no purpose other than for readability in the mission editor.
                    end


                    ---Commands_Tasks_DeactivateBeacon
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles, Ships
                        --- Available Under: All tasks types
                        --- Description: Deactivates a beacon for the specified group. The beacon will stop emitting signals, ceasing to provide navigation or location references.
                        --- https://wiki.hoggitworld.com/view/DCS_command_deactivateBeacon
                        ---@class Commands_Tasks_DeactivateBeacon
                        ---@field id 'DeactivateBeacon' The identifier for the task, should be 'DeactivateBeacon'.
                        ---@field params table Configuration parameters for the DeactivateBeacon task.
                    end


                    ---Commands_Tasks_ActivateICLS
                    do
                        --- Tasking Type: Command
                        --- For: Ships
                        --- Available Under: All tasks types
                        --- Description: Activates an ICLS (Instrument Carrier Landing System) beacon for aircraft carriers. This enables the ICLS for guiding aircraft during carrier landings.
                        --- https://wiki.hoggitworld.com/view/DCS_command_activateICLS
                        ---@class Commands_Tasks_ActivateICLS
                        ---@field id 'ActivateICLS' The identifier for the task, should be 'ActivateICLS'.
                        ---@field params Taks_Params_ActivateICLS Configuration parameters for the ActivateICLS task.

                        ---@class Taks_Params_ActivateICLS
                        ---@field type 131584 A fixed value, usually 131584, indicating the type of ICLS beacon.
                        ---@field channel number The channel number for the ICLS beacon, ranging from 1 to 20.
                        ---@field unitId number The unique identifier of the ship that has the ICLS system being activated.
                        ---@field name? string Optional. The name for the ICLS beacon, used for readability in the mission editor but has no functional impact.
                    end


                    ---Commands_Tasks_DeactivateICLS
                    do
                        --- Tasking Type: Command
                        --- For: Ships
                        --- Available Under: All tasks types
                        --- Description: Deactivates the ICLS (Instrument Carrier Landing System) for the specified carrier. This disables the ICLS, removing the guidance system for carrier landings.
                        --- https://wiki.hoggitworld.com/view/DCS_command_deactivateICLS
                        ---@class Commands_Tasks_DeactivateICLS
                        ---@field id 'DeactivateICLS' The identifier for the task, should be 'DeactivateICLS'.
                        ---@field params table Configuration parameters for the DeactivateICLS task.
                    end


                    ---Commands_Tasks_EPLRS
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles, Ships
                        --- Available Under: All tasks types
                        --- Description: Toggles the EPLRS (Enhanced Position Location Reporting System) for the specified unit. EPLRS provides enhanced position reporting and tracking for friendly forces.
                        --- https://wiki.hoggitworld.com/view/DCS_command_eplrs
                        ---@class Commands_Tasks_EPLRS
                        ---@field id 'EPLRS' The identifier for the task, should be 'EPLRS'.
                        ---@field params Taks_Params_EPLRS Configuration parameters for the EPLRS task.

                        ---@class Taks_Params_EPLRS
                        ---@field value boolean The state to set for EPLRS. `true` to enable EPLRS, `false` to disable it.
                        ---@field groupId? number The track number of the first unit of the vehicle group. This parameter is only used for vehicle groups.
                    end


                    ---Commands_Tasks_Start
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles
                        --- Available Under: All tasks types
                        --- Description: Starts the specified unit or group. This command is used to initiate operations or to begin a task or mission for the unit.
                        --- https://wiki.hoggitworld.com/view/DCS_command_start
                        ---@class Commands_Tasks_Start
                        ---@field id 'Start' The identifier for the task, should be 'Start'.
                        ---@field params table Configuration parameters for the Start task. This task does not require any parameters.
                    end


                    ---Commands_Tasks_TransmitMessage
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles, Ships
                        --- Available Under: All tasks types
                        --- Description: Sends a message to the specified group or unit. This can be used to communicate specific instructions or information to the units. The message will be transmitted over the currently active radio frequency and modulation. Messages may be affected by radio simulation and can be inaudible due to distance or obstructions. Subtitles may be displayed if the simulation deems the player can hear the transmission.
                        --- https://wiki.hoggitworld.com/view/DCS_command_transmitMessage
                        ---@class Commands_Tasks_TransmitMessage
                        ---@field id 'TransmitMessage' The identifier for the task, should be 'TransmitMessage'.
                        ---@field params Taks_Params_TransmitMessage Configuration parameters for the TransmitMessage task.

                        ---@class Taks_Params_TransmitMessage
                        ---@field file string The sound file name to be played.
                        ---@field duration? number (Optional) The length of time the subtitles will be displayed. Not applicable if `loop` is set to true.
                        ---@field subtitle? string (Optional) The text to appear in the radio message queue (default top left corner of the screen).
                        ---@field loop? boolean (Optional) If set to true, the radio message will repeat continuously until stopped.
                    end


                    ---Commands_Tasks_StopTransmission
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles, Ships
                        --- Available Under: All tasks types
                        --- Description: Stops an ongoing transmission of a message or beacon signal from the specified group or unit. This command halts any active `TransmitMessage` task that may currently be broadcasting from the unit or group.
                        --- https://wiki.hoggitworld.com/view/DCS_command_stopTransmission
                        ---@class Commands_Tasks_StopTransmission
                        ---@field id 'stopTransmission' The identifier for the task, should be 'StopTransmission'.
                        ---@field params table Configuration parameters for the StopTransmission task.
                    end


                    ---Commands_Tasks_SmokeOnOff
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes, Helicopters, Ground Vehicles
                        --- Available Under: All tasks types
                        --- Description: Turns smoke on or off for the specified group or unit. This can be used for marking positions or targets. When enabled, smoke will be emitted from the aircraft's smoke pods or similar devices.
                        --- https://wiki.hoggitworld.com/view/DCS_command_smoke_on_off
                        ---@class Commands_Tasks_SmokeOnOff
                        ---@field id 'SMOKE_ON_OFF' The identifier for the task, should be 'SMOKE_ON_OFF'.
                        ---@field params Taks_Params_SmokeOnOff Configuration parameters for the SmokeOnOff task.

                        ---@class Taks_Params_SmokeOnOff
                        ---@field value boolean Boolean value to enable or disable the smoke. `true` to enable smoke, `false` to disable.
                    end


                    ---Commands_Tasks_ActivateLink4
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes
                        --- Available Under: All tasks types
                        --- Description: Activates or deactivates the Link-4 data link system for the specified aircraft. Link-4 provides tactical data link communications between aircraft, allowing for sharing of information and coordination.
                        --- https://wiki.hoggitworld.com/view/DCS_command_activateLink4
                        ---@class Commands_Tasks_ActivateLink4
                        ---@field id 'ActivateLink4' The identifier for the task, should be 'ActivateLink4'.
                        ---@field params Taks_Params_ActivateLink4 Configuration parameters for the ActivateLink4 task.

                        ---@class Taks_Params_ActivateLink4
                        ---@field unitId  number  Any valid unitId corresponding to a ship. Ship must have link 4 beacon capability.
                        ---@field frequency number Number in hz that the datalink will operate on.
                        ---@field name? string Used to name the Link4 beacon, has no discernable use.
                    end


                    ---Commands_Tasks_DeactivateLink4
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes
                        --- Available Under: All tasks types
                        --- Description: Disables any Link4 active beacon on the group/unit
                        --- https://wiki.hoggitworld.com/view/DCS_command_deactivateLink4
                        ---@class Commands_Tasks_DeactivateLink4
                        ---@field id 'DeactivateLink4' The identifier for the task, should be 'DeactivateLink4'.
                        ---@field params table Configuration parameters for the DeactivateLink4 task.
                    end

                    ---Commands_Tasks_ActivateACLS
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes
                        --- Available Under: All tasks types
                        --- Description: Activates the Automatic Carrier Landing System (ACLS) for the specified aircraft. The ACLS assists in landing on an aircraft carrier by providing precise guidance and control.
                        --- https://wiki.hoggitworld.com/view/DCS_command_activateACLS
                        ---@class Commands_Tasks_ActivateACLS
                        ---@field id 'ActivateACLS' The identifier for the task, should be 'ActivateACLS'.
                        ---@field params Taks_Params_ActivateACLS Configuration parameters for the ActivateACLS task.

                        ---@class Taks_Params_ActivateACLS
                        ---@field unitId number The unique identifier for the aircraft carrier on which the ACLS will be activated.
                        ---@field name? string Optional name for the ACLS system. This is used for labeling and has no impact on functionality.
                    end

                    ---Commands_Tasks_DeactivateACLS
                    do
                        --- Tasking Type: Command
                        --- For: Airplanes
                        --- Available Under: All tasks types
                        --- Description: Disables any ACLS active beacon on the group/unit
                        --- https://wiki.hoggitworld.com/view/DCS_command_deactivateACLS
                        ---@class Commands_Tasks_DeactivateACLS
                        ---@field id 'DeactivateACLS' The identifier for the task, should be 'DeactivateACLS'.
                        ---@field params table Configuration parameters for the DeactivateACLS task.
                    end

                    ---Commands_Tasks_LoadingShip
                    do
                        --- Tasking Type: Command
                        --- For: Ships
                        --- Available Under: All tasks types
                        --- Description: Sets the specified ship to a loading state, adjusting its cargo level. This simulates the loading process or adjusts the ship's buoyancy based on cargo levels.
                        --- https://wiki.hoggitworld.com/view/DCS_command_LoadingShip
                        ---@class Commands_Tasks_LoadingShip
                        ---@field id 'LoadingShip' The identifier for the task, should be 'LoadingShip'.
                        ---@field params Taks_Params_LoadingShip Configuration parameters for the LoadingShip task.

                        ---@class Taks_Params_LoadingShip
                        ---@field cargo number The cargo level of the ship, from 0 to 100 percent, affecting how high or low the ship sits in the water.
                        ---@field unitId number The unique identifier of the ship whose cargo value is to be set.
                    end

                    ---Commands_Tasks_Set_Option
                    do
                        ---@class Commands_Tasks_Set_Option
                        ---@field id "Option"
                        ---@field params Tasks_TaskWrapper_WrappedAction.params_Setting.params

                        ---@class Tasks_TaskWrapper_WrappedAction.params_Setting.params
                        ---@field name AI.Option.Air.id|AI.Option.Ground.id|AI.Option.Naval.id
                        ---@field value AI.Option.Air.val|AI.Option.Ground.val|AI.Option.Naval.val|boolean
                    end
                end
            end
        end

        --[[WAREHOUSE DATA]]
        do
            --Aircraft_table
            do
                ---@class Warehouse_data_aircraft
                ---@field initialAmount number
                ---@field linkDynTempl? number Groupid for dyn template that is linked to this unit
                ---@field wsType Wherehouse_recource_map see https://wiki.hoggitworld.com/view/DCS_func_getResourceMap
                ---@field unlimited boolean
            end

            --Sup table
            do
                ---@class Warehouse_data_sup
                ---@field Id number
                ---@field type "airports"|string
            end
            ---@class Warehouse_data
            ---@field allowHotStart boolean
            ---@field unlimitedMunitions boolean
            ---@field methanol_mixture table<"InitFuel", number>
            ---@field OperatingLevel_Air number
            ---@field diesel table<"InitFuel", number>
            ---@field speed number
            ---@field dynamicSpawn boolean
            ---@field unlimitedAircrafts boolean
            ---@field unlimitedFuel boolean
            ---@field jet_fuel table<"InitFuel", number>
            ---@field periodicity number
            ---@field suppliers table<number, Warehouse_data_sup>|{}
            ---@field coalition "RED"|"BLUE"|string
            ---@field dynamicCargo boolean
            ---@field OperatingLevel_Eqp number
            ---@field gasoline table<"InitFuel", number>
            ---@field aircrafts table<"helicopters"|"planes", table<TypeNames_AC|TypeNames_Heli, Warehouse_data_aircraft>>|{}
            ---@field weapons {}|table
            ---@field OperatingLevel_Fuel number
            ---@field size number
        end
    end

    ---env contains basic logging functions useful for debugging scripting commands. The input text is automatically added to dcs.log in your saved games folder, default location: C:\Users\<<userName>>\Saved Games\DCS\Logs.
    ---Lua syntax errors are automatically generated and placed in the dcs.log file.
    ---https://wiki.hoggitworld.com/view/DCS_singleton_env
    ---@class env
    env         = {}

    env.mission =
    {
        --- Contains all coalition specific data including bullseye, nav_points, and all units.
        coalition               =
        {

            --- blue
            blue     =
            {
                --- Coalition's bullseye data (vec2)
                ---@type vec2
                bullseye   =
                {
                    x = 0,
                    y = 0,
                },

                --- Coalition's navigation points
                ---@type table<number, env.mission.coalition.side.nav_points>
                nav_points =
                {
                }, -- end of ["nav_points"]

                --- name of side
                ---@type string
                name       = "",

                --- Coalition's units by country
                ---@type table<country.id, env.mission.coalition.side.Country>
                country    =
                {
                } -- Example placeholder for units
            },

            red      =
            {
                --- Coalition's bullseye data (vec2)
                ---@type vec2
                bullseye   =
                {
                    x = 0,
                    y = 0,
                },

                --- Coalition's navigation points
                ---@type table<number, env.mission.coalition.side.nav_points>
                nav_points =
                {
                    -- Add more navigation points as needed
                }, -- end of ["nav_points"]

                --- name of side
                ---@type string
                name       = "",

                --- Coalition's units by country
                ---@type table<country.id, env.mission.coalition.side.Country>
                country    =
                {
                } -- Example placeholder for units
            },

            neutrals =
            {
                --- Coalition's bullseye data (vec2)
                ---@type vec2
                bullseye   =
                {
                    x = 0,
                    y = 0,
                },

                --- Coalition's navigation points
                ---@type table<number, env.mission.coalition.side.nav_points>
                nav_points =
                {
                    -- Add more navigation points as needed
                }, -- end of ["nav_points"]

                --- name of side
                ---@type string
                name       = "",

                --- Coalition's units by country
                ---@type table<country.id, env.mission.coalition.side.Country>
                country    =
                {
                } -- Example placeholder for units
            },

        }, -- end of ["coalition"]

        --- Contains a list of country ids that belong to a given coalition.
        ---@type table
        coalitions              =
        {
            --- Country IDs for the blue coalition
            ---@type table
            blue     = {}, -- Example placeholder for blue coalition country IDs

            --- Country IDs for the red coalition
            ---@type table
            red      = {}, -- Example placeholder for red coalition country IDs

            --- Country IDs for the neutral coalition
            ---@type table
            neutrals = {} -- Example placeholder for neutral coalition country IDs
        },                -- end of ["coalitions"]

        --- Value used by the editor to know what index the dictkey and reskeys are on.
        ---@type number
        currentKey              = 0,

        --- The date the mission takes place at
        ---@type table
        date                    =
        {
            --- Year of the mission
            ---@type number
            Year  = 2024,

            --- Month of the mission
            ---@type number
            Month = 6,

            --- Day of the mission
            ---@type number
            Day   = 13
        }, -- end of ["date"]

        --- Mission briefing defined under the "Situation" page on the briefing panel.
        ---@type string
        descriptionText         = "",

        --- Blue coalition task defined on the briefing panel.
        ---@type string
        descriptionBlueTask     = "",

        --- Neutral coalition task defined on the briefing panel.
        ---@type string
        descriptionNeutralsTask = "",

        --- Red coalition task defined on the briefing panel.
        ---@type string
        descriptionRedTask      = "",

        --- Table containing information on any drawing placed in the editor.
        ---@type table
        drawings                = {}, -- Example placeholder for drawing information

        --- Lists failure parameters for whichever aircraft is set to player.
        ---@type table
        failures                = {}, -- Example placeholder for failures data

        --- Options that are forced by the mission and their corresponding settings.
        ---@type table
        forcedOptions           = {}, -- Example placeholder for forced options

        --- Data on the number of Combined Arms slots and their respective coalitions.
        groundControl           =
        {
            --- Passwords for different roles
            passwords              =
            {
                --- Password for artillery commander role
                ---@type table
                artillery_commander =
                {
                    -- Add artillery commander passwords here
                }, -- end of ["artillery_commander"]

                --- Password for instructor role
                ---@type table
                instructor          =
                {
                    -- Add instructor passwords here
                }, -- end of ["instructor"]

                --- Password for observer role
                ---@type table
                observer            =
                {
                    -- Add observer passwords here
                }, -- end of ["observer"]

                --- Password for forward observer role
                ---@type table
                forward_observer    =
                {
                    -- Add forward observer passwords here
                }, -- end of ["forward_observer"]
            },     -- end of ["passwords"]

            --- Roles and their coalition-specific data
            roles                  =
            {
                --- Artillery commander role
                artillery_commander =
                {
                    --- Number of slots for neutral coalition
                    ---@type number
                    neutrals = 0, -- Replace with actual value

                    --- Number of slots for blue coalition
                    ---@type number
                    blue     = 0, -- Replace with actual value

                    --- Number of slots for red coalition
                    ---@type number
                    red      = 0, -- Replace with actual value
                },                -- end of ["artillery_commander"]

                --- Instructor role
                instructor          =
                {
                    --- Number of slots for neutral coalition
                    ---@type number
                    neutrals = 0, -- Replace with actual value

                    --- Number of slots for blue coalition
                    ---@type number
                    blue     = 0, -- Replace with actual value

                    --- Number of slots for red coalition
                    ---@type number
                    red      = 0, -- Replace with actual value
                },                -- end of ["instructor"]

                --- Observer role
                observer            =
                {
                    --- Number of slots for neutral coalition
                    ---@type number
                    neutrals = 0, -- Replace with actual value

                    --- Number of slots for blue coalition
                    ---@type number
                    blue     = 0, -- Replace with actual value

                    --- Number of slots for red coalition
                    ---@type number
                    red      = 0, -- Replace with actual value
                },                -- end of ["observer"]

                --- Forward observer role
                forward_observer    =
                {
                    --- Number of slots for neutral coalition
                    ---@type number
                    neutrals = 0, -- Replace with actual value

                    --- Number of slots for blue coalition
                    ---@type number
                    blue     = 0, -- Replace with actual value

                    --- Number of slots for red coalition
                    ---@type number
                    red      = 0, -- Replace with actual value
                },                -- end of ["forward_observer"]
            },                    -- end of ["roles"]

            --- Indicator whether pilot can control vehicles
            ---@type boolean
            isPilotControlVehicles = false, -- Replace with actual value

        },                                  -- end of ["groundControl"]

        --- Last position of the map view the user was looking at when the mission was saved.
        map                     =
        {
            --- Map view X coordinate
            ---@type number
            centerX = 0,

            --- Map view Y coordinate
            ---@type number
            centerY = 0,

            --- Map view zoom level
            ---@type number
            zoom    = 1
        }, -- end of ["map"]

        --- Internal value used to keep track of what the next unit and group id to use is.
        ---@type number
        maxDictId               = 0,

        --- Neutral coalition briefing images.
        ---@type table
        pictureFileNameN        = {}, -- Example placeholder for neutral briefing images

        --- Blue coalition briefing images.
        ---@type table
        pictureFileNameB        = {}, -- Example placeholder for blue briefing images

        --- Red coalition briefing images.
        ---@type table
        pictureFileNameR        = {}, -- Example placeholder for red briefing images

        --- Table of mod names whose units are present within the mission.
        ---@type table
        requiredModules         = {}, -- Example placeholder for required modules

        --- Conditions and actions defined by mission goals to decide if a mission is "won".
        result                  =
        {
            --- Mission conditions
            ---@type table
            conditions = {}, -- Example placeholder for mission conditions

            --- Mission actions
            ---@type table
            actions    = {} -- Example placeholder for mission actions
        },                  -- end of ["result"]

        --- Time in seconds since midnight for the date set when the mission starts.
        ---@type number
        start_time              = 0,

        --- Name of the mission as defined in the briefing panel.
        ---@type string
        sortie                  = "",

        --- Name of the map the mission takes place on.
        ---@type string|'Caucasus'|'Nevada'|'Normandy'|'PersianGulf'|'TheChannel'|'Syria'|'MarianaIslands'|'Falklands'|'SinaiMap'|'Kola'|'Afghanistan'|'Iraq'|'GermanyCW'
        theatre                 = "",

        --- Table of trigger zones indexed numerically.
        triggers                =
        {
            --- Zones defined within the triggers
            zones =
            {
                [44] =
                {
                    --- Radius of the trigger zone
                    ---@type number
                    radius     = 3000, -- Replace with actual radius

                    --- Unique identifier for the trigger zone
                    ---@type number
                    zoneId     = 347, -- Replace with actual zone ID

                    --- Color of the trigger zone in RGBA format
                    color      =
                    {
                        --- Red component (0-1)
                        ---@type number
                        [1] = 1, -- Replace with actual red component

                        --- Green component (0-1)
                        ---@type number
                        [2] = 1, -- Replace with actual green component

                        --- Blue component (0-1)
                        ---@type number
                        [3] = 1, -- Replace with actual blue component

                        --- Alpha component (0-1, transparency)
                        ---@type number
                        [4] = 0.15 -- Replace with actual alpha component
                    },             -- end of ["color"]

                    --- Properties of the trigger zone
                    properties =
                    {
                        [1] =
                        {
                            --- Key for the property
                            ---@type string
                            key   = "lat", -- Replace with actual key

                            --- Value for the property
                            ---@type string
                            value = "B" -- Replace with actual value
                        },              -- end of [1]

                        [2] =
                        {
                            --- Key for the property
                            ---@type string
                            key   = "str", -- Replace with actual key

                            --- Value for the property
                            ---@type string
                            value = "East Esmaeil Abad" -- Replace with actual value
                        },                              -- end of [2]

                        [3] =
                        {
                            --- Key for the property
                            ---@type string
                            key   = "type", -- Replace with actual key

                            --- Value for the property
                            ---@type string
                            value = "obj" -- Replace with actual value
                        }                 -- end of [3]

                        -- Add more properties as needed
                    }, -- end of ["properties"]

                    --- Visibility of the trigger zone
                    ---@type boolean
                    hidden     = false, -- Replace with actual visibility

                    --- Y coordinate of the trigger zone center
                    ---@type number
                    y          = -282851.07616364, -- Replace with actual Y coordinate

                    --- X coordinate of the trigger zone center
                    ---@type number
                    x          = 381072.16872345, -- Replace with actual X coordinate

                    --- Name of the trigger zone
                    ---@type string
                    name       = "OBJB20", -- Replace with actual name

                    --- Type of the trigger zone
                    ---@type number
                    type       = 2, -- Replace with actual type

                    --- Vertices of the polygon defining the trigger zone
                    ---@type table
                    verticies  =
                    {
                        [1] =
                        {
                            --- Y coordinate of the vertex
                            ---@type number
                            y = -298019.23760703, -- Replace with actual Y coordinate

                            --- X coordinate of the vertex
                            ---@type number
                            x = 376996.1784471 -- Replace with actual X coordinate
                        },                     -- end of [1]

                        [2] =
                        {
                            --- Y coordinate of the vertex
                            ---@type number
                            y = -276624.3163146, -- Replace with actual Y coordinate

                            --- X coordinate of the vertex
                            ---@type number
                            x = 367168.69201007 -- Replace with actual X coordinate
                        },                      -- end of [2]

                        [3] =
                        {
                            --- Y coordinate of the vertex
                            ---@type number
                            y = -269277.86743708, -- Replace with actual Y coordinate

                            --- X coordinate of the vertex
                            ---@type number
                            x = 384020.41465456 -- Replace with actual X coordinate
                        },                      -- end of [3]

                        [4] =
                        {
                            --- Y coordinate of the vertex
                            ---@type number
                            y = -287482.88329585, -- Replace with actual Y coordinate

                            --- X coordinate of the vertex
                            ---@type number
                            x = 396103.38978206 -- Replace with actual X coordinate
                        }                       -- end of [4]

                        -- Add more vertices as needed
                    } -- end of ["verticies"]
                }     -- end of [44]

                -- Add more zones as needed
            } -- end of ["zones"]
        },    -- end of ["triggers"]

        --- Table containing every single ME trigger.
        ---@type table
        trig                    =
        {

        }, -- end of ["trig"]

        --- Another table containing data on triggers.
        ---@type table
        trigRules               =
        {

        }, -- end of ["trigRules"]

        --- Value used by the mission editor to know roughly which iteration of the editor the mission was saved in.
        ---@type number
        version                 = 0,

        --- Table with weather data.
        ---@type table
        weather                 =
        {
            --- Wind data
            ---@type table
            wind        =
            {
                --- Wind speed
                ---@type number
                speed     = 0,

                --- Wind direction
                ---@type number
                direction = 0
            }, -- end of ["wind"]

            --- Temperature data
            ---@type number
            temperature = 15

            -- Add more weather attributes as needed
        } -- end of ["weather"]
    }     -- end of ["missionData"]


    env.warehouses =
    {
        -- [airbaseId] = warehouseTable for additional airbases can be added similarly
        ---@type table<number,Warehouse_data>
        airports   =
        {
            [1] =
            {
                gasoline            =
                {
                    InitFuel = 100,
                },
                allowHotStart       = false,
                dynamicCargo        = false,
                dynamicSpawn        = true,
                unlimitedMunitions  = true,
                methanol_mixture    =
                {
                    InitFuel = 100,
                },
                OperatingLevel_Air  = 10,
                diesel              =
                {
                    InitFuel = 100,
                },
                speed               = 16.666666,
                size                = 100,
                periodicity         = 30,
                suppliers           =
                {
                    [1] =
                    {
                        Id   = 23,
                        type = "airports",
                    },
                },

                coalition           = "blue",

                jet_fuel            =
                {
                    ---@type number
                    InitFuel = 100,
                },

                OperatingLevel_Eqp  = 10,

                unlimitedFuel       = true,

                aircrafts           = {},

                weapons             = {},

                OperatingLevel_Fuel = 10,

                unlimitedAircrafts  = true,
            },
        },
        ---@type table<number,Warehouse_data>
        warehouses =
        {
            [1] =
            {
                gasoline            =
                {
                    InitFuel = 100,
                },
                allowHotStart       = false,
                dynamicCargo        = false,
                dynamicSpawn        = true,
                unlimitedMunitions  = true,
                methanol_mixture    =
                {
                    InitFuel = 100,
                },
                OperatingLevel_Air  = 10,
                diesel              =
                {
                    InitFuel = 100,
                },
                speed               = 16.666666,
                size                = 100,
                periodicity         = 30,
                suppliers           =
                {
                    [1] =
                    {
                        Id   = 23,
                        type = "airports",
                    },
                },

                coalition           = "blue",

                jet_fuel            =
                {
                    ---@type number
                    InitFuel = 100,
                },

                OperatingLevel_Eqp  = 10,

                unlimitedFuel       = true,

                aircrafts           = {},

                weapons             = {},

                OperatingLevel_Fuel = 10,

                unlimitedAircrafts  = true,
            }
        }
    }

    env.Mode       =
    {
        INIT       = 0,
        USER       = 1,
        START      = 2,
        SIMULATION = 4,
        STOP       = 5,
        FINISH     = 6,
    }

    --Functions
    do
        ---Prints the passed string to the dcs.log with a prefix of 'error'. The optional variable defines whether or not a message box will pop up when the logging occurs.
        ---https://wiki.hoggitworld.com/view/DCS_func_warning
        ---@param log string
        ---@param showMessageBox? boolean
        function env.error( log, showMessageBox ) end

        ---Returns a string associated with the passed dictionary key value. If the key is not found within the miz the function will return the string that was passed.
        ---https://wiki.hoggitworld.com/view/DCS_func_getValueDictByKey
        ---@return string
        ---@param string string
        function env.getValueDictByKey( string ) end

        ---Prints the passed string to the dcs.log with a prefix of 'info'. The optional variable defines whether or not a message box will pop up when the logging occurs.
        ---https://wiki.hoggitworld.com/view/DCS_func_info
        ---@param log string
        ---@param showMessageBox? boolean
        function env.info( log, showMessageBox ) end

        ---Prints the passed string to the dcs.log with a prefix of 'error'. The optional variable defines whether or not a message box will pop up when the logging occurs.
        ---https://wiki.hoggitworld.com/view/DCS_func_setErrorMessageBoxEnabled
        ---@example env.setErrorMessageBoxEnabled(false)
        ---@param toggle boolean
        function env.setErrorMessageBoxEnabled( toggle ) end

        --No Docu
        function env.showTraining() end

        ---Prints the passed string to the dcs.log with a prefix of 'warning'. The optional variable defines whether or not a message box will pop up when the logging occurs.
        ---https://wiki.hoggitworld.com/view/DCS_func_warning
        ---@param log string
        ---@param showMessageBox? boolean
        function env.warning( log, showMessageBox ) end
    end
end
