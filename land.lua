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

---@class vec2
---@field x number
---@field y number

---	The land singleton contains functions used to get information about the terrain geometry of a given map. Functions include getting data on the type and height of terrain at a specific points and raytracing functions.
---https://wiki.hoggitworld.com/view/DCS_singleton_land
land = {}

---Returns the distance from sea level (y-axis) of a given vec2 point.
---https://wiki.hoggitworld.com/view/DCS_func_getHeight
---
---The following example with convert a vec3 point lacking y-axis data to a vec3 point at ground level.
---
---newPoint= {x = point.x, y = land.getHeight({x = point.x, y = point.z}), z= point.z}
---@return number
---@param vec2 vec2
function land.getHeight(vec2) end

---Returns the surface height and depth of a point. Useful for checking if the path is deep enough to support a given ship. Both values are positive. When checked over water at sea level the first value is always zero. When checked over water at altitude, for example the reservoir of the Inguri Dam, the first value is the corresponding altitude the water level is at.
---https://wiki.hoggitworld.com/view/DCS_func_getSurfaceHeightWithSeabed
---
---The following will return a value of the depth at a trigger zone named thors twins.
---
---local p = trigger.action.getZone("thors twins").point
---
---local alt, depth = land.getSurfaceHeightWithSeabed({x = p.x, y = p.z})
---@return number, number
---@param vec2 vec2
function land.getSurfaceHeightWithSeabed(vec2) end

---Returns an enumerator for the surface type at a given point.
---https://wiki.hoggitworld.com/view/DCS_func_getSurfaceType
---@return any enum
---@param vec2 vec2
function land.getSurfaceType(vec2) end

---Returns the boolean value if there is an terrain intersection via drawing a virtual line from the origin to the destination. Used for determining line of sight.
---https://wiki.hoggitworld.com/view/DCS_func_isVisible
---@return boolean
---@param origin vec3
---@param destination vec3
function land.isVisible(origin, destination) end

---Returns an intercept point at which a ray drawn from the origin in the passed normalized direction for a specified distance. If no intersection found the function will return nil.
---https://wiki.hoggitworld.com/view/DCS_func_getIP
---@return vec3 vec3
---@param origin vec3
---@param direction vec3
---@param distance number
function land.getIP(origin, direction, distance) end

---Returns a table of vectors that make up the profile of the land between the two passed points. The spacing and quantity of returned vectors is not entirely known to the author. Requires further testing.
---https://wiki.hoggitworld.com/view/DCS_func_profile
---@return table<number, vec3>
---@param vec3_1 vec3
---@param vec3_2 vec3
function land.profile(vec3_1, vec3_2) end

---Returns a coordinate of the nearest road from the passed point. NOTE that this function does not use vec2 or vec3. It uses individual values representing a vec2 for x and y. Valid road type values: 'roads' and 'railroads'
---https://wiki.hoggitworld.com/view/DCS_func_getClosestPointOnRoads
---@return number, number
---@param roadType string
---@param xCoord number
---@param yCoord number
function land.getClosestPointOnRoads(roadType, xCoord, yCoord) end

---Returns a table of points along a that define a route from a starting point to a destination point. Returned table is a table of vec2 points indexed numerically from starting point to destination. Table can return a high number of points over a relatively short route. So expect to iterate through a large number of values. Roadtype can be 'railroads' or 'roads' NOTE!!! A bug exists where the value for railroads is actually 'rails'. This is different from the sister function getClosestPointOnRoads!
---https://wiki.hoggitworld.com/view/DCS_func_findPathOnRoads
---@return table
---@param roadType string
---@param xCoord number
---@param yCoord number
---@param destX number
---@param destY number
function land.findPathOnRoads(roadType, xCoord, yCoord, destX, destY) end

return land