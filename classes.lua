---@diagnostic disable: undefined-doc-name
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

-- TODO : make more classes of the getDescByName functions
-- https://wiki.hoggitworld.com/view/DCS_func_getDescByName

-- Unit.hasSensors and below check for classe



---@meta


---**Unit Desc Class**

---Represents the bounding box of an object with minimum and maximum coordinates.
---@class Box
---@field min vec3 The minimum 3D coordinates of the box
---@field max vec3 The maximum 3D coordinates of the box

---Represents the attributes of an aircraft with boolean values.
---@class Attributes
---@field Air boolean Indicates if the object is classified as Air
---@field Battle_airplanes boolean Indicates if the object is a battle airplane
---@field NonAndLightArmoredUnits boolean Indicates if the object is non or lightly armored
---@field Battleplanes boolean Indicates if the object is a battleplane
---@field Refuelable boolean Indicates if the object is refuelable
---@field All boolean Indicates if the object is classified under all
---@field Planes boolean Indicates if the object is a plane
---@field NonArmoredUnits boolean Indicates if the object is non-armored

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
---@field attributes Attributes The attributes of the aircraft
---@field typeName string Type name of the aircraft
---@field Kab number Kab rating

---**Runway Class**

---@class Runway
---@field course number The course or bearing in radians
---@field Name number The identifier for the runway
---@field position vec3 The position of the runway
---@field length number The length of the runway in meters
---@field width number The width of the runway in meters


---**Airfield Desc Class**


---Represents the attributes of an Airfield.
---@class EntityAttributes_airfield
---@field Airfields boolean Indicates if the entity is an airfield

---Represents an entity with life, attributes, and other properties.
---@class desc_Airfield
---@field life number The life parameter of the entity
---@field attributes EntityAttributes_airfield The attributes of the entity
---@field _origin string The origin or source of the entity
---@field category number The category of the entity
---@field typeName string The type name of the entity
---@field displayName string The display name of the entity


---**Object Desc Class**


---@class desc_Object
---@field life number
---@field box Box


---**Weapon desc Class**

---@class Warhead
---@field type WarheadType The type of the warhead
---@field mass number The mass of the warhead
---@field caliber number The caliber of the warhead
---@field explosiveMass number|nil The explosive mass for HE and AP(+HE) warheads
---@field shapedExplosiveMass number|nil The shaped explosive mass for shaped explosive warheads
---@field shapedExplosiveArmorThickness number|nil The armor thickness for shaped explosive warheads


---@class desc_weapon
---@field category Weapon_Cat field only accessable when Weapon.Category is 0
---@field warhead Warhead field only accessable when Weapon.Category is 0
---@field guidance Weapon_guidance field only accessable when Weapon.Category is 1 or 3
---@field rangeMin number field only accessable when Weapon.Category is 1
---@field rangeMaxAltMin number field only accessable when Weapon.Category is 1
---@field rangeMaxAltMax number field only accessable when Weapon.Category is 1
---@field altMin number field only accessable when Weapon.Category is 1 or 3
---@field altMax number field only accessable when Weapon.Category is 1 or 3
---@field Nmax number field only accessable when Weapon.Category is 1
---@field fuseDist number field only accessable when Weapon.Category is 1
---@field distMin number field only accessable when Weapon.Category is 2
---@field distMax number field only accessable when Weapon.Category is 2


---**DetectedTarget Controller.getDetectedTargets**

---Applies only to a Unit Controller. Cannot be used at the group level.
---@class DetectedTarget_func
---@field object Object
---@field visible boolean
---@field type boolean
---@field distance boolean


-- https://wiki.hoggitworld.com/view/Simulator_Scripting_Engine_Documentation

---Represents an object with body, unique name, category and type. Non-final class
---https://wiki.hoggitworld.com/view/DCS_Class_Object
Object = {}
---Object.Category enum that stores object categories.
---https://wiki.hoggitworld.com/view/DCS_Class_Object
---@enum Object.Category
Object.Category = {
    UNIT = 1,
    WEAPON = 2,
    STATIC = 3,
    BASE = 2,
    SCENERY = 2,
    Cargo = 2,
}

---Represents all objects placed on the map. Bridges, buildings, etc.
---https://wiki.hoggitworld.com/view/DCS_Class_Scenery_Object
SceneryObject = {}

---Represents all Objects those may belong to a coalition: units, airbases, static objects, weapon. Non-final class.
---https://wiki.hoggitworld.com/view/DCS_Class_Coalition_Object
CoalitionObject = {}

---Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
---https://wiki.hoggitworld.com/view/DCS_Class_Unit
Unit = {}

---Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
---https://wiki.hoggitworld.com/view/DCS_Class_Unit
---@enum Unit_category
Unit.Category = {
    AIRPLANE = 0,
    HELICOPTER = 1,
    GROUND_UNIT = 2,
    SHIP = 3,
    STRUCTURE = 4
}

---Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
---https://wiki.hoggitworld.com/view/DCS_Class_Unit
Unit.RefuelingSystem = {
    BOOM_AND_RECEPTACLE = 0,
    PROBE_AND_DROGUE = 1
}

---Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
---https://wiki.hoggitworld.com/view/DCS_Class_Unit
---@enum Unit_sensortype
Unit.SensorType = {
    OPTIC = 0,
    RADAR = 1,
    IRST = 2,
    RWR = 3
}

---Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
---https://wiki.hoggitworld.com/view/DCS_Class_Unit
---@enum Unit_SensorSub_cat_optic
Unit.OpticType = {
    TV = 0,
    LLTV = 1,
    IR = 2
}


---Represents units: airplanes, helicopters, vehicles, ships and armed ground structures.
---https://wiki.hoggitworld.com/view/DCS_Class_Unit
---@enum Unit_SensorSub_cat_radar
Unit.RadarType = {
    AS = 0,
    SS = 1
}

---Represents airbases: airdromes, helipads and ships with flying decks or landing pads.
---https://wiki.hoggitworld.com/view/DCS_Class_Airbase
Airbase = {}

---Represents airbases: airdromes, helipads and ships with flying decks or landing pads.
---https://wiki.hoggitworld.com/view/DCS_Class_Airbase
Airbase.Category = {
    AIRDROME = 0,
    HELIPAD = 1,
    SHIP = 2
}

---Represents a weapon object: shell, rocket, missile and bomb
---https://wiki.hoggitworld.com/view/DCS_Class_Weapon
Weapon = {}

---Represents a weapon object: shell, rocket, missile and bomb
---https://wiki.hoggitworld.com/view/DCS_Class_Weapon
---@enum Weapon_Cat
Weapon.Category = {
    SHELL = 0,
    MISSILE = 1,
    ROCKET = 2,
    BOMB = 3
}

---Represents a weapon object: shell, rocket, missile and bomb
---https://wiki.hoggitworld.com/view/DCS_Class_Weapon
---@enum Weapon_guidance
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
---@enum WarheadType
Weapon.WarheadType = {
    AP = 0,
    HE = 1,
    SHAPED_EXPLOSIVE = 2
}

