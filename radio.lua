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

    ---The radio enumerator has a single table that defines the radio modulation used to transmit.
    ---https://wiki.hoggitworld.com/view/DCS_enum_radio
    ---@class radio
    radio = {}

    ---@enum radio.modulation
    radio.modulation = {
        AM = 0,
        FM = 1
    }
end
