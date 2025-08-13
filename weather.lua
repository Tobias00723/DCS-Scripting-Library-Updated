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


    ---added in DCS 2.9.10 update
    ---part of 'world' class
    ---@class weather
    world.weather = {}

    --Functions
    do
        ---https://wiki.hoggitworld.com/view/DCS_func_getFogThickness
        ---Returns the current fog thickness in meters. Returns zero if fog is not present.
        ---@return number
        function world.weather.getFogThickness() end

        ---https://wiki.hoggitworld.com/view/DCS_func_getFogVisibilityDistance
        ---Gets the maximum visibility distance of the current fog setting. Returns 0 if no fog is present.
        ---@return number
        function world.weather.getFogVisibilityDistance() end

        ---https://wiki.hoggitworld.com/view/DCS_func_setFogAnimation
        ---Uses data from the passed table to change the fog visibility and thickness over a desired timeframe. This allows for a gradual increase/decrease of fog values rather than abruptly applying the values.
        ---Animation Key Format: {time, visibility, thickness}
        ---Time: in seconds 0 to infinity
        ---Time is relative to when the function was called. Time value for each key must be larger than the previous key. If time is set to 0 then the fog will be applied to the corresponding visibility and thickness values at that key. Any time value greater than 0 will result in the current fog being inherited and changed to the first key.
        ---Visibility: in meters 100 to 100000
        ---Thickness: in meters 100 to 5000
        ---The speed at which the visibility and thickness changes is based on the time between keys and the values that visibility and thickness are being set to.
        ---When the function is passed an empty table {} or nil the fog animation will be discarded and whatever the current thickness and visibility are set to will remain.
        ---@param fogAnimationKeys_discard? table<number, table<number, number>> Time: in seconds 0 to infinity | Visibility: in meters 100 to 100000 | Thickness: in meters 100 to 5000
        function world.weather.setFogAnimation(fogAnimationKeys_discard) end

        ---https://wiki.hoggitworld.com/view/DCS_func_setFogThickness
        ---	Sets the fog to the desired thickness in meters at sea level. Any fog animation will be discarded.
        ---Valid range : 100 to 5000
        ---If 0 is passed to the function the fog will be removed.
        ---@param Layer_thickness number in meters Valid range : 100 to 5000
        function world.weather.setFogThickness(Layer_thickness) end

        ---https://wiki.hoggitworld.com/view/DCS_func_setFogVisibilityDistance
        ---Sets the maximum visibility at sea level in meters.
        ---Limit: 100 to 100000
        ---If 0 is passed to the function the fog will be removed.
        ---@param visibilityDistance number in meters Limit: 100 to 100000
        function world.weather.setFogVisibilityDistance(visibilityDistance) end
    end
end
