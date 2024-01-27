--[[
    made by Tobias00723
    
    from the TGFB server
    Discord : https://discord.gg/hEHd4A3czx
    any questions?                   ^^
    find me on the my discord server ^^

    feel free to use these DCS prototypes
    no mentions or anything needed :)
]]
---@meta

---**No documentation** WIP
DCS = {}

---**No documentation** WIP
---*advised to simple see link below for instructions*
---https://wiki.hoggitworld.com/view/DCS_func_setUserCallbacks
hook = {}

---Pauses/resumes the simulation. Server-side only.
---https://wiki.hoggitworld.com/view/DCS_func_setPause
---@param action boolean
function DCS.setPause(action) end

---Returns the pause state of a server. True for server is paused, false if server is not paused.
---https://wiki.hoggitworld.com/view/DCS_func_getPause
---@return boolean
function DCS.getPause() end

---Command to stop the mission
---https://wiki.hoggitworld.com/view/DCS_func_stopMission
function DCS.stopMission() end

---Command to close the DCS application.
---https://wiki.hoggitworld.com/view/DCS_func_stopMission
function DCS.exitProcess() end

---Returns whether or not the game is in the multiplayer mode. True for multiplayer, false for single player.
---https://wiki.hoggitworld.com/view/DCS_func_isMultiplayer
---@return boolean
function DCS.isMultiplayer() end

---Returns whether or not the game is running as a server or is in the single player mode.
---https://wiki.hoggitworld.com/view/DCS_func_isServer
---@return boolean
function DCS.isServer() end

---Returns the DCS simulation time in seconds. Dependent on how long the game has been open.
---https://wiki.hoggitworld.com/view/DCS_func_getModelTime
---@return number
function DCS.getModelTime() end

---Returns the current time in a mission relative to the DCS start time.
---https://wiki.hoggitworld.com/view/DCS_func_getRealTime
---@return number
function DCS.getRealTime() end

---Returns the table of the options for a given mission as stored in the options.lua file embedded in a miz.
---https://wiki.hoggitworld.com/view/DCS_func_getMissionOptions
---@return table
function DCS.getMissionOptions() end

---Returns a list of coalitions which have client slots available.
---https://wiki.hoggitworld.com/view/DCS_func_getAvailableCoalitions
---@return table
function DCS.getAvailableCoalitions() end

---Returns a table of slots available to a given coalition.
---https://wiki.hoggitworld.com/view/DCS_func_getAvailableSlots
---@param coaId number number or string 
---@return table
function DCS.getAvailableSlots(coaId) end

---Returns the table of the mission as stored in the mission file embedded in a miz.
---https://wiki.hoggitworld.com/view/DCS_func_getCurrentMission
---@return table
function DCS.getCurrentMission() end

---Returns the name of the mission.
---https://wiki.hoggitworld.com/view/DCS_func_getMissionName
---@return string
function DCS.getMissionName() end

---Returns the file name of the current mission file.
---https://wiki.hoggitworld.com/view/DCS_func_getMissionFilename
---@return string
function DCS.getMissionFilename() end

---Returns the current result for a given coalition as defined by the mission goals in the mission.
---https://wiki.hoggitworld.com/view/DCS_func_getMissionResult
---@return number
function DCS.getMissionResult() end

---Returns the given property for the passed unit.
---https://wiki.hoggitworld.com/view/DCS_func_getUnitProperty
---@return string
---@param unitId number
---@param propertyId string see enum.DCS
function DCS.getUnitProperty(unitId, propertyId) end

---Shortcut of DCS.getUnitProperty(missionId, DCS.UNIT_TYPE)
---https://wiki.hoggitworld.com/view/DCS_func_getUnitType
---@return string
---@param missionId number
function DCS.getUnitType(missionId) end

---Returns the attribute of the specified type for the specified unit type.
---https://wiki.hoggitworld.com/view/DCS_func_getUnitTypeAttribute
---@return string
---@return number
---@return table
---@param typeName string
---@param attribute string
function DCS.getUnitType(typeName , attribute) end

---**Undocumented** might not work
---@return unknown
---@param unknown unknown   
function DCS.writeDebriefing(unknown) end

---**Undocumented** might not work
---@return unknown
---@param unknown unknown   
function DCS.makeScreenShot(unknown) end

---*advised to simple see link below*
---https://wiki.hoggitworld.com/view/DCS_func_setUserCallbacks
---@param functions table   
function DCS.setUserCallbacks(functions) end

---Occurs when a server begins loading a mission.
---https://wiki.hoggitworld.com/view/DCS_hook_onMissionLoadBegin
function hook.onMissionLoadBegin() end

