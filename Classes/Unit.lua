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
        ---**Unit Desc Class**
        do
            ---Represents the bounding box of an object with minimum and maximum coordinates.
            ---@class Box
            ---@field min vec3 The minimum 3D coordinates of the box
            ---@field max vec3 The maximum 3D coordinates of the box

            ---Represents the attributes of an aircraft with boolean values.
            ---@class Unit_Attributes
            ---@field ["AA_flak"]? boolean
            ---@field ["AA_missile"]? boolean
            ---@field ["AAA"]? boolean
            ---@field ["ATGM"]? boolean
            ---@field ["AWACS"]? boolean
            ---@field ["Air"]? boolean
            ---@field ["Air Defence"]? boolean
            ---@field ["Air Defence vehicles"]? boolean
            ---@field ["Aircraft Carriers"]? boolean
            ---@field ["Airfields"]? boolean
            ---@field ["All"]? boolean
            ---@field ["AntiAir Armed Vehicles"]? boolean
            ---@field ["Anti-Ship missiles"]? boolean
            ---@field ["APC"]? boolean
            ---@field ["Armed Air Defence"]? boolean
            ---@field ["Armed ground units"]? boolean
            ---@field ["Armed ships"]? boolean
            ---@field ["Armed vehicles"]? boolean
            ---@field ["Armored vehicles"]? boolean
            ---@field ["Artillery"]? boolean
            ---@field ["Attack helicopters"]? boolean
            ---@field ["Aux"]? boolean
            ---@field ["Battle airplanes"]? boolean
            ---@field ["Battleplanes"]? boolean
            ---@field ["Bomb"]? boolean
            ---@field ["Bombers"]? boolean
            ---@field ["Buildings"]? boolean
            ---@field ["Cars"]? boolean
            ---@field ["catapult"]? boolean
            ---@field ["cord"]? boolean
            ---@field ["Corvettes"]? boolean
            ---@field ["Cruise missiles"]? boolean
            ---@field ["Cruisers"]? boolean
            ---@field ["CustomAimPoint"]? boolean
            ---@field ["Datalink"]? boolean
            ---@field ["DetectionByAWACS"]? boolean
            ---@field ["Destroyers"]? boolean
            ---@field ["EWR"]? boolean
            ---@field ["Fighters"]? boolean
            ---@field ["Fortifications"]? boolean
            ---@field ["Frigates"]? boolean
            ---@field ["Grass Airfields"]? boolean
            ---@field ["Ground Units"]? boolean
            ---@field ["Ground Units Non Airdefence"]? boolean
            ---@field ["Ground vehicles"]? boolean
            ---@field ["Heavy armed ships"]? boolean
            ---@field ["HeavyArmoredUnits"]? boolean
            ---@field ["Helicopters"]? boolean
            ---@field ["Heliports"]? boolean
            ---@field ["human_vehicle"]? boolean
            ---@field ["IFV"]? boolean
            ---@field ["IR Guided SAM"]? boolean
            ---@field ["Indirect fire"]? boolean
            ---@field ["Infantry"]? boolean
            ---@field ["Infantry carriers"]? boolean
            ---@field ["Interceptors"]? boolean
            ---@field ["Light armed ships"]? boolean
            ---@field ["LightArmoredUnits"]? boolean
            ---@field ["LR SAM"]? boolean
            ---@field ["MANPADS"]? boolean
            ---@field ["MANPADS AUX"]? boolean
            ---@field ["MLRS"]? boolean
            ---@field ["MR SAM"]? boolean
            ---@field ["Missile"]? boolean
            ---@field ["Missiles"]? boolean
            ---@field ["Mobile AAA"]? boolean
            ---@field ["Modern Tanks"]? boolean
            ---@field ["Multirole fighters"]? boolean
            ---@field ["NonAndLightArmoredUnits"]? boolean
            ---@field ["NonArmoredUnits"]? boolean
            ---@field ["Old Tanks"]? boolean
            ---@field ["Planes"]? boolean
            ---@field ["Point"]? boolean
            ---@field ["Prone"]? boolean
            ---@field ["RADAR_BAND1_FOR_ARM"]? boolean
            ---@field ["RADAR_BAND2_FOR_ARM"]? boolean
            ---@field ["Refuelable"]? boolean
            ---@field ["Rocket"]? boolean
            ---@field ["Rocket Attack Valid AirDefence"]? boolean
            ---@field ["SAM"]? boolean
            ---@field ["SAM AUX"]? boolean
            ---@field ["SAM CC"]? boolean
            ---@field ["SAM LL"]? boolean
            ---@field ["SAM SR"]? boolean
            ---@field ["SAM TR"]? boolean
            ---@field ["SAM elements"]? boolean
            ---@field ["SAM related"]? boolean
            ---@field ["SR SAM"]? boolean
            ---@field ["Shell"]? boolean
            ---@field ["Ships"]? boolean
            ---@field ["Static AAA"]? boolean
            ---@field ["Strategic bombers"]? boolean
            ---@field ["Tankers"]? boolean
            ---@field ["Tanks"]? boolean
            ---@field ["Transport helicopters"]? boolean
            ---@field ["Transports"]? boolean
            ---@field ["Trucks"]? boolean
            ---@field ["UAVs"]? boolean
            ---@field ["Unarmed ships"]? boolean
            ---@field ["Unarmed vehicles"]? boolean
            ---@field ["Vehicles"]? boolean
            ---@field ["Weapon"]? boolean
            ---@field ["low_reflection_vessel"]? boolean
            ---@field ["no_tail_trail"]? boolean
            ---@field ["plane_carrier"]? boolean
            ---@field ["ski_jump"]? boolean

            ---Represents the detailed information of an aircraft.
            ---@class decs_Unit
            ---@field speedMax0 number Maximum speed at sea level
            ---@field massEmpty number Empty mass of the aircraft in kg
            ---@field tankerType number Tanker type identifier
            ---@field range number Maximum range of the aircraft in km
            ---@field box Box Bounding box of the aircraft
            ---@field Hmax number Maximum operational altitude in meters
            ---@field Kmax number Maximum G-load
            ---@field category number Category of the aircraft
            ---@field speedMax10K number Maximum speed at 10,000 meters
            ---@field NyMin number Minimum load factor (G-force)
            ---@field fuelMassMax number Maximum fuel mass in kg
            ---@field speedMax number Maximum speed in km/h
            ---@field NyMax number Maximum load factor (G-force)
            ---@field massMax number Maximum mass of the aircraft in kg
            ---@field RCS number Radar Cross Section (RCS)
            ---@field displayName string Display name of the aircraft
            ---@field life number Structural life in years
            ---@field VyMax number Maximum climb rate in m/s
            ---@field attributes table<Attributes, boolean> The attributes of the aircraft
            ---@field typeName string Type name of the aircraft
            ---@field Kab number Kab rating
        end

        ---**Unit ammo Class**
        do
            ---@class Ammo_table
            ---@field count number x anount of the weapon present on the plane
            ---@field desc Ammo_desc

            --- Represents the detailed description of a missile.
            ---@class Ammo_desc
            ---@field missileCategory Weapon.MissileCategory The category of the missile.
            ---@field rangeMaxAltMax number The maximum range at the maximum altitude.
            ---@field rangeMin number The minimum range.
            ---@field displayName string The display name of the missile.
            ---@field rangeMaxAltMin number The maximum range at the minimum altitude.
            ---@field altMax number The maximum altitude.
            ---@field RCS number The radar cross-section.
            ---@field box Box The bounding box dimensions of the missile.
            ---@field altMin number The minimum altitude.
            ---@field life number The life expectancy or durability.
            ---@field fuseDist number The fuse distance.
            ---@field category Weapon.Category The category identifier.
            ---@field guidance Weapon.GuidanceType The guidance system identifier.
            ---@field warhead Warhead The warhead details.
            ---@field typeName string The type name of the missile.
            ---@field Nmax number The maximum overload.
        end

        --**Unit Seat class**
        do
            ---@class Unit_Seats_desc
            ---@field isAlive boolean
            ---@field isEjected boolean
            ---@field isPlayer boolean
            ---@field isPresent boolean
            ---@field role_display_name string
            ---@field role_id string
        end
    end

    --Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Unit
    ---@class Unit : Object
    Unit = {}

    ---Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Unit
    ---@enum Unit.Category
    Unit.Category = {
        AIRPLANE = 0,
        HELICOPTER = 1,
        GROUND_UNIT = 2,
        SHIP = 3,
        STRUCTURE = 4
    }

    ---Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Unit
    ---@enum Unit.OpticType
    Unit.OpticType = {
        TV = 0,
        LLTV = 1,
        IR = 2
    }

    ---Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Unit
    ---@enum Unit.RadarType
    Unit.RadarType = {
        AS = 0,
        SS = 1
    }

    ---Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Unit
    Unit.RefuelingSystem = {
        BOOM_AND_RECEPTACLE = 0,
        PROBE_AND_DROGUE = 1
    }

    ---Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Unit
    ---@enum Unit.SensorType
    Unit.SensorType = {
        OPTIC = 0,
        RADAR = 1,
        IRST = 2,
        RWR = 3
    }

    --Functions
    do
        --No Docu
        ---@param self Unit
        ---@param ... unknown
        function Unit.LoadOnBoard(self, ...) end

        --No docu
        ---@param self Unit
        ---@param ... unknown
        ---@return boolean
        function Unit.OldCarrierMenuShow(self, ...) end

        --No Docu
        ---@param self Unit
        ---@param ... unknown
        function Unit.UnloadCargo(self, ...) end

        --No Docu
        ---@param self Unit
        ---@param ... unknown
        ---@return boolean
        function Unit.canShipLanding(self, ...) end

        --no Docu
        ---@param self Unit
        ---@param ... unknown
        ---@return boolean
        function Unit.checkOpenRamp(self, ...) end

        --no Docu
        ---@param self Unit
        ---@param ... unknown
        function Unit.disembarking(self, ...) end

        ---Sets the passed group or unit objects radar emitters on or off. Can be used on sam sites for example to shut down the radar without setting AI off or changing the alarm state.
        ---https://wiki.hoggitworld.com/view/DCS_func_enableEmission
        ---@param setting boolean
        function Unit.enableEmission(self, setting) end

        --No Docu
        ---@param self Unit
        ---@param ... unknown
        function Unit.getAirbase(self, ...) end

        ---Returns an ammo table for all types of loaded ammunition on a given Unit. Ammo table is indexed by ammo type and contains a weapon description table and a count variable defining "how much" is on board.
        ---https://wiki.hoggitworld.com/view/DCS_func_getAmmo
        ---@return table<number, Ammo_table>
        function Unit.getAmmo(self) end

        ---Returns an instance of the calling class for the object of a specified name. The objects name is defined either in the mission editor or within functions that can dynamically spawn objects. All static objects and unit names must be unique. However groups may have the same name as a unit or static Unit. This function can provide access to non activated units and groups.
        ---https://wiki.hoggitworld.com/view/DCS_func_getByName
        ---@return self?
        ---@param name string
        function Unit.getByName(name) end

        ---Returns a localized string of the units callsign. In the case of airbases the callsign of world airbases is defined by the game. Callsigns for units, farps, or ships can be specified by the user with the mission editor or scripting engine.
        ---https://wiki.hoggitworld.com/view/DCS_func_getCallsign
        ---@return string
        function Unit.getCallsign(self) end

        --No Docu
        ---@param self Unit
        ---@param ... unknown
        ---@return table<number, StaticObject>
        function Unit.getCargosOnBoard(self, ...) end

        ---Returns an enumerator of the category for the specific Unit. The enumerator returned is dependent on the category of the object and how the function is called. See enumerators Group.Category, Unit.Category, and Spot.Category for further reference.
        ---https://wiki.hoggitworld.com/view/DCS_func_getCategoryEx
        ---@return Unit.Category
        function Unit.getCategoryEx(self) end

        ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
        ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
        ---@return coalition.side
        function Unit.getCoalition(self) end

        --No Docu
        ---@param self Unit
        ---@param ... unknown
        ---@return unknown class empty meta table
        function Unit.getCommunicator(self, ...) end

        ---Returns the controller of the specified Unit. Ships and ground units can only be controlled at a group level. Airplanes and helicopters can be controlled at both a group and unit level.
        ---https://wiki.hoggitworld.com/view/DCS_func_getController
        ---@return Controller class
        function Unit.getController(self) end

        ---Returns an enumerator that defines the country that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
        ---https://wiki.hoggitworld.com/view/DCS_func_getCountry
        ---@return country.id
        function Unit.getCountry(self) end

        ---Return a description table of the given Unit. Table entries are dependent on the category of object and the sub-categories that may exist within that object type. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDesc
        ---@return decs_Unit class
        function Unit.getDesc(self) end

        ---Return a description table of the specified Object type. Object does not need to be in the mission in order to query its data. Function works with Unit, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDescByName
        ---@return decs_Unit class
        ---@param typeName string
        function Unit.getDescByName(typeName) end

        ---Returns the number of infantry that can be embark onto the aircraft. Only returns a value if run on airplanes or helicopters. Returns nil if run on ground or ship units.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDescentCapacity
        ---@return number
        function Unit.getDescentCapacity(self) end

        --No Docu
        ---Returns the amount of units on board
        ---@param self Unit
        ---@param ... unknown
        ---@return number
        function Unit.getDescentOnBoard(self, ...) end

        ---Returns the current value for an animation argument on the external model of the given Unit. Each model animation has an id tied to with different values representing different states of the model. Animation arguments can be figured out by opening the respective 3d model in the modelviewer. For example you can determine the rotation and orientation of the barrel of a Tanks cannon by checking its animation arguments. More practically you can determine whether or not a helicopters doors are open. If draw argument value is invalid for the unit in question a value of 0 will be returned.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDrawArgumentValue
        ---@Example Return -1 to +1 TODO:
        ---@return number
        ---@param arg number
        function Unit.getDrawArgumentValue(self, arg) end

        --No Docu
        ---Returns a string that represents the units 'force' ex : The Army, Marine Corps, Navy, Air Force, Space Force and Coast Guard
        ---@param self Unit
        ---@param ... unknown
        ---@return Force_name
        function Unit.getForcesName(self, ...) end

        ---Returns a percentage of the current fuel remaining in an aircraft's inventory based on the maximum possible fuel load. Value ranges from 0.00 to 1.00. If external fuel tanks are present the value may display above 1.0. Fuel is always drained from the external tanks before moving to internal tanks. Ground vehicles and ships will always return a value of 1.
        ---https://wiki.hoggitworld.com/view/DCS_func_getFuel
        ---@return number
        function Unit.getFuel(self) end

        --No Docu
        ---Returns a number a-10 is 1 unkown meaning
        ---@param self Unit
        ---@param ... unknown
        ---@return number
        function Unit.getFuelLowState(self, ...) end

        ---Returns the Group object that the Unit belongs to.
        ---https://wiki.hoggitworld.com/view/DCS_func_getGroup
        ---@return Group class
        function Unit.getGroup(self) end

        ---Returns a number which defines the unique mission id of a given Unit.
        ---https://wiki.hoggitworld.com/view/DCS_func_getID
        ---@return number
        function Unit.getID(self) end

        ---Returns the current "life" of a unit. Also referred to as "hit points". All units in DCS have a value that defines how much life is left. If this value is less than 1 the unit is considered "dead". Ground and ship units that are on fire and in the process of "cooking off" will return a life value of 0 until the object explodes. Aircraft are more complex due to sub-systems and damage models which will effect the life value.
        ---https://wiki.hoggitworld.com/view/DCS_func_getLife
        ---@return number
        function Unit.getLife(self) end

        ---Returns the initial life value of a unit. All units spawn with "max HP" and this value will never change. Can be used with Unit.getLife() to determine the percentage of a units life as each unit has a unique life value.
        ---https://wiki.hoggitworld.com/view/DCS_func_getLife0
        ---@return number
        function Unit.getLife0(self) end

        ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Unit.getName(obj) the value can be different than if run via Unit.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
        ---https://wiki.hoggitworld.com/view/DCS_func_getName
        ---@return string
        function Unit.getName(self) end

        ---Returns a table of friendly cargo objects indexed numerically and sorted by distance from the helicopter. Returns nil if used on any object other than a helicopter.
        ---https://wiki.hoggitworld.com/view/DCS_func_getNearestCargos
        ---@return table<number, Objects>
        function Unit.getNearestCargos(self) end

        --No Docu
        --When running on a a-10 nil table as return can only presume its similair to 'getNearestCargos' but only cargo for this aircraft runned on?
        ---@param self Unit
        ---@param ... unknown
        ---@return table<number, Objects>
        function Unit.getNearestCargosForAircraft(self, ...) end

        ---Returns a numerical value of the default index of the specified unit within the group as defined within the mission editor or addGroup scripting function. This value is not changed as units within the group are destroyed.
        ---https://wiki.hoggitworld.com/view/DCS_func_getNumber
        ---@return number index
        function Unit.getNumber(self) end

        ---Returns the runtime object Id associated with the unit. Every single object on the map is represented by a unique objectID value.
        ---https://wiki.hoggitworld.com/view/DCS_func_getObjectID
        ---@return number
        function Unit.getObjectID(self) end

        ---Returns a string value of the name of the player if the unit is currently controlled by a player. If a unit is controlled by AI the function returns nil.
        ---https://wiki.hoggitworld.com/view/DCS_func_getPlayerName
        ---@return string
        function Unit.getPlayerName(self) end

        ---Returns two values. The first value is a boolean indicating if any radar on the Unit is operational. The second value is the Object the radar is most interested in and/or actively tracking.
        ---https://wiki.hoggitworld.com/view/DCS_func_getRadar
        ---@return boolean, Objects
        function Unit.getRadar(self) end

        --No Docu
        ---Returns a desciption of all the seats on the unit if one player is in the slot all 'seats' will return there playername
        ---@param self Unit
        ---@param ... unknown
        ---@return table<number, Unit_Seats_desc>
        function Unit.getSeats(self, ...) end

        ---Returns a table defining each of the sensors available to the specified unit.
        ---https://wiki.hoggitworld.com/view/DCS_func_getSensors
        ---@return table
        function Unit.getSensors(self) end

        ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
        ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
        ---@return string
        function Unit.getTypeName(self) end

        --No Docu
        ---similair likely to 'canShipLanding' but its more "is carrier capeble" a uh1h retruns false for canShipLanding but true hasCarrier
        ---@param self Unit
        ---@param ... unknown
        ---@return boolean
        function Unit.hasCarrier(self, ...) end

        ---Returns true if the unit has the specified sensors. If SensorType is not specified the function will return true if the unit has any type of sensors. Some sensorTypes have additional subcategories which can be used to further specify for certain sensors.
        ---https://wiki.hoggitworld.com/view/DCS_func_hasSensors
        ---@return boolean
        ---@param SensorType Unit.SensorType
        ---@param SubCategory Unit.OpticType|Unit.RadarType
        function Unit.hasSensors(self, SensorType, SubCategory) end

        ---Returns a boolean value if the unit is activated. Units set to late activation would return false if checked by this function.
        ---https://wiki.hoggitworld.com/view/DCS_func_isActive
        ---@return boolean
        function Unit.isActive(self) end

        --No Docu
        ---@param self Unit
        ---@param ... unknown
        function Unit.markDisembarkingTask(self, ...) end

        --No Docu
        ---appears to do nothing (even on ch-47F)
        ---@param self Unit
        ---@param ... unknown
        function Unit.openRamp(self, ...) end

        --No Docu
        ---if the aircraft can do VTOL operations including helis
        ---@param self Unit
        ---@param ... unknown
        ---@return boolean
        function Unit.vtolableLA(self, ...) end

        --ovweload Inhereted fuctions from Object class
        do
            ---Return an enumerator of the category for the specific Unit. The enumerator returned is dependent on the category of the Unit. See enumerators Group.Category, Unit.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Unit.Category.
            ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
            ---@return Object.Category, Unit.Category
            function Unit.getCategory(self) end
        end
    end
end
