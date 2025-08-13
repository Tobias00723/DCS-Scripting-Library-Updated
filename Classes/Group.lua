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

    end
    ---Represents a group of units.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Group
    ---@class Group
    Group = {}

    ---Represents a group of units.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Group
    ---@enum Group.Category
    Group.Category = {
        AIRPLANE = 0,
        HELICOPTER = 1,
        GROUND = 2,
        SHIP = 3,
        TRAIN = 4
    }

    ---@type number
    Group.id_ = 0

    --Functions
    do
        ---Activates the group if the group has a delayed start or late activation.
        ---https://wiki.hoggitworld.com/view/DCS_func_activate
        function Group.activate(self) end

        ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
        ---https://wiki.hoggitworld.com/view/DCS_func_destroy
        function Group.destroy(self) end

        ---NO DOCU
        ---@param self Group
        ---@param ... unknown
        function Group.embarking(self, ...) end

        ---Sets the passed group or unit objects radar emitters on or off. Can be used on sam sites for example to shut down the radar without setting AI off or changing the alarm state.
        ---https://wiki.hoggitworld.com/view/DCS_func_enableEmission
        ---@param setting boolean
        function Group.enableEmission(self, setting) end

        ---Returns an instance of the calling class for the object of a specified name. The objects name is defined either in the mission editor or within functions that can dynamically spawn objects. All static objects and unit names must be unique. However groups may have the same name as a unit or static object. This function can provide access to non activated units and groups.
        ---https://wiki.hoggitworld.com/view/DCS_func_getByName
        ---@return self?
        ---@param name string
        function Group.getByName(name) end

        ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
        ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
        ---@return Object.Category, Group.Category
        function Group.getCategory(self) end

        ---Returns an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object and how the function is called. See enumerators Group.Category, Object.Category, and Spot.Category for further reference.
        ---https://wiki.hoggitworld.com/view/DCS_func_getCategoryEx
        ---@return Group.Category
        function Group.getCategoryEx(self) end

        ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
        ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
        ---@return coalition.side
        function Group.getCoalition(self) end

        ---Returns the controller of the specified object. Ships and ground units can only be controlled at a group level. Airplanes and helicopters can be controlled at both a group and unit level.
        ---https://wiki.hoggitworld.com/view/DCS_func_getController
        ---@return Controller
        function Group.getController(self) end

        ---Returns a number which defines the unique mission id of a given object.
        ---https://wiki.hoggitworld.com/view/DCS_func_getID
        ---@return number
        function Group.getID(self) end

        ---Returns the initial size of the group as defined in the mission editor or if spawned via function. This number will not change as units are destroyed.
        ---https://wiki.hoggitworld.com/view/DCS_func_getInitialSize
        ---@return number
        function Group.getInitialSize(self) end

        ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Object.getName(obj) the value can be different than if run via Unit.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
        ---https://wiki.hoggitworld.com/view/DCS_func_getName
        ---@return string
        function Group.getName(self) end

        ---Returns the current size of the group. This value will change as units are destroyed. Can be used in combination with getUnit to not accidentally use to big a value for that function, or to access the last unit in the group.
        ---https://wiki.hoggitworld.com/view/DCS_func_getSize
        ---@return number
        function Group.getSize(self) end

        ---Returns the unit object of the specified unitIndex within the group. If the index is not valid, this function will return nil.
        ---https://wiki.hoggitworld.com/view/DCS_func_getUnit
        ---@ExampleDesc Returns the first unit in a group
        ---@Example local unit1 = Group.getByName('tanks'):getUnit(1)
        ---@return Unit
        ---@param UnitIndex number
        function Group.getUnit(self, UnitIndex) end

        ---Returns a table of unit objects indexed in unit order. Useful for getting unit specific data for every unit in the group.
        ---https://wiki.hoggitworld.com/view/DCS_func_getUnits
        ---@ExampleDesc The following would run a function if any of the aircraft in the groups fuel level is below 10%
        ---@return table<number, Unit>
        function Group.getUnits(self) end

        ---Return a boolean value based on whether the object currently exists in the mission. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
        ---https://wiki.hoggitworld.com/view/DCS_func_isExist
        ---@return boolean
        function Group.isExist(self) end

        ---No duco
        ---@param self Group
        ---@param ... unknown
        function Group.markGroup(self, ...) end
    end
end
