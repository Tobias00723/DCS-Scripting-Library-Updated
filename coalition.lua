--[[
    updated by Tobias00723
    orignial author : unkown ;/
    
    from the TGFB server
    Discord : https://discord.gg/hEHd4A3czx
    any questions?                   ^^
    find me on the my discord server ^^

    feel free to use these DCS prototypes
    no mentions or anything needed :)
]]
---@meta

---The coalition singleton contains functions that gets information on the all of the units within the mission. It also has two of the most powerful functions that are capable of spawning groups and static objects into the mission.
---https://wiki.hoggitworld.com/view/DCS_singleton_coalition
coalition = {}

---Dynamically spawns a group of the specified category for the specified country. Group data table is in the same format as created by the mission editor. See country page and group class page for the list of countries by id and group categories. The coalition of the group is defined by the coalition its country belongs to. If the group or any unit within shares a name of an existing group or unit, the existing group or unit will be destroyed when the new group is created. Function can NOT spawn new aircraft with a skill level of "client". However in single player a group can be spawned with the skill level of "Player". When this occurs the existing player aircraft will be destroyed. If no groupId or unitId is specified or the Ids are shared with existing groups or units, a new Id will be created for the new group.
---https://wiki.hoggitworld.com/view/DCS_func_addGroup
---@return Group Class
---@param countryId countryid
---@param groupCategory groupCategory
---@param groupData table
function coalition.addGroup(countryId, groupCategory, groupData) end

---Dynamically spawns a static object belonging to the specified country into the mission. This function follows the same rules as coalition.addGroup except for the object table not perfectly matching the format of a static object as seen in the mission file. Static Objects name cannot be shared with an existing object, if it is the existing object will be destroyed on the spawning of the new object. - If unitId is not specified or matches an existing object, a new Id will be generated. - Coalition of the object is defined based on the country the object is spawning to.
---https://wiki.hoggitworld.com/view/DCS_func_addStaticObject
---@return StaticObject class
---@param countryId countryid
---@param groupData table
function coalition.addStaticObject(countryId, groupData) end

---Returns a table of group objects belonging to the specified coalition. If the groupCategory enumerator is provided the table will only contain groups that belong to the specified category. If this optional variable is not provided, all group types will be returned. See here for the list of possible group categories.
---https://wiki.hoggitworld.com/view/DCS_func_getGroups
---@return table<number, Group>
---@param coalitionId side does not accept ALL
---@param GroupCategory groupCategory|nil
function coalition.getGroups(coalitionId, GroupCategory) end


---Returns a table of static objects belonging to the specified coalition.
--https://wiki.hoggitworld.com/view/DCS_func_getStaticObjects
---@return table<number, StaticObject>
---@param coalitionId side does not accept ALL
function coalition.getStaticObjects(coalitionId) end


---Returns a table of airbase objects belonging to the specified coalition. Objects can be ships, static objects(FARP), or airbases on the map. When the function is run as world.getAirbases() no input values required, and the function returns all airbases, ships, and farps on the map.
---https://wiki.hoggitworld.com/view/DCS_func_getAirbases
---@param coalitionId side does not accept ALL
---@return table<number, Airbase>
function coalition.getAirbases(coalitionId) end

---Returns a table of unit objects that are currently occupied by players. Function is useful in multiplayer to easily filter client aircraft from everything else.
---https://wiki.hoggitworld.com/view/DCS_func_getPlayers
---@param coalitionId side does not accept ALL
---@return table<number, Unit>
function coalition.getPlayers(coalitionId) end

---Returns a table of unit objects that provide a given service to player controlled aircraft. Services are ATC, AWACS, TANKER, and FAC.
---coalition.service
---https://wiki.hoggitworld.com/view/DCS_func_getServiceProviders
---@param coalitionId side does not accept ALL 
---@param coalitionService service
---@return table<number, Unit>
function coalition.getServiceProviders(coalitionId , coalitionService) end

---Creates a new reference point belonging to the specified coalition. Reference points are used by JTACs.
---https://wiki.hoggitworld.com/view/DCS_func_addRefPoint
---@param coalitionId side does not accept ALL 
---@param refPoint table
---@return function
function coalition.addRefPoints(coalitionId , refPoint) end

---Returns a table of reference points as defined by the mission editor or added via scripting. Reference points are used by JTACs.
---https://wiki.hoggitworld.com/view/DCS_func_getRefPoints
---@param coalitionId side does not accept ALL 
---@return table
function coalition.getRefPoints(coalitionId) end

---Returns the position of a coalitions "bullseye" as specified in the mission editor.
---@param coalitionId side does not accept ALL 
---@return vec3 class 
function coalition.getMainRefPoint(coalitionId) end

---Returns the enumarator coalitionId that a specified country belongs to.
---@param countryId countryid
---@return side number gives you the side number
function coalition.getCountryCoalition(countryId) end