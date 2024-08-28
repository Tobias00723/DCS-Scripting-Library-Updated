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
        ---**Weapon desc Class**
        do
            ---@class desc_weapon
            ---@field category Weapon.Category field only accessable when Weapon.Category is 0
            ---@field warhead Warhead field only accessable when Weapon.Category is 0
            ---@field guidance Weapon.GuidanceType field only accessable when Weapon.Category is 1 or 3
            ---@field rangeMin number field only accessable when Weapon.Category is 1
            ---@field rangeMaxAltMin number field only accessable when Weapon.Category is 1
            ---@field rangeMaxAltMax number field only accessable when Weapon.Category is 1
            ---@field altMin number field only accessable when Weapon.Category is 1 or 3
            ---@field altMax number field only accessable when Weapon.Category is 1 or 3
            ---@field Nmax number field only accessable when Weapon.Category is 1
            ---@field fuseDist number field only accessable when Weapon.Category is 1
            ---@field distMin number field only accessable when Weapon.Category is 2
            ---@field distMax number field only accessable when Weapon.Category is 2

            ---**Weapon Warhead Class**
            do
                ---@class Warhead
                ---@field type Weapon.WarheadType The type of the warhead
                ---@field mass number The mass of the warhead
                ---@field caliber number The caliber of the warhead
                ---@field explosiveMass number|nil The explosive mass for HE and AP(+HE) warheads
                ---@field shapedExplosiveMass number|nil The shaped explosive mass for shaped explosive warheads
                ---@field shapedExplosiveArmorThickness number|nil The armor thickness for shaped explosive warheads
            end
        end
    end

    ---Represents a weapon object: shell, rocket, missile and bomb
    ---https://wiki.hoggitworld.com/view/DCS_Class_Weapon
    ---@class Weapon
    Weapon = {}

    ---Represents a weapon object: shell, rocket, missile and bomb
    ---https://wiki.hoggitworld.com/view/DCS_Class_Weapon
    ---@enum Weapon.Category
    Weapon.Category = {
        SHELL = 0,
        MISSILE = 1,
        ROCKET = 2,
        BOMB = 3,
        TORPEDO = 4,
    }

    ---Represents a weapon object: shell, rocket, missile and bomb
    ---https://wiki.hoggitworld.com/view/DCS_Class_Weapon
    ---@enum Weapon.GuidanceType
    Weapon.GuidanceType = {
        INS = 1,
        IR = 2,
        RADAR_ACTIVE = 3,
        RADAR_SEMI_ACTIVE = 4,
        RADAR_PASSIVE = 5,
        TV = 6,
        LASER = 7,
        TELE = 8,
    }


    ---Represents a weapon object: shell, rocket, missile and bomb
    ---https://wiki.hoggitworld.com/view/DCS_Class_Weapon
    ---@enum Weapon.MissileCategory
    Weapon.MissileCategory = {
        AAM = 1,
        SAM = 2,
        BM = 3,
        ANTI_SHIP = 4,
        CRUISE = 5,
        OTHER = 6,
    }

    ---Represents a weapon object: shell, rocket, missile and bomb
    ---https://wiki.hoggitworld.com/view/DCS_Class_Weapon
    ---@enum Weapon.WarheadType
    Weapon.WarheadType = {
        AP = 0,
        HE = 1,
        SHAPED_EXPLOSIVE = 2
    }

    --No Docu
    ---@enum Weapon.flag
    Weapon.flag = {
        AllWeapon = -1,
        NoWeapon = 0,
        LGB = 2,
        TvGB = 4,
        SNSGB = 8,
        GuidedBomb = 14,
        HEBomb = 16,
        Penetrator = 32,
        NapalmBomb = 64,
        FAEBomb = 128,
        ClusterBomb = 256,
        Dispencer = 512,
        CandleBomb = 1024,
        LightRocket = 2048,
        MarkerRocket = 4096,
        CandleRocket = 8192,
        HeavyRocket = 16384,
        AnyRocket = 30720,
        AntiRadarMissile = 32768,
        AntiShipMissile = 65536,
        AntiTankMissile = 131072,
        FireAndForgetASM = 262144,
        LaserASM = 524288,
        TeleASM = 1048576,
        GuidedASM = 1572864,
        TacticASM = 1835008,
        CruiseMissile = 2097152,
        AnyASM = 4161536,
        SRAAM = 4194304,
        MRAAM = 8388608,
        LRAAM = 16777216,
        IR_AAM = 33554432,
        AnyAutonomousMissile = 36012032,
        SAR_AAM = 67108864,
        AR_AAM = 134217728,
        AnyAAM = 264241152,
        AnyMissile = 268402688,
        GUN_POD = 268435456,
        BuiltInCannon = 536870912,
        Cannons = 805306368,
        AnyAAWeapon = 1069547520,
        AntiRadarMissile2 = 1073741824,
        ParachuteBomb = 2147483648,
        AnyUnguidedBomb = 2147485680,
        AnyBomb = 2147485694,
        UnguidedWeapon = 2952822768,
        AnyAGWeapon = 2956984318,
        AnyTorpedo = 4294967296,
        Torpedo = 4294967296,
        Decoys = 8589934592,
        SmokeShell = 17179869184,
        IlluminationShell = 34359738368,
        MarkerShell = 51539607552,
        MarkerWeapon = 51539620864,
        SubmunitionDispenserShell = 68719476736,
        GuidedShell = 137438953472,
        GuidedWeapon = 137707356174,
        ConventionalShell = 206963736576,
        ArmWeapon = 213674609662,
        AnyShell = 258503344128,
        AnyWeapon = 265214230526,
    }




    --Functions
    do
        ---Return an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object. See enumerators Group.Category, Object.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Object.Category.
        ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
        ---@return Object.Category
        function Weapon.getCategory(self) end

        ---Returns an enumerator of the category for the specific object. The enumerator returned is dependent on the category of the object and how the function is called. See enumerators Group.Category, Object.Category, and Spot.Category for further reference.
        ---https://wiki.hoggitworld.com/view/DCS_func_getCategoryEx
        ---@return Weapon.Category
        function Weapon.getCategoryEx(self) end

        ---Returns an enumerator that defines the coalition that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
        ---https://wiki.hoggitworld.com/view/DCS_func_getCoalition
        ---@return coalition.side
        function Weapon.getCoalition(self) end

        ---Returns an enumerator that defines the country that an object currently belongs to. Function also works with Unit, Static Object, Airbase, Weapon
        ---https://wiki.hoggitworld.com/view/DCS_func_getCountry
        ---@return country.id
        function Weapon.getCountry(self) end

        ---Return a description table of the given object. Table entries are dependent on the category of object and the sub-categories that may exist within that object type. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
        ---https://wiki.hoggitworld.com/view/DCS_func_getDesc
        ---@return desc_weapon class
        function Weapon.getDesc(self) end

        --No Docu
        ---Returns a string that represents the units 'force' ex : The Army, Marine Corps, Navy, Air Force, Space Force and Coast Guard
        ---@param self Unit
        ---@param ... unknown
        ---@return Force_name
        function Weapon.getForcesName(self, ...) end

        ---Returns the Unit object that had launched the weapon.
        ---https://wiki.hoggitworld.com/view/DCS_func_getLauncher
        ---@return Unit class
        function Weapon.getLauncher(self) end

        ---Returns the target object that the weapon is guiding to.
        ---https://wiki.hoggitworld.com/view/DCS_func_getTarget
        ---@return Object class
        function Weapon.getTarget(self) end

        --Inhereted fuctions from Object class
        do
            ---No Docu
            function Weapon.cancelChoosingCargo() end

            ---Destroys the object, physically removing it from the game world without creating an event. The object simply disappears. If used with a group, the entire group will be destroyed. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
            ---https://wiki.hoggitworld.com/view/DCS_func_destroy TODO: Examples
            function Weapon.destroy(self) end

            ---Returns a table of what the unit 'can do' varies from unit to unit also can be obtained by getdesc().attributes
            ---@param self Unit
            ---@param ... unknown
            ---@return Unit_Attributes|table
            function Weapon.getAttributes(self, ...) end

            ---Return an enumerator of the category for the specific Weapon. The enumerator returned is dependent on the category of the Weapon. See enumerators Group.Category, Weapon.Category, and Spot.Category for further reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase. When used with any of these objects the category returned is related to the Weapon.Category.
            ---https://wiki.hoggitworld.com/view/DCS_func_getCategory
            ---@return Object.Category
            function Weapon.getCategory(self) end

            ---Returns a string of the name of the object as defined by the mission editor or dynamic spawning functions. Function also works with Unit, Static Object, Airbase When run as Weapon.getName(obj) the value can be different than if run via Weapon.getName(obj) or obj:getName(). It appears to be returning the runtime Id.
            ---https://wiki.hoggitworld.com/view/DCS_func_getName
            ---@return string
            function Weapon.getName(self) end

            ---Returns a vec3 table of the x, y, and z coordinates for the position of the given object in 3D space. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
            ---https://wiki.hoggitworld.com/view/DCS_func_getPoint
            ---@return vec3 class
            function Weapon.getPoint(self) end

            ---Returns a pos3 table of the objects current position and orientation in 3D space. X, Y, Z values are unit vectors defining the objects orientation. Coordinates are dependent on the position of the maps origin. In the case of the Caucuses theater, the origin is located in the Crimean region of the map.Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
            ---https://wiki.hoggitworld.com/view/DCS_func_getPosition
            ---@ExampleDesc Position 3 is a table consisting of the point and orientation tables.
            ---@example Position3 = {   p = Vec3, x = Vec3, y = Vec3, z = Vec3 }
            ---@return position3 class
            function Weapon.getPosition(self) end

            ---Return a string of the objects type name. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
            ---https://wiki.hoggitworld.com/view/DCS_func_getTypeName
            ---@return string
            function Weapon.getTypeName(self) end

            ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
            ---https://wiki.hoggitworld.com/view/DCS_func_getVelocity
            ---@return vec3 class
            function Weapon.getVelocity(self) end

            ---Returns a boolean value if the object in question has the passed attribute. See Article list of Attributes or db_attibutes.lua in C:\Program Files\Eagle Dynamics\DCS World\Scripts\Database for more details. Additionally attributes for each object are defined within their DB lua file. DB files provided on github for reference. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase.
            ---https://wiki.hoggitworld.com/view/DCS_func_hasAttribute
            ---@return boolean
            ---@param attribute string
            function Weapon.hasAttribute(self, attribute) end

            ---Returns a vec3 table of the objects velocity vectors. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
            ---https://wiki.hoggitworld.com/view/DCS_func_inAir
            ---@return boolean
            function Weapon.inAir(self) end

            ---Return a boolean value based on whether the object currently exists in the mission. Function also works with Unit, Weapon, Static Object, Scenery Object, Airbase
            ---https://wiki.hoggitworld.com/view/DCS_func_isExist
            ---@return boolean
            function Weapon.isExist(self) end
        end
    end
end