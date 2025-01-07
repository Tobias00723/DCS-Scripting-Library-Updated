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
        --**SceneryObject desc Class**
        do
            ---@class SceneryObject_desc
            ---@field category Object.Category
            ---@field life number
            ---@field displayName string
            ---@field typeName string
            ---@field attributes table
        end
    end

    ---Represents all objects placed on the map. Bridges, buildings, etc.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Scenery_Object
    ---@class SceneryObject
    SceneryObject = {}

    ---@type number
    SceneryObject.id_ = 0

    --Functions
    do
        ---Returns the current "life" of a unit. Also referred to as "hit points". All units in DCS have a value that defines how much life is left. If this value is less than 1 the unit is considered "dead". Ground and ship units that are on fire and in the process of "cooking off" will return a life value of 0 until the object explodes. Aircraft are more complex due to sub-systems and damage models which will effect the life value.
        ---https://wiki.hoggitworld.com/view/DCS_func_getLife
        ---@return number
        function SceneryObject.getLife(self) end

        ---Return a description table of the given object. Table entries are dependent on the category of object and the sub-categories that may exist within that object type. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDesc
        ---@return SceneryObject_desc
        function SceneryObject.getDesc(self) end

        ---Return a description table of the specified Object type. Object does not need to be in the mission in order to query its data. Function works with Unit, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDescByName
        ---@return SceneryObject_desc
        ---@param typeName string
        function SceneryObject.getDescByName(typeName) end

        --Inhereted fuctions from Object class
        do
            do
                ---No Docu
                function SceneryObject.cancelChoosingCargo() end

                ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
                ---https://wiki.hoggitworld.com/view/DCS_func_destroy TODO: Examples
                function SceneryObject.destroy(self) end

                ---Returns a table of what the unit 'can do' varies from unit to unit also can be obtained by getdesc().attributes
                ---@param self Unit
                ---@param ... unknown
                ---@return Attributes
                function SceneryObject.getAttributes(self, ...) end

                ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, SceneryObject.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the SceneryObject.Category.
                ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
                ---@return Object.Category
                function SceneryObject.getCategory(self) end

                ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as SceneryObject.getName(obj) the value can be different than if run via Unit.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
                ---https://wiki.hoggitworld.com/view/DCS_func_getName
                ---@return string
                function SceneryObject.getName(self) end

                ---Returns a vec3 table of the x, y, and z coordinates for the position of the given object in 3D space. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
                ---https://wiki.hoggitworld.com/view/DCS_func_getPoint
                ---@return vec3 class
                function SceneryObject.getPoint(self) end

                ---Returns a pos3 table of the objects current position and orientation in 3D space. X, Y, Z values are unit vectors defining the objects orientation. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map.Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
                ---https://wiki.hoggitworld.com/view/DCS_func_getPosition
                ---@ExampleDesc Position 3 is a table consisting of the point and orientation tables.
                ---@example Position3 = {   p = Vec3, x = Vec3, y = Vec3, z = Vec3 }
                ---@return position3 class
                function SceneryObject.getPosition(self) end

                ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
                ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
                ---@return string
                function SceneryObject.getTypeName(self) end

                ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
                ---https://wiki.hoggitworld.com/view/DCS_func_getVelocity
                ---@return vec3 class
                function SceneryObject.getVelocity(self) end

                ---Returns a boolean value if the object in question has the passed attribute. See Article list of Attributes or db_attibutes.lua in C:\Program Files\Eagle Dynamics\DCS World\Scripts\Database for more details. Additionally attributes for each object are defined within their DB lua file. DB files provided on github for reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
                ---https://wiki.hoggitworld.com/view/DCS_func_hasAttribute
                ---@return boolean
                ---@param attribute Attributes
                function SceneryObject.hasAttribute(self, attribute) end

                ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
                ---https://wiki.hoggitworld.com/view/DCS_func_inAir
                ---@return boolean
                function SceneryObject.inAir(self) end

                ---Return a boolean value based on whether the object currently exists in the mission. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
                ---https://wiki.hoggitworld.com/view/DCS_func_isExist
                ---@return boolean
                function SceneryObject.isExist(self) end
            end
        end
    end
end
