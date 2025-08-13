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
        --Player_id
        do
            ---@class Player_id number not table
            ---@field playerid number
        end

        --Net_player_info
        do
            ---@class Net_player_info
            ---@field ping number Ping in ms of the player
            ---@field side coalition.side check coalition.side
            ---@field slot string slotid of player
            ---@field id Player_id Plyerid of the player in the server
            ---@field name string player name in the server
            ---@field ucid string user id unique for every player
            ---@field started boolean unkown
            ---@field lang string language of the DCS istall of the player
            ---@field ipaddr string ip adress of the player format of xxx.xxx.xxx.xxx:10308 port can differ
        end
    end

    ---The net singleton are a number of functions from the network API that work in the mission scripting environment. Notably for mission scripting purposes there is now a way to send chat, check if players are in Combined Arms slots, kick people from the server, and move players to certain slots.
    ---https://wiki.hoggitworld.com/view/DCS_singleton_net
    ---@class net
    net = {}


    ---@alias net_statID
    ---| 0 PS_PING
    ---| 1 PS_CRASH
    ---| 2 PS_CAR
    ---| 3 PS_PLANE
    ---| 4 PS_SHIP
    ---| 5 PS_SCORE
    ---| 6 PS_LAND
    ---| 7 PS_EJECT



    net = {
        PS_PING = 0,
        PS_CRASH = 1,
        PS_CAR = 2,
        PS_PLANE = 3,
        PS_SHIP = 4,
        PS_SCORE = 5,
        PS_LAND = 6,
        PS_EJECT = 7,

        GAME_MODE_CONQUEST = 2,
        GAME_MODE_LAST_MAN_STANDING = 1,
        GAME_MODE_MISSION = 0,
        GAME_MODE_TEAM_DEATH_MATCH = 3,

        ERR_BAD_CALLSIGN = 102,
        ERR_BANNED = 101,
        ERR_CONNECT_FAILED = 2,
        ERR_DENIED_TRIAL_ONLY = 106,
        ERR_INVALID_ADDRESS = 1,
        ERR_INVALID_PASSWORD = 100,
        ERR_KICKED = 104,
        ERR_NOT_ALLOWED = 107,
        ERR_PROTOCOL_ERROR = 4,
        ERR_REFUSED = 105,
        ERR_SERVER_FULL = 108,
        ERR_TAINTED_CLIENT = 103,
        ERR_THATS_OKAY = 0,
        ERR_TIMEOUT = 5,
        ERR_WRONG_VERSION = 3,

        RESUME_MANUAL = 0,
        RESUME_ON_LOAD = 1,
        RESUME_WITH_CLIENTS = 2,

        CHAT_ALL = -1,
        CHAT_TEAM = -2,

    }

    --Functions
    do
        ---Executes a lua string in a given lua environment in the game.
        ---https://wiki.hoggitworld.com/view/DCS_func_dostring_in
        ---@return string
        ---@param state 'config'|'mission'|'export'|'gui'|'server'
        ---@param dostring string
        function net.dostring_in(state, dostring) end

        ---Forces the player to occupy the set slot. SlotId matches unit Ids of client aircraft. The exception being Combined Arms slots and multicrew slots. The latter of which have "_X" appended to denote the seat.
        ---https://wiki.hoggitworld.com/view/DCS_func_force_player_slot
        ---@param playerID Player_id
        ---@param sideId coalition.side
        ---@param slotId string
        ---@return boolean
        function net.force_player_slot(playerID, sideId, slotId) end

        ---Returns the playerID of the local player. Always returns 1 for server.
        ---https://wiki.hoggitworld.com/view/DCS_func_get_my_player_id
        ---@return Player_id
        function net.get_my_player_id() end

        ---Returns the name of a given player. Is the same as net.get_player_info(playerID, 'name')
        ---https://wiki.hoggitworld.com/view/DCS_func_get_name
        ---@return string
        ---@param playerID Player_id
        function net.get_name(playerID) end

        ---Returns a table of attributes for a given playerId. If optional attribute present only that value is returned Attributes:
        ---https://wiki.hoggitworld.com/view/DCS_func_get_player_info
        ---@return Net_player_info --only full table if attribute is nil
        ---@param playerID Player_id|number
        ---@param attribute? 'id'|'name'|'side'|'slot'|'ping'|'ipaddr'|'ucid'
        function net.get_player_info(playerID, attribute) end

        ---Returns a table of players currently connected to the server.
        ---https://wiki.hoggitworld.com/view/DCS_func_get_player_list
        ---@return table<number, Player_id>
        function net.get_player_list() end

        --No Docu
        function net.get_server_host() end

        ---Returns the playerID of the server. Currently always 1.
        ---https://wiki.hoggitworld.com/view/DCS_func_get_server_id
        ---@return Player_id
        function net.get_server_id() end

        ---Returns the sideId and slotId of a given player. Is the same as net.get_player_info(playerID, 'side') and net.get_player_info(playerID, 'slot')
        ---https://wiki.hoggitworld.com/view/DCS_func_get_slot
        ---@return number, number
        ---@param playerID Player_id
        function net.get_slot(playerID) end

        ---Returns a statistic from a given player. Last arg is optional. Attributes:
        ---https://wiki.hoggitworld.com/view/DCS_func_get_stat
        ---@return number
        ---@param playerID Player_id
        ---@param statID net_statID
        function net.get_stat(playerID, statID) end

        --No Docu
        function net.is_loopback_address() end

        --No Docu
        function net.is_private_address() end

        ---Converts a JSON string to a lua value.
        ---https://wiki.hoggitworld.com/view/DCS_func_json2lua
        ---@return table
        ---@param json string
        function net.json2lua(json) end

        ---Kicks a player from the server. Can display a message to the user.
        ---https://wiki.hoggitworld.com/view/DCS_func_kick
        ---@return boolean
        ---@param playerID Player_id
        ---@param message string
        function net.kick(playerID, message) end

        ---net.log("string") will write an "INFO" entry to the DCS log file, with the message "LuaNET (Main): string" The full set of arguments supported for net.log() are currently undocumented.
        ---https://wiki.hoggitworld.com/view/DCS_func_log
        ---@param string string
        function net.log(string) end

        ---Converts a lua value to a JSON string.
        ---https://wiki.hoggitworld.com/view/DCS_func_lua2json
        ---@return string
        ---@param lua any
        function net.lua2json(lua) end

        --No Docu
        function net.recv_chat() end

        ---Sends a chat message.
        ---https://wiki.hoggitworld.com/view/DCS_func_send_chat
        ---@param message string
        ---@param all? boolean
        function net.send_chat(message, all) end

        ---Sends a chat message to the player with the passed id. If the optional from Id is set then the player will appear to receive a message from that player.
        ---https://wiki.hoggitworld.com/view/DCS_func_send_chat_to
        ---@param message string
        ---@param playerId Player_id
        ---@param fromId? Player_id
        function net.send_chat_to(message, playerId, fromId) end

        --changes the playername in the mission OBSOLETE, works only locally
        ---@param name string
        ---@param id Player_id
        function net.set_name(name, id) end

        --No Docu
        function net.set_slot() end

        --No Docu
        function net.trace() end
    end
end
