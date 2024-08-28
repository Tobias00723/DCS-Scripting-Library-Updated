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
        --vec 2
        do
            ---@class vec2
            ---@field x number
            ---@field y number
        end

        --- Vec3
        do
            ---@class vec3
            ---@field x number
            ---@field y number
            ---@field z number
        end

        --Position3
        do
            ---@class position3
            ---@field p vec3
            ---@field x vec3
            ---@field y vec3
            ---@field z vec3
        end

        --Forces names
        do
            ---@alias Force_name
            ---|'AirForce'
            ---|'AirBase'
            ---| string
        end
    end

    ED_FINAL_VERSION = true ---@type boolean
    ED_PUBLIC_AVAILABLE = true ---@type boolean
    _APP_VERSION = "2.9.7.59263" ---@type string
    db_path = "./Scripts/Database/" ---@type string
    troopsPath = "./Scripts/Database/troops/" ---@type string


    --Functions
    do
        --No Docu
        function addPackage() end

        --No Docu
        function checkCAPSync() end

        --No Docu
        function class() end

        --No Docu
        function doZipFile() end

        --No Docu
        function forceAttackGroup() end

        --No Docu
        function gcinfo() end

        --No Docu
        function merge_all_units_to_AGGRESSORS() end

        --No Docu
        function safe_require() end

        --No Docu
        function setFlightCurrentWP() end
    end
end
