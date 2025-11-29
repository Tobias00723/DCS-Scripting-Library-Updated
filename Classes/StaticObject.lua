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
        --**StaticObject desc Class**
        do
            ---@class StaticObject_desc
            ---@field category Object.Category
            ---@field life number
            ---@field displayName string
            ---@field typeName string
            ---@field attributes table
        end
    end

    ---Represents static objects added in the Mission Editor or via scripting commands.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Static_Object
    ---@class StaticObject : Object
    StaticObject = {}

    --Functions
    do
        ---No Docu
        ---selects the cargo for uh1h highlights the cargo for pickup
        ---only works on SP
        function StaticObject.chooseCargo() end

        ---Returns an instance of the calling class for the object of a specified name. The objects name is defined either in the mission editor or within functions that can dynamically spawn objects. All static objects and unit names must be unique. However groups may have the same name as a unit or static object. This function can provide access to non activated units and groups.
        ---https://wiki.hoggitworld.com/view/DCS_func_getByName
        ---@return self?
        ---@param name string
        function StaticObject.getByName(name) end

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

        ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
        ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
        ---@return coalition.side
        function StaticObject.getCoalition(self) end

        ---Returns an enumerator that defines the country that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
        ---https://wiki.hoggitworld.com/view/DCS_func_getCountry
        ---@return country.id
        function StaticObject.getCountry(self) end

        ---Return a description table of the given object. Table entries are dependent on the category of object and the sub-categories that may exist within that object type. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDesc
        ---@return StaticObject_desc
        function StaticObject.getDesc(self) end

        ---Return a description table of the specified Object type. Object does not need to be in the mission in order to query its data. Function works with Unit, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDescByName
        ---@return StaticObject_desc
        ---@param typeName string
        function StaticObject.getDescByName(typeName) end

        ---Returns the current value for an animation argument on the external model of the given object. Each model animation has an id tied to with different values representing different states of the model. Animation arguments can be figured out by opening the respective 3d model in the modelviewer. For example you can determine the rotation and orientation of the barrel of a Tanks cannon by checking its animation arguments. More practically you can determine whether or not a helicopters doors are open. If draw argument value is invalid for the unit in question a value of 0 will be returned.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDrawArgumentValue
        ---@Example Return -1 to +1 TODO:
        ---@param arg number
        ---@return number
        function StaticObject.getDrawArgumentValue(self, arg) end

        --No Docu
        ---Returns a string that represents the units 'force' ex : The Army, Marine Corps, Navy, Air Force, Space Force and Coast Guard
        ---@param self Unit
        ---@param ... unknown
        ---@return Force_name
        function StaticObject.getForcesName(self, ...) end

        ---Returns a number which defines the unique mission id of a given object.
        ---https://wiki.hoggitworld.com/view/DCS_func_getID
        ---@return number
        function StaticObject.getID(self) end

        ---Returns the current "life" of a StaticObject. Also referred to as "hit points". All units in DCS have a value that defines how much life is left. If this value is less than 1 the unit is considered "dead". Ground and ship units that are on fire and in the process of "cooking off" will return a life value of 0 until the object explodes. Aircraft are more complex due to sub-systems and damage models which will effect the life value.
        ---https://wiki.hoggitworld.com/view/DCS_func_getLife
        ---@return number
        function StaticObject.getLife(self) end

        ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Object.getName(obj) the value can be different than if run via StaticObject.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
        ---https://wiki.hoggitworld.com/view/DCS_func_getName
        ---@return string
        function StaticObject.getName(self) end

        ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
        ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
        ---@return string
        function StaticObject.getTypeName(self) end

        --overloaded Inhereted fuctions from Object class
        do
            ---No Docu
        end
    end
end
