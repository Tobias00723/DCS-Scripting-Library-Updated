---@diagnostic disable: undefined-doc-name

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

---atmosphere is a singleton whose functions return atmospheric data about the mission. Currently limited only to wind data.
atmosphere = {}

---Returns a velocity vector of the wind at a specified point
---@param vec3 table
---@return vec3 table
function atmosphere.getWind(vec3) end

---Returns a velocity vector of the wind at a specified point, this time factoring turbulence into the equation.
---@param vec3 table
---@return vec3 table
function atmosphere.getWindWithTurbulence(vec3) end

---Returns the temperature and pressure at a given point in 3d space. Temperature is returned in Kelvins Pressure is returned in Pascals
---@param vec3 table
---@return Temp number , Pressure number
function atmosphere.getTemperatureAndPressure(vec3) end

return atmosphere