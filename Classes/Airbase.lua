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

    --Classes
    do
        ---**Runway Class**
        do
            ---@private
            ---@class Runway
            ---@field course number The course or bearing in radians
            ---@field Name number The identifier for the runway
            ---@field position vec3 The position of the runway
            ---@field length number The length of the runway in meters
            ---@field width number The width of the runway in meters
        end


        ---**Airfield parking class table**
        do
            ---@private
            ---@class Parking_airfield
            ---@field Term_Index number Term_index is the id for the parking
            ---@field vTerminalPos vec3 vTerminal pos is its vec3 position in the world
            ---@field TO_AC boolean
            ---@field Term_Index_0 number
            ---@field Term_Type 16|40|68|72|100|104 16 : Valid spawn points on runway | 40 : Helicopter only spawn | 68 : Hardened Air Shelter | 72 : Open/Shelter air airplane only | 100 : Small shelter | 104: Open air spawn
            ---@field fDistToRW number fDistToRW is the distance to the take-off position for the active runway from the parking.
        end

        ---**Airfield Desc Class**
        do
            ---Represents an entity with life, attributes, and other properties.
            ---@private
            ---@class desc_Airfield
            ---@field life number The life parameter of the entity
            ---@field attributes EntityAttributes_airfield The attributes of the entity
            ---@field _origin string The origin or source of the entity
            ---@field category number The category of the entity
            ---@field typeName string The type name of the entity
            ---@field displayName string The display name of the entity

            --EntityAttributes_airfield
            do
                ---Represents the attributes of an Airfield.
                ---@class EntityAttributes_airfield
                ---@field Airfields boolean Indicates if the entity is an airfield
            end
        end
    end



    ---Represents airbases: airdromes, helipads and ships with flying decks or landing pads.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Airbase
    ---@class Airbase : Object
    Airbase = {}

    ---@enum Airbase.Category
    Airbase.Category = {
        AIRDROME = 0,
        HELIPAD = 1,
        SHIP = 2
    }



    do
        ---Enables or disables the airbase and FARP auto capture game mechanic where ownership of a base can change based on the presence of ground forces or the default setting assigned in the editor.
        ---false : disables autoCapture behavior
        ---true : enables autoCapture behavior
        ---https://wiki.hoggitworld.com/view/DCS_func_autoCapture
        ---@param setting boolean
        function Airbase.autoCapture(self, setting) end

        ---Returns the current autoCapture setting for the passed base.
        ---true: Auto capture is enabled
        ---false; Auto capture is disabled
        ---https://wiki.hoggitworld.com/view/DCS_func_autoCaptureIsOn
        ---@return boolean
        function Airbase.autoCaptureIsOn(self) end

        ---Returns an instance of the calling class for the object of a specified name. The objects name is defined either in the mission editor or within functions that can dynamically spawn objects. All static objects and unit names must be unique. However groups may have the same name as a unit or static object. This function can provide access to non activated units and groups.
        ---https://wiki.hoggitworld.com/view/DCS_func_getByName
        ---@return self?
        ---@param name string
        function Airbase.getByName(name) end

        ---Returns a localized string of the units callsign. In the case of airbases the callsign of world airbases is defined by the game. Callsigns for units, farps, or ships can be specified by the user with the mission editor or scripting engine.
        ---https://wiki.hoggitworld.com/view/DCS_func_getCallsign
        ---@return string
        function Airbase.getCallsign(self) end

        ---Returns an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object and how the function is called. See enumerators Group.Category, Object.Category, and Spot.Category for further reference.
        ---https://wiki.hoggitworld.com/view/DCS_func_getCategoryEx
        ---@return Airbase.Category
        function Airbase.getCategoryEx(self) end

        ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
        ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
        ---@return coalition.side
        function Airbase.getCoalition(self) end

        --No Docu
        ---@param self Unit
        ---@param ... unknown
        ---@return unknown class empty meta table
        function Airbase.getCommunicator(self, ...) end

        ---Returns an enumerator that defines the country that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
        ---https://wiki.hoggitworld.com/view/DCS_func_getCountry
        ---@return country.id
        function Airbase.getCountry(self) end

        ---Return a description table of the given object. Table entries are dependent on the category of object and the sub-categories that may exist within that object type. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDesc
        ---@return desc_Airfield
        function Airbase.getDesc(self) end

        ---Return a description table of the specified Object type. Object does not need to be in the mission in order to query its data. Function works with Unit, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDescByName
        ---@return desc_Airfield
        ---@param typeName string
        function Airbase.getDescByName(typeName) end

        ---Returns a table of vec3 objects corresponding to the passed value. Seems to only ever return a single object "Tower" object. Have been unable to get it to work with other types.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDispatcherTowerPos
        ---@param self Airbase
        ---@return table<"pos",vec3>
        function Airbase.getDispatcherTowerPos(self) end

        --No Docu
        ---Returns a string that represents the units 'force' ex : The Army, Marine Corps, Navy, Air Force, Space Force and Coast Guard
        ---@param self Unit
        ---@param ... unknown
        ---@return Force_name
        function Airbase.getForcesName(self, ...) end

        ---Returns a number which defines the unique mission id of a given object.
        ---https://wiki.hoggitworld.com/view/DCS_func_getID
        ---@return number
        function Airbase.getID(self) end

        ---NO DOCU
        ---probaly return the life as some other documented functions
        ---@param self Airbase
        ---@param ... unknown
        ---@return number
        function Airbase.getLife(self, ...) end

        ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Object.getName(obj) the value can be different than if run via Unit.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
        ---https://wiki.hoggitworld.com/view/DCS_func_getName
        ---@return string
        function Airbase.getName(self) end

        --NO DOCU
        ---retruns a airbase object unkown where its nearest to??? probaly x0,y0,z0??
        ---@param self Airbase
        ---@param ... unknown
        ---@return Airbase
        function Airbase.getNearest(self, ...) end

        ---Returns a table of parking data for a given airbase. If the optional value is passed only available parking will be returned, otherwise all parking at the base is returned. Term types have the following enumerated values: TODO:
        ---https://wiki.hoggitworld.com/view/DCS_func_getParking
        ---@return table<number, Parking_airfield>
        ---@param available boolean
        function Airbase.getParking(self, available) end

        ---Returns a boolean value for whether or not the ATC for the passed airbase object has been silenced.
        ---https://wiki.hoggitworld.com/view/DCS_func_getRadioSilentMode
        ---@return boolean
        function Airbase.getRadioSilentMode(self) end

        ---Returns a table with runway information like length, width, course, and Name. position: Returns the center of the runway width: width of the runway in meters Name: runway name, can be off course: bearing in radians. Multiply by -1 to make it useful
        ---https://wiki.hoggitworld.com/view/DCS_func_getRunways
        ---@Example { [1] = { ["course"] = -1.597741484642, ["Name"] = 8, ["position"] = { ["y"] = 952.94458007813, ["x"] = -360507.1875, ["z"] = -75590.0703125, }, ["length"] = 1859.3155517578, ["width"] = 60, }, [2] = { ["course"] = -2.5331676006317, ["Name"] = 26, ["position"] = { ["y"] = 952.94458007813, ["x"] = -359739.875, ["z"] = -75289.5078125, }, ["length"] = 1859.3155517578, ["width"] = 60, }, }
        ---@return table<number,Runway> class
        function Airbase.getRunways(self) end

        ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
        ---@return string
        function Airbase.getTypeName(self) end

        ---Returns the unit object of the specified unitIndex within the group. If the index is not valid, this function will return nil.
        ---https://wiki.hoggitworld.com/view/DCS_func_getUnit
        ---@ExampleDesc Returns the first unit in a group
        ---@Example local unit1 = Group.getByName('tanks'):getUnit(1)
        ---@return Unit
        function Airbase.getUnit(self) end

        ---Returns the warehouse object associated with the airbase object. Can then be used to call the warehouse class functions to modify the contents of the warehouse.
        ---https://wiki.hoggitworld.com/view/DCS_func_getWarehouse
        ---@return Warehouse
        function Airbase.getWarehouse(self) end

        --No Docu
        --returns the class 'id_' also able the get by appending .id_ from any class
        ---@param self Airbase
        ---@param ... unknown
        ---@return number
        function Airbase.getWorldID(self, ...) end

        ---Changes the passed airbase object's coalition to the set value. Must be used with Airbase.autoCapture to disable auto capturing of the base, otherwise the base can revert back to a different coalition depending on the situation and built in game capture rules.
        ---https://wiki.hoggitworld.com/view/DCS_func_setCoalition
        ---@param coa_enum coalition.side
        function Airbase.setCoalition(self, coa_enum) end

        ---Sets the ATC belonging to an airbase object to be silent and unresponsive. This is useful for disabling the award winning ATC behavior in DCS. Note that this DOES NOT remove the airbase from the list. It just makes it unresponsive and silent to any radio calls to it. true  : enabled silent mode. false : disables silent mode.
        ---https://wiki.hoggitworld.com/view/DCS_func_setRadioSilentMode
        ---@param silent boolean
        function Airbase.setRadioSilentMode(self, silent) end

        --overloaded Inhereted fuctions from Object class
        do
            ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
            ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
            ---@return Object.Category, Airbase.Category
            function Airbase.getCategory(self) end
        end
    end
end