---Represents static objects added in the Mission Editor or via scripting commands.
---https://wiki.hoggitworld.com/view/DCS_Class_Static_Object
StaticObject = {}

---Represents static objects added in the Mission Editor or via scripting commands.
---https://wiki.hoggitworld.com/view/DCS_Class_Static_Object
StaticObject.Category = {
    VOID = 0,
    UNIT = 1,
    WEAPON = 2,
    STATIC = 3,
    BASE = 4,
    SCENERY = 5,
    CARGO = 6
}


---Represents a group of units.
---https://wiki.hoggitworld.com/view/DCS_Class_Group
Group = {}

---Represents a group of units.
---https://wiki.hoggitworld.com/view/DCS_Class_Group
---@enum groupCategory
Group.Category = {
    AIRPLANE = 0,
    HELICOPTER = 1,
    GROUND = 2,
    SHIP = 3,
    TRAIN = 4
}
---Controller is an object that performs AI-routines. In other words a controller is an instance of the AI. Controller stores the current main task, active enroute tasks, and behavior options. Controllers also can perform commands. Controllers exist at both a group and unit level. However only planes and helicopters can be controlled individually at a unit level. Some functions can only work for Unit Controllers. Different tasks, options, and commands are available for the different group types. (Plane, Helicopter, Ground Unit, and Ship). See the linked articles on these subjects for more information.
---https://wiki.hoggitworld.com/view/DCS_Class_Controller
Controller = {}

---Controller is an object that performs AI-routines. In other words a controller is an instance of the AI. Controller stores the current main task, active enroute tasks, and behavior options. Controllers also can perform commands. Controllers exist at both a group and unit level. However only planes and helicopters can be controlled individually at a unit level. Some functions can only work for Unit Controllers. Different tasks, options, and commands are available for the different group types. (Plane, Helicopter, Ground Unit, and Ship). See the linked articles on these subjects for more information.
---https://wiki.hoggitworld.com/view/DCS_Class_Controller
Controller.Detection = {
    VISUAL = 1,
    OPTIC = 2,
    RADAR = 4,
    IRST = 8,
    RWR = 16,
    DLINK = 32
}

---Represents a spot from laser or IR-pointer. Final class.
---https://wiki.hoggitworld.com/view/DCS_Class_Spot
Spot = {}

---Represents a spot from laser or IR-pointer. Final class.
---https://wiki.hoggitworld.com/view/DCS_Class_Spot
Spot.Category = {
    INFRA_RED = 0,
    LASER = 1
}

---The warehouse class gives control over warehouses that exist in airbase objects. These warehouses can limit the aircraft, munitions, and fuel available to coalition aircraft.
---https://wiki.hoggitworld.com/view/DCS_Class_Warehouse
Warehouse = {}

---The warehouse class gives control over warehouses that exist in airbase objects. These warehouses can limit the aircraft, munitions, and fuel available to coalition aircraft.
---**Documentation is poor so this might not be correct**
---https://wiki.hoggitworld.com/view/DCS_Class_Warehouse
---@enum liquidType
Warehouse.liquidtypes = {
    jetfuel = 0,
    Aviation_gasoline = 1,
    MW50 = 2,
    Diesel = 3
}

---@class Airbase
Airbase = {}

