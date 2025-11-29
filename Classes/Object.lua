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

    ---Represents an object with body, unique name, category and type. Non-final class
    ---All fuctions Extends to (Unit, Weapon, Static Object, Airbase)
    ---https://wiki.hoggitworld.com/view/DCS_Class_Object
    ---@class Object
    Object = {}

    ---Object.Category enum that stores object categories.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Object
    ---@enum Object.Category
    Object.Category = {
        VOID = 0,
        UNIT = 1,
        WEAPON = 2,
        STATIC = 3,
        BASE = 4,
        SCENERY = 5,
        CARGO = 6,
    }

    ---Classes
    do
        ---@alias Objects
        ---| Unit
        ---| Weapon
        ---| StaticObject
        ---| SceneryObject
        ---| Airbase
    end
    
    ---@private
    --No Docu
    Object.database_ = {}
    
    ---@type number
    Object.id_ = 0

    --Functions
    do
        ---same as choosecargo but disables the ability to select it for cargo
        ---seems to not work
        ---unselects the cargo for uh1h unhighlights the cargo for pickup
        ---only works on SP
        function Object.cancelChoosingCargo(self, ...) end

        ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
        ---https://wiki.hoggitworld.com/view/DCS_func_destroy TODO: Examples
        ---@param self Object
        function Object.destroy(self) end

        ---Returns a table of what the unit 'can do' varies from unit to unit also can be obtained by getdesc().attributes
        ---@param self Unit
        ---@param ... unknown
        ---@return Attributes
        function Object.getAttributes(self, ...) end

        ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
        ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
        ---@param self Object
        ---@return Object.Category, number
        function Object.getCategory(self) end

        ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Object.getName(obj) the value can be different than if run via Unit.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
        ---https://wiki.hoggitworld.com/view/DCS_func_getName
        ---@return string
        function Object.getName(self) end

        ---Returns a vec3 table of the x, y, and z coordinates for the position of the given object in 3D space. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getPoint
        ---@return vec3
        function Object.getPoint(self) end

        ---Returns a pos3 table of the objects current position and orientation in 3D space. X, Y, Z values are unit vectors defining the objects orientation. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map.Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getPosition
        ---@ExampleDesc Position 3 is a table consisting of the point and orientation tables.
        ---@example Position3 = {   p = Vec3, x = Vec3, y = Vec3, z = Vec3 }
        ---@return position3
        function Object.getPosition(self) end

        ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
        ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
        ---@return wsType
        function Object.getTypeName(self) end

        ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
        ---https://wiki.hoggitworld.com/view/DCS_func_getVelocity
        ---@return vec3 class
        function Object.getVelocity(self) end

        ---Returns a boolean value if the object in question has the passed attribute. See Article list of Attributes or db_attibutes.lua in C:\Program Files\Eagle Dynamics\DCS World\Scripts\Database for more details. Additionally attributes for each object are defined within their DB lua file. DB files provided on github for reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_hasAttribute
        ---@return boolean
        ---@param attribute Attributes
        function Object.hasAttribute(self, attribute) end

        ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
        ---https://wiki.hoggitworld.com/view/DCS_func_inAir
        ---@return boolean
        function Object.inAir(self) end

        ---Return a boolean value based on whether the object currently exists in the mission. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
        ---https://wiki.hoggitworld.com/view/DCS_func_isExist
        ---@return boolean
        function Object.isExist(self) end

        ---@private
        ---No Docu
        function Object.database_.getCategoryEx() end
    end
end