---While a mission is loading this callback will contain information about the loading progress.
---https://wiki.hoggitworld.com/view/DCS_hook_onMissionLoadProgress
---@param progress string
---@param message string
function hook.onMissionLoadProgress(progress , message ) end

---Occurs when a server finishes loading a mission.
---https://wiki.hoggitworld.com/view/DCS_hook_onMissionLoadEnd
function hook.onMissionLoadEnd() end

---Occurs when loading is finished and the mission is fully initialized. On an install with rendering it is effectively when you enter the "3d world" of the game and the mission is ready to be unpaused.
---https://wiki.hoggitworld.com/view/DCS_hook_onSimulationStart
function hook.onSimulationStart() end

---	Occurs when exiting the simulation. Effectively is when the user goes from the 3d game world the the UI.
---https://wiki.hoggitworld.com/view/DCS_hook_onSimulationStop
function hook.onSimulationStop() end

---Occurs constantly as the simulation is running. This function runs extremely fast, **several hundred times a second**. It is highly recommended to put in checks to limit how often code can run from this function.
---https://wiki.hoggitworld.com/view/DCS_hook_onSimulationFrame
function hook.onSimulationFrame() end

---Occurs when the mission is paused.
---https://wiki.hoggitworld.com/view/DCS_hook_onSimulationPause
function hook.onSimulationPause() end

---Occurs when the mission is resumed
---https://wiki.hoggitworld.com/view/DCS_hook_onSimulationResume
function hook.onSimulationResume() end

---**No documentation**
---@return unknown
---@param unkown unknown
function hook.onGameEvent(unkown) end

---**No documentation**
---@return unknown
---@param unkown unknown
function hook.onNetConnect(unkown) end

---**No documentation**
---@return unknown
---@param unkown unknown
function hook.onNetMissionChanged(unkown) end

---**No documentation**
---@return unknown
---@param unkown unknown
function hook.onNetConnect(unkown) end

---**No documentation**
---@return unknown
---@param unkown unknown
function hook.onNetDisconnect(unkown) end

---**No documentation**
---@return unknown
---@param unkown unknown
function hook.onNetDisconnect(unkown) end

---Occurs when a player connects to a server. Passed id value is a simple unique identifier that is used with network functions to get other information about that player or actions like kicking them from the server.
---https://wiki.hoggitworld.com/view/DCS_hook_onPlayerConnect
---@param id number
function hook.onPlayerConnect(id) end

---Occurs when a player disconnects from a server.
---https://wiki.hoggitworld.com/view/DCS_hook_onPlayerDisconnect
---@param id number
function hook.onPlayerDisconnect(id) end

---Occurs when a player has fully loaded into the simulation and can select a slot.
---https://wiki.hoggitworld.com/view/DCS_hook_onPlayerStart
---@param id number
function hook.onPlayerStart(id) end

---Occurs just before onPlayerDisconnect if the user chose to leave the server..
---https://wiki.hoggitworld.com/view/DCS_hook_onPlayerStop
---@param id number
function hook.onPlayerStop(id) end

---Occurs when a player successfully moves into a new slot. This will not be called for example if they try to RIO for a player and the pilot rejects the request.
---https://wiki.hoggitworld.com/view/DCS_hook_onPlayerChangeSlot
---@param playerId  number
function hook.onPlayerChangeSlot(playerId) end

---*recommended to see documentation*
---https://wiki.hoggitworld.com/view/DCS_hook_onPlayerTryConnect
---@param addr string
---@param ucid string
---@param name string
---@param playerId number
function hook.onPlayerTryConnect(addr , ucid , name , playerId) end

---Occurs when a player attempts to send a chat message. This function can be used to suppress or modify the message from appearing. For example chat commands can be created for admins by checking who sent the message and doing an action based on that.
--IMPORTANT: If any value is returned with this function then any other callback that uses it will be ignored. If no choice is to be made, then do NOT return any value.
---https://wiki.hoggitworld.com/view/DCS_hook_onPlayerTrySendChat
---@param playerId number
---@param message string
---@param all boolean
function hook.onPlayerTrySendChat(playerId , message , all) end

---Occurs when a player clicks on a new slot to try and enter a given aircraft. Can be used for slot blocking purposes within a mission or to force players
--IMPORTANT: If any value is returned with this function then any other callback that uses it will be ignored. If no choice is to be made, then do NOT return any value. DCS itself uses this callback as part of the multicrew slot interface. By returning true the pilot will not get the prompt or have any choice in allowing another player from entering their aircraft.
---https://wiki.hoggitworld.com/view/DCS_hook_onPlayerTryChangeSlot
---@param playerId number
---@param side number
---@param slotid string
function hook.onPlayerTryChangeSlot(playerId , side , slotid) end