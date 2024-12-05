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

    end

    ---No documention
    ---added in DCS 2.9.10 update
    ---@class weather
    world.weather = {}

    --Functions
    do

        ---No docu
        ---@param ... unknown
        ---@return number
        function world.weather.getFogThickness(...) end

        ---No docu
        ---@param ... unknown
        ---@return number
        function world.weather.getFogVisibilityDistance(...) end

        ---No docu
        ---@param ... unknown
        function world.weather.setFogAnimation(...) end

        ---No docu
        ---how high the volumetric fog will come
        ---@param Layer_thickness number in meters
        ---@param ... unknown
        function world.weather.setFogThickness(Layer_thickness, ...) end

        ---No docu
        ---how far you can see with the fog
        ---@param visibilityDistance number in meters
        ---@param ... unknown
        function world.weather.setFogVisibilityDistance(visibilityDistance, ...) end
    end
end
