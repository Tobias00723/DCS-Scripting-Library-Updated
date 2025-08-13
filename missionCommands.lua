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

    ---The missionCommands singleton allows for greater access and flexibility of use for the F10 Other radio menu. Added commands can contain sub-menus and directly call lua functions.
    ---https://wiki.hoggitworld.com/view/DCS_singleton_missionCommands
    ---@class missionCommands
    missionCommands = {}


    --Functions
    do
        ---Adds a command to the "F10 Other" radio menu allowing players to run specified scripting functions. Command is added for both teams. The string name is the text that will be displayed in the F10 Other menu and is also used in the function to remove the command from the menu. Path is an optional value that defines whether or not the command will be in a named submenu. FunctionToCall is the name of the function, with the optional argument value designating any passed values.
        ---https://wiki.hoggitworld.com/view/DCS_func_addCommand
        ---@return table
        ---@param name string
        ---@param path? table|nil
        ---@param functionToRun function
        ---@param anyArguement? any|nil
        function missionCommands.addCommand(name, path, functionToRun, anyArguement) end

        ---Adds a command to the "F10 Other" radio menu allowing players to run specified scripting functions. Command is added for the specified coalition. The string name is the text that will be displayed in the F10 Other menu and is also used in the function to remove the command from the menu. Path is an optional value that defines whether or not the command will be in a named submenu. FunctionToCall is the name of the function, with the optional argument value designating any passed values.
        ---https://wiki.hoggitworld.com/view/DCS_func_addCommandForCoalition
        ---@return table
        ---@param coalitionSide coalition.side
        ---@param name string
        ---@param path? table|nil table or nil
        ---@param functionToRun function
        ---@param anyArguement? any|nil
        function missionCommands.addCommandForCoalition(coalitionSide, name, path, functionToRun, anyArguement) end

        ---Adds a command to the "F10 Other" radio menu allowing players to run specified scripting functions. Command is added for the specified groupId. The string name is the text that will be displayed in the F10 Other menu and is also used in the function to remove the command from the menu. Path is an optional value that defines whether or not the command will be in a named submenu. FunctionToCall is the name of the function, with the optional argument value designating any passed values.
        ---https://wiki.hoggitworld.com/view/DCS_func_addCommandForGroup
        ---@return table
        ---@param groupId number
        ---@param name string
        ---@param path? table|nil table or nil
        ---@param functionToRun function
        ---@param anyArguement? any|nil
        function missionCommands.addCommandForGroup(groupId, name, path, functionToRun, anyArguement) end

        ---Creates a submenu of a specified name for all players. Can be used to create nested sub menues. If the path is not specified, submenu is added to the root menu.
        ---https://wiki.hoggitworld.com/view/DCS_func_addSubMenu
        ---@nodiscard
        ---@return table
        ---@param name string
        ---@param path? table|nil
        function missionCommands.addSubMenu(name, path) end

        ---Creates a submenu of a specified name for the specified coalition. Can be used to create nested sub menues. If the path is not specified, submenu is added to the root menu.
        ---https://wiki.hoggitworld.com/view/DCS_func_addSubMenuForCoalition
        ---@nodiscard
        ---@return table
        ---@param coalitionSide coalition.side
        ---@param name string
        ---@param path? table|nil
        function missionCommands.addSubMenuForCoalition(coalitionSide, name, path) end

        ---Creates a submenu of a specified name for the specified group. Can be used to create nested sub menues. If the path is not specified, submenu is added to the root menu.
        ---https://wiki.hoggitworld.com/view/DCS_func_addSubMenuForGroup
        ---@nodiscard
        ---@return table
        ---@param groupId number
        ---@param name string
        ---@param path? table|nil
        function missionCommands.addSubMenuForGroup(groupId, name, path) end

        --No Docu
        function missionCommands.doAction() end

        ---Removes the item of the specified path from the F10 radio menu for all. If the value is nil all items will be removed from the radio menu. If the path given is a submenu then all items nested within will be removed.
        ---https://wiki.hoggitworld.com/view/DCS_func_removeItem
        ---@param path? table|nil table or nil
        function missionCommands.removeItem(path) end

        ---Removes the item of the specified path from the F10 radio menu for the specified coalition. If the value is nil all items will be removed from the radio menu.
        ---https://wiki.hoggitworld.com/view/DCS_func_removeItemForCoalition
        ---@return function
        ---@param coalitionSide coalition.side
        ---@param path? table|nil table or nil
        function missionCommands.removeItemForCoalition(coalitionSide, path) end

        ---Removes the item of the specified path from the F10 radio menu for the specified group. If the value is nil all items will be removed from the radio menu.
        ---https://wiki.hoggitworld.com/view/DCS_func_removeItemForGroup
        ---@return function
        ---@param groupId number
        ---@param path? table|nil table or nil
        function missionCommands.removeItemForGroup(groupId, path) end
    end
end
