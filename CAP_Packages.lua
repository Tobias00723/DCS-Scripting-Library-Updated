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
