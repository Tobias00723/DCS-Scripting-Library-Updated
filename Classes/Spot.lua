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


    ---Represents a spot from laser or IR-pointer. Final class.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Spot
    ---@class Spot
    Spot = {}

    ---Represents a spot from laser or IR-pointer. Final class.
    ---https://wiki.hoggitworld.com/view/DCS_Class_Spot
    ---@enum Spot.Category
    Spot.Category = {
        INFRA_RED = 0,
        LASER = 1
    }

    ---@type number
    Spot.id_ = 0

    --Functions
    do
        ---Creates an infrared ray emanating from the given object to a point in 3d space. Can be seen with night vision goggles. localRef is technically an optional variable, however the functions format requires an entry to be made. If not used, simply replace with nil.
        ---https://wiki.hoggitworld.com/view/DCS_func_createInfraRed
        ---@return Spot class
        ---@param source Objects
        ---@param localRef vec3
        ---@param point vec3
        function Spot.createInfraRed(source, localRef, point) end

        ---Creates a laser ray emanating from the given object to a point in 3d space. localRef is technically an optional variable, however the functions format requires an entry to be made. If not used, simply replace with nil If optional variable laserCode is not present the beam will automatically be set to a IR beam. If laserCode is specified the beam is a laser which can be used to guide laser guided bombs.Laser code is any 4 digit number between 1111 and 1788.
        ---https://wiki.hoggitworld.com/view/DCS_func_createLaser
        ---@return Spot class
        ---@param source Objects
        ---@param localRef vec3
        ---@param point vec3
        ---@param laseCode number
        function Spot.createLaser(source, localRef, point, laseCode) end

        ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
        ---https://wiki.hoggitworld.com/view/DCS_func_destroy
        function Spot.destroy(self) end

        ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
        ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
        ---@return Object.Category, Spot.Category
        function Spot.getCategory(self) end

        ---Returns an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object and how the function is called. See enumerators Group.Category, Object.Category, and Spot.Category for further reference.
        ---https://wiki.hoggitworld.com/view/DCS_func_getCategoryEx
        ---@return Spot.Category
        function Spot.getCategoryEx(self) end

        ---Returns the number that is used to define the laser code for which laser designation can track. Default and max value is 1688
        ---https://wiki.hoggitworld.com/view/DCS_func_getCode
        ---@return number
        function Spot.getCode(self) end

        ---Returns a vec3 table of the x, y, and z coordinates for the position of the given object in 3D space. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getPoint
        ---@return vec3 class
        function Spot.getPoint(self) end

        ---Sets the number that is used to define the laser code for which laser designation can track. Default and max value is 1688
        ---https://wiki.hoggitworld.com/view/DCS_func_setCode
        ---@param code number
        function Spot.setCode(self, code) end

        ---	Sets the destination point from which the source of the spot is drawn toward.
        ---https://wiki.hoggitworld.com/view/DCS_func_setPoint
        ---@param vec3 vec3
        function Spot.setPoint(self, vec3) end
    end
end
