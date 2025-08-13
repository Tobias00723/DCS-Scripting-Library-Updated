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
        ---@private
        ---@class CAP_packages_class
        ---@field last_idx number Index tracking the last package
        ---@field blue table A table to store the blue packages
        ---@field red table A table to store the red packages
    end

    ---@type CAP_packages_class
    CAP_packages = {
        last_idx = 1,
        blue = {},
        red = {}
    }
end

do
    --No Docu
    --Unknows functionality ads a entry to CAP_Package
    ---@param country country.id
    ---@param ... string list of unit names to add
    function addPackage(country, ...) end

    --No Docu
    ---comment
    ---@param country country.id
    ---@param name string unit name
    ---@return boolean
    function checkCAPSync(country, name) end

    --No Docu
    ---@param country country.id
    ---@param name string
    ---@param WPidx number
    function setFlightCurrentWP(country, name, WPidx) end

    --No Docu
    --- simple function that will force a group to attack the other group
    --- using its controller
    ---@param Attacker string
    ---@param Target string
    function forceAttackGroup(Attacker, Target) end
end