do

    ---Changes the passed airbase object's coalition to the set value. Must be used with Airbase.autoCapture to disable auto capturing of the base, otherwise the base can revert back to a different coalition depending on the situation and built in game capture rules.
    ---https://wiki.hoggitworld.com/view/DCS_func_setCoalition
    ---@param coa_enum side .
    function Airbase.setCoalition(self , coa_enum) end

    ---Enables or disables the airbase and FARP auto capture game mechanic where ownership of a base can change based on the presence of ground forces or the default setting assigned in the editor.
    ---true : enables autoCapture behavior
    ---false : disables autoCapture behavior
    ---https://wiki.hoggitworld.com/view/DCS_func_autoCapture
    ---@param setting boolean
    function Airbase.autoCapture(self , setting) end

    ---Returns the current autoCapture setting for the passed base.
    ---true: Auto capture is enabled
    ---false; Auto capture is disabled
    ---https://wiki.hoggitworld.com/view/DCS_func_autoCaptureIsOn
    ---@return boolean
    function Airbase.autoCaptureIsOn(self) end

    ---Returns the wsType of every object that exists in DCS. A wsType is a table consisting of 4 entries indexed numerically. It can be used to broadly categorize object types. The table can be broken down as: {mainCategory, subCat1, subCat2, index}
    ---For example all 3 A-10 aircraft in game will have a wsType of {1, 1, 6, n} where n is whichever index the unit happens to be in.
    ---There are several items that have a wsType of {0, 0, 0, 0}. Typically these include shells, static objects, and turrets.
    ---https://wiki.hoggitworld.com/view/DCS_func_getResourceMap
    ---@return table
    function Airbase.getResourceMap(self) end

    ---Returns the warehouse object associated with the airbase object. Can then be used to call the warehouse class functions to modify the contents of the warehouse.
    ---https://wiki.hoggitworld.com/view/DCS_func_getWarehouse
    ---@return Warehouse class
    function Airbase.getWarehouse(self) end

    ---Returns an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object and how the function is called. See enumerators Group.Category, Object.Category, and Spot.Category for further reference.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategoryEx
    ---@return enum
    function Airbase.getCategoryEx(self) end

    ---Return a boolean value based on whether the object currently exists in the mission. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_isExist
    ---@return boolean
    function Airbase.isExist(self) end

    ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_destroy
    ---@return function
    function Airbase.destroy(self) end

    ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
    ---@return any enum
    function Airbase.getCategory(self) end

    ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
    ---@return number enum coalition.side: 0 = neutral, 1 = red, 2 = blue
    function Airbase.getCoalition(self) end

    ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Object.getName(obj) the value can be different than if run via Unit.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
    ---https://wiki.hoggitworld.com/view/DCS_func_getName
    ---@return string
    function Airbase.getName(self) end

    ---Returns a number which defines the unique mission id of a given object.
    ---https://wiki.hoggitworld.com/view/DCS_func_getID
    ---@return number
    function Airbase.getID(self) end

    ---Returns the unit object of the specified unitIndex within the group. If the index is not valid, this function will return nil.
    ---https://wiki.hoggitworld.com/view/DCS_func_getUnit
    ---@ExampleDesc Returns the first unit in a group
    ---@Example local unit1 = Group.getByName('tanks'):getUnit(1)
    ---@return Unit class
    ---@param UnitIndex number
    function Airbase.getUnit(self, UnitIndex) end

    ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
    ---@return string
    function Airbase.getTypeName(self) end

    ---Return a description table of the given object. Table entries are dependent on the category of object and the sub-categories that may exist within that object type. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDesc
    ---@return table
    function Airbase.getDesc(self) end

    ---Returns a boolean value if the object in question has the passed attribute. See Article list of Attributes or db_attibutes.lua in C:\Program Files\Eagle Dynamics\DCS World\Scripts\Database for more details. Additionally attributes for each object are defined within their DB lua file. DB files provided on github for reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_hasAttribute
    ---@return boolean
    ---@param attribute string
    function Airbase.hasAttribute(self, attribute) end

    ---Returns a vec3 table of the x, y, and z coordinates for the position of the given object in 3D space. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPoint
    ---@return vec3 class
    function Airbase.getPoint(self) end

    ---Returns a pos3 table of the objects current position and orientation in 3D space. X, Y, Z values are unit vectors defining the objects orientation. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map.Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPosition
    ---@ExampleDesc Position 3 is a table consisting of the point and orientation tables.
    ---@Exampele Position3 = {   p = Vec3, x = Vec3, y = Vec3, z = Vec3 }
    ---@return position3 class
    function Airbase.getPosition(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_getVelocity
    ---@return vec3 class
    function Airbase.getVelocity(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_inAir
    ---@return boolean
    function Airbase.inAir(self) end

    ---Returns an enumerator that defines the country that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCountry
    ---@return countryid country
    function Airbase.getCountry(self) end

    ---Returns a localized string of the units callsign. In the case of airbases the callsign of world airbases is defined by the game. Callsigns for units, farps, or ships can be specified by the user with the mission editor or scripting engine.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCallsign
    ---@return string
    function Airbase.getCallsign(self) end

    ---Returns a table of parking data for a given airbase. If the optional value is passed only available parking will be returned, otherwise all parking at the base is returned. Term types have the following enumerated values: TODO:
    ---https://wiki.hoggitworld.com/view/DCS_func_getParking
    ---@return table
    ---@param available boolean
    function Airbase.getParking(self, available) end

    ---Returns a table with runway information like length, width, course, and Name. position: Returns the center of the runway width: width of the runway in meters Name: runway name, can be off course: bearing in radians. Multiply by -1 to make it useful
    ---https://wiki.hoggitworld.com/view/DCS_func_getRunways
    ---@Example { [1] = { ["course"] = -1.597741484642, ["Name"] = 8, ["position"] = { ["y"] = 952.94458007813, ["x"] = -360507.1875, ["z"] = -75590.0703125, }, ["length"] = 1859.3155517578, ["width"] = 60, }, [2] = { ["course"] = -2.5331676006317, ["Name"] = 26, ["position"] = { ["y"] = 952.94458007813, ["x"] = -359739.875, ["z"] = -75289.5078125, }, ["length"] = 1859.3155517578, ["width"] = 60, }, }
    ---@return table<number,Runway> class
    function Airbase.getRunways(self) end

    ---Returns a table of vec3 objects corresponding to the passed value. Seems to only ever return a single object "Tower" object. Have been unable to get it to work with other types.
    ---https://wiki.hoggitworld.com/view/DCS_func_getTechObjectPos
    ---@Example Return: { ["pos"] = { ["y"] = 30.01003074646, ["x"] = 11039.798828125, ["z"] = 367775.40625, }, }
    ---@return table<"pos", vec3>
    ---@param ObjectType number|string 
    function Airbase.getTechObjectPos(self, ObjectType) end

    ---Returns a boolean value for whether or not the ATC for the passed airbase object has been silenced.
    ---https://wiki.hoggitworld.com/view/DCS_func_getRadioSilentMode
    ---@return boolean
    function Airbase.getRadioSilentMode(self) end

    ---Sets the ATC belonging to an airbase object to be silent and unresponsive. This is useful for disabling the award winning ATC behavior in DCS. Note that this DOES NOT remove the airbase from the list. It just makes it unresponsive and silent to any radio calls to it. true  : enabled silent mode. false : disables silent mode.
    ---https://wiki.hoggitworld.com/view/DCS_func_setRadioSilentMode
    ---@param silent boolean    
    function Airbase.setRadioSilentMode(self, silent) end

    ---Returns an instance of the calling class for the object of a specified name. The objects name is defined either in the mission editor or within functions that can dynamically spawn objects. All static objects and unit names must be unique. However groups may have the same name as a unit or static object. This function can provide access to non activated units and groups.
    ---https://wiki.hoggitworld.com/view/DCS_func_getByName
    ---@return Airbase class
    ---@param name string
    function Airbase.getByName(name) end

    ---Return a description table of the specified Object type. Object does not need to be in the mission in order to query its data. Function works with Unit, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDescByName
    ---@return desc_Airfield class
    ---@param typeName string
    function Airbase.getDescByName(typeName) end
end


---@class Warehouse
Warehouse = {}

do
    ---Adds the passed amount of a given item to the warehouse.
    ---itemName is the typeName associated with the item: "weapons.missiles.AIM_54C_Mk47"
    ---A wsType table can also be used, however the last digit with wsTypes has been known to change. {4, 4, 7, 322}
    ---https://wiki.hoggitworld.com/view/DCS_func_addItem
    ---@param itemName string|table string or table
    ---@param count number
    function Warehouse.addItem(self , itemName ,count) end

    ---Returns the number of the passed type of item currently in a warehouse object.
    ---itemName is the typeName associated with the item: "weapons.missiles.AIM_54C_Mk47"
    ---A wsType table can also be used, however the last digit with wsTypes has been known to change. {4, 4, 7, 322}
    ---https://wiki.hoggitworld.com/view/DCS_func_getItemCount
    ---@return number
    ---@param itemName string|table string or table
    function Warehouse.getItemCount(self , itemName ) end

    ---Sets the passed amount of a given item to the warehouse.
    ---itemName is the typeName associated with the item: "weapons.missiles.AIM_54C_Mk47"
    ---A wsType table can also be used, however the last digit with wsTypes has been known to change. {4, 4, 7, 322}
    ---https://wiki.hoggitworld.com/view/DCS_func_setItem
    ---@param itemName string|table string or table
    ---@param count number
    function Warehouse.setItem(self , itemName, count) end

    ---Removes the amount of the passed item from the warehouse.
    ---itemName is the typeName associated with the item: "weapons.missiles.AIM_54C_Mk47"
    ---A wsType table can also be used, however the last digit with wsTypes has been known to change. {4, 4, 7, 322}
    ---https://wiki.hoggitworld.com/view/DCS_func_removeItemWarehouse
    ---@param itemName string|table string or table
    ---@param count number number
    function Warehouse.removeItem(self , itemName, count) end

    ---Adds the passed amount of a liquid fuel into the warehouse inventory
    ---https://wiki.hoggitworld.com/view/DCS_func_addLiquid
    ---@param liquidType liquidType
    ---@param count number number
    function Warehouse.addLiquid(self , liquidType , count) end

    ---Returns the amount of the passed liquid type within a given warehouse.
    ---https://wiki.hoggitworld.com/view/DCS_func_getLiquidAmount
    ---@param liquidType liquidType
    ---@return number
    function Warehouse.getLiquidAmount(self , liquidType) end

    ---Adds the passed amount of a liquid fuel into the warehouse inventory
    ---https://wiki.hoggitworld.com/view/DCS_func_addLiquid
    ---@param liquidType liquidType
    ---@param count number number
    function Warehouse.setLiquidAmount(self , liquidType , count) end

    ---Removes the set amount of liquid from the inventory in a warehouse.
    ---https://wiki.hoggitworld.com/view/DCS_func_removeLiquid
    ---@param liquidType liquidType
    ---@param count number number
    function Warehouse.removeLiquid(self , liquidType , count) end

    ---Returns the airbase object associated with the warehouse object
    ---https://wiki.hoggitworld.com/view/DCS_func_getOwner
    ---@return Airbase class
    function Warehouse.getOwner(self) end

    ---Returns a full itemized list of everything currently in a warehouse. If a category is set to unlimited then the table will be returned empty.
    ---Aircraft and weapons are indexed by strings.
    ---https://wiki.hoggitworld.com/view/DCS_func_getInventory
    ---@return table
    ---@param itemName string|table string or table
    function Warehouse.getInventory(self , itemName ) end

    ---Returns an instance of the calling class for the object of a specified name. The objects name is defined either in the mission editor or within functions that can dynamically spawn objects. All static objects and unit names must be unique. However groups may have the same name as a unit or static object. This function can provide access to non activated units and groups.
    ---https://wiki.hoggitworld.com/view/DCS_func_getByName
    ---@return Warehouse class
    ---@param name string
    function Warehouse.getByName(name) end

end

---@class Unit
Unit = {}

do
    ---Returns an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object and how the function is called. See enumerators Group.Category, Object.Category, and Spot.Category for further reference.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategoryEx
    ---@return Unit_category enum
    function Unit.getCategoryEx(self) end

    ---Return a boolean value based on whether the object currently exists in the mission. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_isExist
    ---@return boolean
    function Unit.isExist(self) end

    ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_destroy
    function Unit.destroy(self) end

    ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
    ---@return any enum
    function Unit.getCategory(self) end

    ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
    ---@return any enum coalition.side: 0 = neutral, 1 = red, 2 = blue
    function Unit.getCoalition(self) end

    ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Object.getName(obj) the value can be different than if run via Unit.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
    ---https://wiki.hoggitworld.com/view/DCS_func_getName
    ---@return string
    function Unit.getName(self) end

    ---Returns a number which defines the unique mission id of a given object.
    ---https://wiki.hoggitworld.com/view/DCS_func_getID
    ---@return number
    function Unit.getID(self) end

    ---Sets the passed group or unit objects radar emitters on or off. Can be used on sam sites for example to shut down the radar without setting AI off or changing the alarm state.
    ---https://wiki.hoggitworld.com/view/DCS_func_enableEmission
    ---@param setting boolean
    function Unit.enableEmission(self, setting) end

    ---Returns the controller of the specified object. Ships and ground units can only be controlled at a group level. Airplanes and helicopters can be controlled at both a group and unit level.
    ---https://wiki.hoggitworld.com/view/DCS_func_getController
    ---@return Controller class
    function Unit.getController(self) end

    ---Returns the current "life" of a unit. Also referred to as "hit points". All units in DCS have a value that defines how much life is left. If this value is less than 1 the unit is considered "dead". Ground and ship units that are on fire and in the process of "cooking off" will return a life value of 0 until the object explodes. Aircraft are more complex due to sub-systems and damage models which will effect the life value.
    ---https://wiki.hoggitworld.com/view/DCS_func_getLife
    ---@return number
    function Unit.getLife(self) end

    ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
    ---@return string
    function Unit.getTypeName(self) end

    ---Return a description table of the given object. Table entries are dependent on the category of object and the sub-categories that may exist within that object type. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDesc
    ---@return decs_Unit class
    function Unit.getDesc(self) end

    ---Returns a boolean value if the object in question has the passed attribute. See Article list of Attributes or db_attibutes.lua in C:\Program Files\Eagle Dynamics\DCS World\Scripts\Database for more details. Additionally attributes for each object are defined within their DB lua file. DB files provided on github for reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_hasAttribute
    ---@return boolean
    ---@param attribute string
    function Unit.hasAttribute(self, attribute) end

    ---Returns a vec3 table of the x, y, and z coordinates for the position of the given object in 3D space. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPoint
    ---@return vec3 class
    function Unit.getPoint(self) end

    ---Returns a pos3 table of the objects current position and orientation in 3D space. X, Y, Z values are unit vectors defining the objects orientation. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map.Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPosition
    ---@ExampleDesc Position 3 is a table consisting of the point and orientation tables.
    ---@Exampele Position3 = {   p = Vec3, x = Vec3, y = Vec3, z = Vec3 }
    ---@return position3 class
    function Unit.getPosition(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_getVelocity
    ---@return vec3 class
    function Unit.getVelocity(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_inAir
    ---@return boolean
    function Unit.inAir(self) end

    ---Returns an enumerator that defines the country that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCountry
    ---@return number enum country.id
    function Unit.getCountry(self) end

    ---Returns a boolean value if the unit is activated. Units set to late activation would return false if checked by this function.
    ---https://wiki.hoggitworld.com/view/DCS_func_isActive
    ---@return boolean
    function Unit.isActive(self) end

    ---Returns a string value of the name of the player if the unit is currently controlled by a player. If a unit is controlled by AI the function returns nil.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPlayerName
    ---@return string
    function Unit.getPlayerName(self) end

    ---Returns a numerical value of the default index of the specified unit within the group as defined within the mission editor or addGroup scripting function. This value is not changed as units within the group are destroyed.
    ---https://wiki.hoggitworld.com/view/DCS_func_getNumber
    ---@return number index
    function Unit.getNumber(self) end

    ---Returns the Group object that the Unit belongs to.
    ---https://wiki.hoggitworld.com/view/DCS_func_getGroup
    ---@return Group class
    function Unit.getGroup(self) end

    ---Returns a localized string of the units callsign. In the case of airbases the callsign of world airbases is defined by the game. Callsigns for units, farps, or ships can be specified by the user with the mission editor or scripting engine.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCallsign
    ---@return string
    function Unit.getCallsign(self) end

    ---Returns the initial life value of a unit. All units spawn with "max HP" and this value will never change. Can be used with Unit.getLife() to determine the percentage of a units life as each unit has a unique life value.
    ---https://wiki.hoggitworld.com/view/DCS_func_getLife0
    ---@return number
    function Unit.getLife0(self) end

    ---Returns a percentage of the current fuel remaining in an aircraft's inventory based on the maximum possible fuel load. Value ranges from 0.00 to 1.00. If external fuel tanks are present the value may display above 1.0. Fuel is always drained from the external tanks before moving to internal tanks. Ground vehicles and ships will always return a value of 1.
    ---https://wiki.hoggitworld.com/view/DCS_func_getLife0
    ---@return number
    function Unit.getFuel(self) end

    ---Returns an ammo table for all types of loaded ammunition on a given object. Ammo table is indexed by ammo type and contains a weapon description table and a count variable defining "how much" is on board.
    ---https://wiki.hoggitworld.com/view/DCS_func_getAmmo
    ---@return table
    function Unit.getAmmo(self) end

    ---Returns a table defining each of the sensors available to the specified unit.
    ---https://wiki.hoggitworld.com/view/DCS_func_getSensors
    ---@return table
    function Unit.getSensors(self) end

    ---Returns true if the unit has the specified sensors. If SensorType is not specified the function will return true if the unit has any type of sensors. Some sensorTypes have additional subcategories which can be used to further specify for certain sensors.
    ---https://wiki.hoggitworld.com/view/DCS_func_hasSensors
    ---@return boolean
    ---@param SensorType Unit_sensortype 
    ---@param SubCategory Unit_SensorSub_cat_optic|Unit_SensorSub_cat_radar enum
    function Unit.hasSensors(self, SensorType, SubCategory) end

    ---Returns two values. The first value is a boolean indicating if any radar on the Unit is operational. The second value is the Object the radar is most interested in and/or actively tracking.
    ---https://wiki.hoggitworld.com/view/DCS_func_getRadar
    ---@return boolean, Object class
    function Unit.getRadar(self) end

    ---Returns the current value for an animation argument on the external model of the given object. Each model animation has an id tied to with different values representing different states of the model. Animation arguments can be figured out by opening the respective 3d model in the modelviewer. For example you can determine the rotation and orientation of the barrel of a Tanks cannon by checking its animation arguments. More practically you can determine whether or not a helicopters doors are open. If draw argument value is invalid for the unit in question a value of 0 will be returned.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDrawArgumentValue
    ---@Example Return -1 to +1 TODO:
    ---@return number
    ---@param arg number
    function Unit.getDrawArgumentValue(self, arg) end

    ---Returns a table of friendly cargo objects indexed numerically and sorted by distance from the helicopter. Returns nil if used on any object other than a helicopter.
    ---https://wiki.hoggitworld.com/view/DCS_func_getNearestCargos
    ---@return table<number, Object>
    function Unit.getNearestCargos(self) end

    ---Sets the passed group or unit objects radar emitters on or off. Can be used on sam sites for example to shut down the radar without setting AI off or changing the alarm state.
    ---https://wiki.hoggitworld.com/view/DCS_func_enableEmission
    ---@param setting boolean
    function Unit.enableEmission(self, setting) end

    ---Returns the number of infantry that can be embark onto the aircraft. Only returns a value if run on airplanes or helicopters. Returns nil if run on ground or ship units.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDescentCapacity
    ---@return number
    function Unit.getDescentCapacity(self) end

    ---Returns an instance of the calling class for the object of a specified name. The objects name is defined either in the mission editor or within functions that can dynamically spawn objects. All static objects and unit names must be unique. However groups may have the same name as a unit or static object. This function can provide access to non activated units and groups.
    ---https://wiki.hoggitworld.com/view/DCS_func_getByName
    ---@return Unit class
    ---@param name string
    function Unit.getByName(name) end

    ---Return a description table of the specified Object type. Object does not need to be in the mission in order to query its data. Function works with Unit, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDescByName
    ---@return decs_Unit class
    ---@param typeName string
    function Unit.getDescByName(typeName) end
    
    ---Returns the runtime object Id associated with the unit. Every single object on the map is represented by a unique objectID value.
    ---https://wiki.hoggitworld.com/view/DCS_func_getObjectID
    ---@return number    
    function Unit.getObjectID(self) end

end


---@class Group
Group = {}

do
    ---Returns an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object and how the function is called. See enumerators Group.Category, Object.Category, and Spot.Category for further reference.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategoryEx
    ---@return number
    function Group.getCategoryEx(self) end

    ---Return a boolean value based on whether the object currently exists in the mission. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_isExist
    ---@return boolean
    function Group.isExist(self) end

    ---Activates the group if the group has a delayed start or late activation.
    ---https://wiki.hoggitworld.com/view/DCS_func_activate
    function Group.activate(self) end

    ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_destroy
    function Group.destroy(self) end

    ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
    ---@return number
    function Group.getCategory(self) end

    ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
    ---@return number enum coalition.side: 0 = neutral, 1 = red, 2 = blue
    function Group.getCoalition(self) end

    ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Object.getName(obj) the value can be different than if run via Unit.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
    ---https://wiki.hoggitworld.com/view/DCS_func_getName
    ---@return string
    function Group.getName(self) end

    ---Returns a number which defines the unique mission id of a given object.
    ---https://wiki.hoggitworld.com/view/DCS_func_getID
    ---@return number
    function Group.getID(self) end

    ---Returns the unit object of the specified unitIndex within the group. If the index is not valid, this function will return nil.
    ---https://wiki.hoggitworld.com/view/DCS_func_getUnit
    ---@ExampleDesc Returns the first unit in a group
    ---@Example local unit1 = Group.getByName('tanks'):getUnit(1)
    ---@return Unit Class
    ---@param UnitIndex number
    function Group.getUnit(self, UnitIndex) end

    ---Returns a table of unit objects indexed in unit order. Useful for getting unit specific data for every unit in the group.
    ---https://wiki.hoggitworld.com/view/DCS_func_getUnits
    ---@ExampleDesc The following would run a function if any of the aircraft in the groups fuel level is below 10%
    ---@return table<number, Unit>
    function Group.getUnits(self) end

    ---Returns the current size of the group. This value will change as units are destroyed. Can be used in combination with getUnit to not accidentally use to big a value for that function, or to access the last unit in the group.
    ---https://wiki.hoggitworld.com/view/DCS_func_getSize
    ---@return number
    function Group.getSize(self) end

    ---Sets the passed group or unit objects radar emitters on or off. Can be used on sam sites for example to shut down the radar without setting AI off or changing the alarm state.
    ---https://wiki.hoggitworld.com/view/DCS_func_enableEmission
    ---@param setting boolean
    function Group.enableEmission(self, setting) end

    ---Returns the controller of the specified object. Ships and ground units can only be controlled at a group level. Airplanes and helicopters can be controlled at both a group and unit level.
    ---https://wiki.hoggitworld.com/view/DCS_func_getController
    ---@return Controller class
    function Group.getController(self) end

    ---Returns the initial size of the group as defined in the mission editor or if spawned via function. This number will not change as units are destroyed.
    ---https://wiki.hoggitworld.com/view/DCS_func_getInitialSize
    ---@return number
    function Group.getInitialSize(self) end

    ---Returns an instance of the calling class for the object of a specified name. The objects name is defined either in the mission editor or within functions that can dynamically spawn objects. All static objects and unit names must be unique. However groups may have the same name as a unit or static object. This function can provide access to non activated units and groups.
    ---https://wiki.hoggitworld.com/view/DCS_func_getByName
    ---@return Group class
    ---@param name string
    function Group.getByName(name) end

end


---@class Object
Object = {}

do
    ---Return a boolean value based on whether the object currently exists in the mission. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_isExist
    ---@return boolean
    function Object.isExist(self) end

    ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_destroy TODO: Examples
    function Object.destroy(self) end

    ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
    ---@return number enum
    function Object.getCategory(self) end

    ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
    ---@return number enum coalition.side: 0 = neutral, 1 = red, 2 = blue
    function Object.getCoalition(self) end

    ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Object.getName(obj) the value can be different than if run via Unit.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
    ---https://wiki.hoggitworld.com/view/DCS_func_getName
    ---@return string
    function Object.getName(self) end

    ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
    ---@return string
    function Object.getTypeName(self) end

    ---Return a description table of the given object. Table entries are dependent on the category of object and the sub-categories that may exist within that object type. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDesc
    ---@return desc_Object class
    function Object.getDesc(self) end

    ---Returns a boolean value if the object in question has the passed attribute. See Article list of Attributes or db_attibutes.lua in C:\Program Files\Eagle Dynamics\DCS World\Scripts\Database for more details. Additionally attributes for each object are defined within their DB lua file. DB files provided on github for reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_hasAttribute
    ---@return boolean
    ---@param attribute string
    function Object.hasAttribute(self, attribute) end

    ---Returns a vec3 table of the x, y, and z coordinates for the position of the given object in 3D space. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPoint
    ---@return vec3 class
    function Object.getPoint(self) end

    ---Returns a pos3 table of the objects current position and orientation in 3D space. X, Y, Z values are unit vectors defining the objects orientation. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map.Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPosition
    ---@ExampleDesc Position 3 is a table consisting of the point and orientation tables.
    ---@Exampele Position3 = {   p = Vec3, x = Vec3, y = Vec3, z = Vec3 }
    ---@return position3 class
    function Object.getPosition(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_getVelocity
    ---@return vec3 class
    function Object.getVelocity(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_inAir
    ---@return boolean
    function Object.inAir(self) end

    ---Returns an enumerator that defines the country that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCountry
    ---@return number enum country.id
    function Object.getCountry(self) end

end


---@class StaticObject
StaticObject = {}

do
    ---Returns an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object and how the function is called. See enumerators Group.Category, Object.Category, and Spot.Category for further reference.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategoryEx
    ---@return number
    function StaticObject.getCategoryEx(self) end

    ---Return a boolean value based on whether the object currently exists in the mission. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_isExist
    ---@return boolean
    function StaticObject.isExist(self) end

    ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_destroy
    function StaticObject.destroy(self) end

    ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
    ---@return number enum
    function StaticObject.getCategory(self) end

    ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
    ---@return number enum coalition.side: 0 = neutral, 1 = red, 2 = blue
    function StaticObject.getCoalition(self) end

    ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Object.getName(obj) the value can be different than if run via Unit.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
    ---https://wiki.hoggitworld.com/view/DCS_func_getName
    ---@return string
    function StaticObject.getName(self) end

    ---Returns a number which defines the unique mission id of a given object.
    ---https://wiki.hoggitworld.com/view/DCS_func_getID
    ---@return number
    function StaticObject.getID(self) end

    ---Returns the current "life" of a unit. Also referred to as "hit points". All units in DCS have a value that defines how much life is left. If this value is less than 1 the unit is considered "dead". Ground and ship units that are on fire and in the process of "cooking off" will return a life value of 0 until the object explodes. Aircraft are more complex due to sub-systems and damage models which will effect the life value.
    ---https://wiki.hoggitworld.com/view/DCS_func_getLife
    ---@return number
    function StaticObject.getLife(self) end

    ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
    ---@return string
    function StaticObject.getTypeName(self) end

    ---Return a description table of the given object. Table entries are dependent on the category of object and the sub-categories that may exist within that object type. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDesc
    ---@return desc_Object class
    function StaticObject.getDesc(self) end

    ---Returns a boolean value if the object in question has the passed attribute. See Article list of Attributes or db_attibutes.lua in C:\Program Files\Eagle Dynamics\DCS World\Scripts\Database for more details. Additionally attributes for each object are defined within their DB lua file. DB files provided on github for reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_hasAttribute
    ---@return boolean
    ---@param attribute string
    function StaticObject.hasAttribute(self, attribute) end

    ---Returns a vec3 table of the x, y, and z coordinates for the position of the given object in 3D space. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPoint
    ---@return vec3 class
    function StaticObject.getPoint(self) end

    ---Returns a pos3 table of the objects current position and orientation in 3D space. X, Y, Z values are unit vectors defining the objects orientation. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map.Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPosition
    ---@ExampleDesc Position 3 is a table consisting of the point and orientation tables.
    ---@Exampele Position3 = {   p = Vec3, x = Vec3, y = Vec3, z = Vec3 }
    ---@return position3 class
    function StaticObject.getPosition(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_getVelocity
    ---@return vec3 class
    function StaticObject.getVelocity(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_inAir
    ---@return boolean
    function StaticObject.inAir(self) end

    ---Returns an enumerator that defines the country that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCountry
    ---@return number enum country.id
    function StaticObject.getCountry(self) end

    ---Returns the current value for an animation argument on the external model of the given object. Each model animation has an id tied to with different values representing different states of the model. Animation arguments can be figured out by opening the respective 3d model in the modelviewer. For example you can determine the rotation and orientation of the barrel of a Tanks cannon by checking its animation arguments. More practically you can determine whether or not a helicopters doors are open. If draw argument value is invalid for the unit in question a value of 0 will be returned.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDrawArgumentValue
    ---@Example Return -1 to +1 TODO:
    ---@param arg number
    ---@return number
    function StaticObject.getDrawArgumentValue(self, arg) end

    ---Returns a string of a cargo objects mass in the format 'mass kg'. Can't be used to check IF an object is a cargo object. As of 1.2.16.38741 the simulator will crash if this function is passed a non cargo static object.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCargoDisplayName
    ---@example 1500 kg
    ---@return string
    function StaticObject.getCargoDisplayName(self) end

    ---Returns the mass of a cargo object measured in kg.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCargoWeight
    ---@example 700
    ---@return number
    function StaticObject.getCargoWeight(self) end

    ---Return a description table of the specified Object type. Object does not need to be in the mission in order to query its data. Function works with Unit, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDescByName
    ---@return desc_Object class
    ---@param typeName string
    function StaticObject.getDescByName(typeName) end

    ---Returns an instance of the calling class for the object of a specified name. The objects name is defined either in the mission editor or within functions that can dynamically spawn objects. All static objects and unit names must be unique. However groups may have the same name as a unit or static object. This function can provide access to non activated units and groups.
    ---https://wiki.hoggitworld.com/view/DCS_func_getByName
    ---@return StaticObject class
    ---@param name string
    function StaticObject.getByName(name) end

end


---@class SceneryObject
SceneryObject = {}

do
    ---Returns an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object and how the function is called. See enumerators Group.Category, Object.Category, and Spot.Category for further reference.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategoryEx
    ---@return number
    function SceneryObject.getCategoryEx(self) end

    ---Return a boolean value based on whether the object currently exists in the mission. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_isExist
    ---@return boolean
    function SceneryObject.isExist(self) end

    ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_destroy
    function SceneryObject.destroy(self) end

    ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
    ---@return number enum
    function SceneryObject.getCategory(self) end

    ---Returns the current "life" of a unit. Also referred to as "hit points". All units in DCS have a value that defines how much life is left. If this value is less than 1 the unit is considered "dead". Ground and ship units that are on fire and in the process of "cooking off" will return a life value of 0 until the object explodes. Aircraft are more complex due to sub-systems and damage models which will effect the life value.
    ---https://wiki.hoggitworld.com/view/DCS_func_getLife
    ---@return number
    function SceneryObject.getLife(self) end

    ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
    ---@return string
    function SceneryObject.getTypeName(self) end

    ---Return a description table of the given object. Table entries are dependent on the category of object and the sub-categories that may exist within that object type. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDesc
    ---@return desc_Object class
    function SceneryObject.getDesc(self) end

    ---Returns a boolean value if the object in question has the passed attribute. See Article list of Attributes or db_attibutes.lua in C:\Program Files\Eagle Dynamics\DCS World\Scripts\Database for more details. Additionally attributes for each object are defined within their DB lua file. DB files provided on github for reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_hasAttribute
    ---@return boolean
    ---@param attribute string
    function SceneryObject.hasAttribute(self, attribute) end

    ---Returns a vec3 table of the x, y, and z coordinates for the position of the given object in 3D space. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPoint
    ---@return vec3 class
    function SceneryObject.getPoint(self) end

    ---Returns a pos3 table of the objects current position and orientation in 3D space. X, Y, Z values are unit vectors defining the objects orientation. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map.Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPosition
    ---@ExampleDesc Position 3 is a table consisting of the point and orientation tables.
    ---@Exampele Position3 = {   p = Vec3, x = Vec3, y = Vec3, z = Vec3 }
    ---@return position3 class
    function SceneryObject.getPosition(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_getVelocity
    ---@return vec3 class
    function SceneryObject.getVelocity(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_inAir
    ---@return boolean
    function SceneryObject.inAir(self) end

    ---Return a description table of the specified Object type. Object does not need to be in the mission in order to query its data. Function works with Unit, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDescByName
    ---@return desc_Object class
    ---@param typeName string
    function SceneryObject.getDescByName(typeName) end

end


---@class Weapon
Weapon = {}

do
    ---Returns an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object and how the function is called. See enumerators Group.Category, Object.Category, and Spot.Category for further reference.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategoryEx
    ---@return number
    function Weapon.getCategoryEx(self) end

    ---Return a boolean value based on whether the object currently exists in the mission. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_isExist
    ---@return boolean
    function Weapon.isExist(self) end

    ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_destroy
    function Weapon.destroy(self) end

    ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
    ---@return number enum
    function Weapon.getCategory(self) end

    ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
    ---@return number enum coalition.side: 0 = neutral, 1 = red, 2 = blue
    function Weapon.getCoalition(self) end

    ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Object.getName(obj) the value can be different than if run via Unit.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
    ---https://wiki.hoggitworld.com/view/DCS_func_getName
    ---@return string
    function Weapon.getName(self) end

    ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
    ---@return string
    function Weapon.getTypeName(self) end

    ---Return a description table of the given object. Table entries are dependent on the category of object and the sub-categories that may exist within that object type. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDesc
    ---@return desc_weapon class
    function Weapon.getDesc(self) end

    ---Returns a boolean value if the object in question has the passed attribute. See Article list of Attributes or db_attibutes.lua in C:\Program Files\Eagle Dynamics\DCS World\Scripts\Database for more details. Additionally attributes for each object are defined within their DB lua file. DB files provided on github for reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_hasAttribute
    ---@return boolean
    ---@param attribute string
    function Weapon.hasAttribute(self, attribute) end

    ---Returns a vec3 table of the x, y, and z coordinates for the position of the given object in 3D space. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPoint
    ---@return vec3 class
    function Weapon.getPoint(self) end

    ---Returns a pos3 table of the objects current position and orientation in 3D space. X, Y, Z values are unit vectors defining the objects orientation. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map.Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPosition
    ---@ExampleDesc Position 3 is a table consisting of the point and orientation tables.
    ---@Exampele Position3 = {   p = Vec3, x = Vec3, y = Vec3, z = Vec3 }
    ---@return position3 class
    function Weapon.getPosition(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_getVelocity
    ---@return vec3 class
    function Weapon.getVelocity(self) end

    ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_inAir
    ---@return boolean
    function Weapon.inAir(self) end

    ---Returns an enumerator that defines the country that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCountry
    ---@return number enum country.id
    function Weapon.getCountry(self) end

    ---Returns the Unit object that had launched the weapon.
    ---https://wiki.hoggitworld.com/view/DCS_func_getLauncher
    ---@return Unit class
    function Weapon.getLauncher(self) end

    ---Returns the target object that the weapon is guiding to.
    ---https://wiki.hoggitworld.com/view/DCS_func_getTarget
    ---@return Object class
    function Weapon.getTarget(self) end

    ---Return a description table of the specified Object type. Object does not need to be in the mission in order to query its data. Function works with Unit, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDescByName
    ---@return desc_weapon class
    ---@param typeName string
    function Weapon.getDescByName(typeName) end
end


---@class Spot
Spot = {}

do
    ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
    ---https://wiki.hoggitworld.com/view/DCS_func_destroy
    function Spot.destroy(self) end

    ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
    ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
    ---@return number enum
    function Spot.getCategory(self) end

    ---Creates a laser ray emanating from the given object to a point in 3d space. localRef is technically an optional variable, however the functions format requires an entry to be made. If not used, simply replace with nil If optional variable laserCode is not present the beam will automatically be set to a IR beam. If laserCode is specified the beam is a laser which can be used to guide laser guided bombs.Laser code is any 4 digit number between 1111 and 1788.
    ---https://wiki.hoggitworld.com/view/DCS_func_createLaser
    ---@return Spot class
    ---@param source Unit|Object
    ---@param localRef vec3
    ---@param point vec3
    ---@param laseCode number
    function Spot.createLaser(source, localRef, point, laseCode) end

    ---Creates an infrared ray emanating from the given object to a point in 3d space. Can be seen with night vision goggles. localRef is technically an optional variable, however the functions format requires an entry to be made. If not used, simply replace with nil.
    ---https://wiki.hoggitworld.com/view/DCS_func_createInfraRed
    ---@return Spot class
    ---@param source Unit|Object
    ---@param localRef vec3
    ---@param point vec3
    function Spot.createInfraRed(source, localRef, point) end

    ---Returns a vec3 table of the x, y, and z coordinates for the position of the given object in 3D space. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
    ---https://wiki.hoggitworld.com/view/DCS_func_getPoint
    ---@return vec3 class
    function Spot.getPoint(self) end

    ---	Sets the destination point from which the source of the spot is drawn toward.
    ---https://wiki.hoggitworld.com/view/DCS_func_setPoint
    ---@param vec3 vec3
    function Spot.setPoint(self, vec3) end

    ---Sets the number that is used to define the laser code for which laser designation can track. Default and max value is 1688
    ---https://wiki.hoggitworld.com/view/DCS_func_setCode
    ---@param code number
    function Spot.setCode(self, code) end


    ---Returns the number that is used to define the laser code for which laser designation can track. Default and max value is 1688
    ---https://wiki.hoggitworld.com/view/DCS_func_getCode
    ---@return number
    function Spot.getCode(self) end

end


---@class Controller
Controller = {}

do

    ---Sets the specified task to the units or groups associated with the controller object. Tasks must fit a specified format. For more information see the specific task page you are looking for: Main Tasks: mission, AttackGroup, AttackUnit, Bombing, CarpetBombing, AttackMapObject, BombingRunway, orbit, refueling, land, follow, followBigFormation, escort, Embarking, fireAtPoint, hold, FAC_AttackGroup, EmbarkToTransport, DisembarkFromTransport, CargoTransportation, goToWaypoint, groundEscort. Enroute Tasks: engageTargets, engageTargetsInZone, engageGroup, engageUnit, awacs, tanker, ewr, FAC_engageGroup, FAC.
    ---https://wiki.hoggitworld.com/view/DCS_func_setTask
    ---@param task table
    function Controller.setTask(self, task) end

    ---Resets the current task assigned to the controller.
    ---https://wiki.hoggitworld.com/view/DCS_func_resetTask
    function Controller.resetTask(self) end

    ---Pushes the specified task to the front of the tasking queue. If no other tasks are currently active it will function effectively the same as Controller.setTask()For more information see the specific task page you are looking for: Main Tasks: mission, AttackGroup, AttackUnit, Bombing, CarpetBombing, AttackMapObject, BombingRunway, orbit, refueling, land, follow, followBigFormation, escort, Embarking, fireAtPoint, hold, FAC_AttackGroup, EmbarkToTransport, DisembarkFromTransport, CargoTransportation, goToWaypoint, groundEscort. Enroute Tasks: engageTargets, engageTargetsInZone, engageGroup, engageUnit, awacs, tanker, ewr, FAC_engageGroup, FAC.
    ---https://wiki.hoggitworld.com/view/DCS_func_pushTask
    ---@param task table
    function Controller.pushTask(self, task) end

    ---Removes the top task from the tasking queue.
    ---https://wiki.hoggitworld.com/view/DCS_func_popTask
    function Controller.popTask(self) end

    ---Returns true if the controller currently has a task.
    ---https://wiki.hoggitworld.com/view/DCS_func_hasTask
    ---@return boolean
    function Controller.hasTask(self) end

    ---Commands are instant actions that require zero time to perform. Commands may be used both for control unit/group behavior and control game mechanics. Setting a command will have no impact on active tasking. Reference the following pages for details on each command: script, setCallsign, setFrequency, switchWaypoint, stopRoute, switchAction, setInvisible, setImmortal, activateBeacon, deactivateBeacon, eplrs, start, transmitMessage, stopTransmission, smoke_on_off
    ---https://wiki.hoggitworld.com/view/DCS_func_setCommand
    ---@param command table
    function Controller.setCommand(self, command) end

    ---Options are a pair of identifier and value. Behavior options are global parameters and will affect controller behavior in all tasks it performs. Options are executed immediately. For example Rules of Engagement (ROE) are an option that can dictate whether or not a group is currently allowed to attack. This option can over-ride tasking to attack specific targets. Unlike Tasks and Commands, options are organized by id and value. Reference the following pages for details on each option: ROE, Reaction To Threat, Radar Using, Flare Using, Formation, RTB On Bingo, silence, Disperse on Attack, Alarm State, RTB on Out of Ammo, ECM Using, Prohibit AA, Prohibit Jettison, Prohibit Afterburner, Prohibit AG, Missile Attack Range, Prohibit WP Pass Report, Engage Air Weapons, Option Radio Usage Contact, Option Radio Usage Engage, Option Radio Usage Kill, AC Engagement Range Restriction, jett tanks if empty, forced attack, Altitude Restriction for AAA Min, restrict targets, Altitude Restriction for AAA Max.
    ---https://wiki.hoggitworld.com/view/DCS_func_setOption
    ---@param optionId number number or enum
    ---@param optionValue number number or enum
    function Controller.setOption(self, optionId, optionValue) end

    ---Enables or disables the AI controller for the specified group or unit. When AI is turned off the units are incapable of moving, shooting, or detecting targets. Function CAN NOT be used on aircraft or helicopters. This function will only work on ground or naval forces! When the value passed is false the AI is set off. When the value passed is true the AI is set on.
    ---https://wiki.hoggitworld.com/view/DCS_func_setOnOff
    ---@param value boolean
    function Controller.setOnOff(self, value) end

    ---Forces the controller to become aware of the specified target, without the controller manually detecting the object itself. Applies only to a Unit Controller. Cannot be used at the group level.
    ---https://wiki.hoggitworld.com/view/DCS_func_knowTarget
    ---@param object Object
    ---@param type boolean|nil
    ---@param distance boolean|nil
    function Controller.knowTarget(self, object, type, distance) end

    ---Returns multiple entries that define a number of values if the target is detected by the Unit or group associated with the controller. Values returned are: |boolean detected, -- boolean value if the target is detected| boolean visible, -- boolean value if target is visible by line of sight| ModelTime lastTime, -- the last model time that the target was detected| boolean type, -- if the type of target is known| boolean distance, -- if distance to the target is known| Vec3 lastPos, -- last known position of the target| Vec3 lastVel -- last know velocity vector of the tar|. Function is available at the unit level for all unit types. When used with a Group Controller the function will return expected values only with Ground and Ship groups.
    ---https://wiki.hoggitworld.com/view/DCS_func_isTargetDetected
    ---@return boolean detected , boolean visible , number lastTime , boolean type , boolean distance , vec3 lastPos , vec3 lastVel
    ---@param target Object
    ---@param detectionType1 number|nil enum
    ---@param detectionType2 number|nil enum
    ---@param ... number|nil enum
    function Controller.isTargetDetected(self, target, detectionType1, detectionType2, ...) end


    ---Returns a table of detected targets that are detected by the different detection methods. If not detection method is specified, then all forms of detection will be used. Applies only to a Unit Controller. Cannot be used at the group level.
    ---https://wiki.hoggitworld.com/view/DCS_func_getDetectedTargets
    ---@return DetectedTarget_func class
    ---@param detectionType1 number|nil enum
    ---@param detectionType2 number|nil enum
    ---@param ... number|nil enum
    function Controller.getDetectedTargets(self, detectionType1, detectionType2, ...) end

    ---Sets the controlled aircraft group to the specified altitude in meters. Optional boolean keep when set to true will maintain that altitude on passing waypoints. If no present or false the aircraft will return to the altitude as defined by their route. Optional string altType will specify the altitude type used. If nil the altitude type of the current waypoint will be used. Accepted values are the altitude enumerator:
    ---AI.Task.AltitudeType,
    ---"RADIO" = "RADIO"
    ---"BARO"  = "BARO"
    ---https://wiki.hoggitworld.com/view/DCS_func_setAltitude
    ---@param altitude number
    ---@param keep boolean|nil
    ---@param altType altType|nil
    function Controller.setAltitude(self , altitude , keep, altType) end

    ---Sets the controlled group to go the specified speed in meters per second. Optional boolean keep when set to true will maintain that speed on passing waypoints. If no present or false the controlled group will return to the speed as defined by their route.
    ---https://wiki.hoggitworld.com/view/DCS_func_setSpeed
    ---@param speed number
    ---@param keep boolean|nil
    function Controller.setSpeed(self , speed , keep) end

end


---@class CoalitionObject
CoalitionObject = {}

do
    ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
    ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
    ---@return number enum coalition.side: 0 = neutral, 1 = red, 2 = blue
    function CoalitionObject.getCoalition(self) end
end
