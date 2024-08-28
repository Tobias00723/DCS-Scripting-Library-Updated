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
        --trigger zone
        do
            ---@class TriggerZone
            ---@field point vec3
            ---@field radius number
        end

        --Enum_ShapeID
        do
            ---@alias Enum_ShapeID
            ---| 1 Line
            ---| 2 Circle
            ---| 3 Rect
            ---| 4 Arrow
            ---| 5 Text
            ---| 6 Quad
            ---| 7 Freeform
        end

        --Zone Data
        do
            ---@class Trig_zone_data
            ---@field zoneId number
            ---@field name string
        end
    end


    ---The trigger singleton contains a number of functions that mimic actions and conditions found within the mission editor triggers. As a result these functions provide an easy way to interface with triggers setup within the mission editor. Additionally a few trigger functions act as a gateway between mission editor triggers and related scripting functions.
    ---https://wiki.hoggitworld.com/view/DCS_singleton_trigger
    ---@class trigger
    trigger = {}

    trigger.action = {}

    trigger.misc = {}

    ---@enum trigger.flareColor
    trigger.flareColor = {
        Green = 0,
        Red = 1,
        White = 2,
        Yellow = 3,
    }

    ---@enum trigger.smokeColor
    trigger.smokeColor = {
        Green = 0,
        Red = 1,
        White = 2,
        Orange = 3,
        Blue = 4,

    }

    --Functions
    do
        --action
        do
            ---Activates the specified group if it is setup for "late activation." Calls the Group.activate function.
            ---https://wiki.hoggitworld.com/view/DCS_func_activateGroup
            ---@param Group Group
            function trigger.action.activateGroup(Group) end

            ---Adds a command to the "F10 Other" radio menu allowing players to call commands and set flags within the mission. Command is added for both teams. The string name is the text that will be displayed in the F10 Other menu and is also used in the function to remove the command from the menu.
            ---https://wiki.hoggitworld.com/view/DCS_func_addOtherCommand
            ---@param name string
            ---@param userFlagName string
            ---@param userFlagValue number
            function trigger.action.addOtherCommand(name, userFlagName, userFlagValue) end

            ---Adds a command to the "F10 Other" radio menu allowing players to call commands and set flags within the mission. Command is added for all players belonging to the specified coalition. The string name is the text that will be displayed in the F10 Other menu and is also used in the function to remove the command from the menu.
            ---https://wiki.hoggitworld.com/view/DCS_func_addOtherCommandForCoalition
            ---@param coalition coalition.side
            ---@param name string
            ---@param userFlagName string
            ---@param userFlagValue number
            function trigger.action.addOtherCommandForCoalition(coalition, name, userFlagName, userFlagValue) end

            ---Adds a command to the "F10 Other" radio menu allowing players to call commands and set flags within the mission. Command is added for a specific group designated by its groupId. The string name is the text that will be displayed in the F10 Other menu and is also used in the function to remove the command from the menu.
            ---https://wiki.hoggitworld.com/view/DCS_func_addOtherCommandForGroup
            ---@param groupId number
            ---@param name string
            ---@param userFlagName string
            ---@param userFlagValue number
            function trigger.action.addOtherCommandForGroup(groupId, name, userFlagName, userFlagValue) end

            ---Creates an arrow from the startPoint to the endPoint on the F10 map. The arrow will be "pointing at" the startPoint. There is no control over other dimensions of the arrow. Coalition Ids to be used.
            ---https://wiki.hoggitworld.com/view/DCS_func_arrowToAll
            ---@param coalition coalition.side|-1
            ---@param id number
            ---@param startPoint vec3
            ---@param endPoint vec3
            ---@param color table
            ---@param fillColor table
            ---@param lineType number
            ---@param readOnly boolean|nil
            ---@param message string|nil
            function trigger.action.arrowToAll(coalition, id, startPoint, endPoint, color, fillColor, lineType, readOnly,
                                               message)
            end

            ---Creates a circle on the map with a given radius, color, fill color, and outline. Coalition Ids to be used.
            ---https://wiki.hoggitworld.com/view/DCS_func_circleToAll
            ---@param coalition coalition.side|-1
            ---@param id number
            ---@param center vec3
            ---@param radius number
            ---@param color table
            ---@param fillColor table
            ---@param lineType number
            ---@param readOnly boolean|nil
            ---@param message string|nil
            function trigger.action.circleToAll(coalition, id, center, radius, color, fillColor, lineType, readOnly,
                                                message)
            end

            ---Creates a smoke plume behind a specified aircraft. When passed 0 for smoke type the plume will be disabled. When triggering the on the same unit with a different color the plume will simply change color. Optional value for altitude can be set. This value is in meters and defines the altitude at which the aircraft must be for the smoke to dispense. If the aircraft goes below that altitude the smoke will stop. As long as the smoke is enabled the toggling on/off by changing altitude is automated.
            ---https://wiki.hoggitworld.com/view/DCS_func_ctfColorTag
            ---@Example 	The following creates a blue smoke plume on an aircraft named "IWishEDWouldDocumentFeaturesMore" that will be enabled as long as the aircraft is above 1000 meters.
            ---trigger.action.ctfColorTag('IWishEDWouldDocumentFeaturesMore', 5, 1000)
            ---@param unitName string
            ---@param smokeColor number
            ---@param altitude number|nil
            function trigger.action.ctfColorTag(unitName, smokeColor, altitude) end

            ---Deactivates the specified group. Calls the Group.destroy function.
            ---https://wiki.hoggitworld.com/view/DCS_func_deactivateGroup
            ---@param Group Group
            function trigger.action.deactivateGroup(Group) end

            ---Creates a large smoke effect on a vec3 point of a specified type and density.
            ---1 = small smoke and fire
            ---2 = medium smoke and fire
            ---3 = large smoke and fire
            ---4 = huge smoke and fire
            ---5 = small smoke
            ---6 = medium smoke
            ---7 = large smoke
            ---8 = huge smoke
            ---Density is any value from 0 to 1. For example 0.5. Name is a unique name given to the smoke mark to be used with removing it.
            ---https://wiki.hoggitworld.com/view/DCS_func_effectSmokeBig
            ---@param vec3 vec3
            ---@param smokePreset number
            ---@param density number
            ---@param name string|nil
            function trigger.action.effectSmokeBig(vec3, smokePreset, density, name) end

            ---Stops a big smoke effect of the passed name. Used in conjunction with trigger.action.effectSmokeBig
            ---https://wiki.hoggitworld.com/view/DCS_func_effectSmokeStop
            ---@param name string
            function trigger.action.effectSmokeStop(name) end

            ---Creates an explosion at a given point at the specified power.
            ---https://wiki.hoggitworld.com/view/DCS_func_explosion
            ---@param vec3 vec3
            ---@param power number
            function trigger.action.explosion(vec3, power) end

            ---Orders the specified group to resume moving. Calls Group.getController(setCommand()) function and sets the stopRoute command to false. Only works with ground groups.
            ---https://wiki.hoggitworld.com/view/DCS_func_groupContinueMoving
            ---@param Group Group
            function trigger.action.groupContinueMoving(Group) end

            ---Orders the specified group to stop moving. Calls Group.getController(setCommand()) function and sets the stopRoute command to true. Only works with ground groups.
            ---https://wiki.hoggitworld.com/view/DCS_func_groupStopMoving
            ---@param Group Group
            function trigger.action.groupStopMoving(Group) end

            ---Creates an illumination bomb at the specified point. y variable defines the altitude at which the bomb will appear at. The illumination bomb will burn for 300 seconds (5 minutes). Additionally the bomb will fall toward the ground, so a minimum altitude is required to get the full illumination time. The power is a value between 1 and 1000000.
            ---https://wiki.hoggitworld.com/view/DCS_func_illuminationBomb
            ---@param vec3 vec3
            ---@param power number
            function trigger.action.illuminationBomb(vec3, power) end

            ---Creates a line on the F10 map from one point to another. Coalition Ids to be used.
            ---https://wiki.hoggitworld.com/view/DCS_func_lineToAll
            ---@param coalition coalition.side|-1
            ---@param id number
            ---@param startPoint vec3
            ---@param endPoint vec3
            ---@param color table
            ---@param lineType number
            ---@param readOnly boolean|nil
            ---@param message string|nil
            function trigger.action.lineToAll(coalition, id, startPoint, endPoint, color, lineType, readOnly, message) end

            ---Adds a mark point to all on the F10 map with attached text. 2.5 added the two new variables of readOnly and message. Read only if true will make it so users cannot remove the mark. Message is a message that is displayed when a mark is added. Set to for no message to be added.
            ---https://wiki.hoggitworld.com/view/DCS_func_markToAll
            ---@param id number
            ---@param text string
            ---@param vec3 vec3
            ---@param readOnly boolean|nil
            ---@param message string|nil
            function trigger.action.markToAll(id, text, vec3, readOnly, message) end

            ---Adds a mark point to a coalition on the F10 map with attached text. 2.5 added the two new variables of readOnly and message. Read only if true will make it so users cannot remove the mark. Message is a message that is displayed when a mark is added. Set to for no message to be added.
            ---https://wiki.hoggitworld.com/view/DCS_func_markToCoalition
            ---@param id number
            ---@param text string
            ---@param vec3 vec3
            ---@param coalitionId coalition.side
            ---@param readOnly boolean|nil
            ---@param message string|nil
            function trigger.action.markToCoalition(id, text, vec3, coalitionId, readOnly, message) end

            ---Adds a mark point to a group on the F10 map with attached text. 2.5 added the two new variables of readOnly and message. Read only if true will make it so users cannot remove the mark. Message is a message that is displayed when a mark is added. Set to for no message to be added.
            ---https://wiki.hoggitworld.com/view/DCS_func_markToGroup
            ---@param id number
            ---@param text string
            ---@param vec3 vec3
            ---@param groupId number
            ---@param readOnly boolean|nil
            ---@param message string|nil
            function trigger.action.markToGroup(id, text, vec3, groupId, readOnly, message) end

            ---Creates the defined shape on the F10 map. Uses the same definitions as the specific functions to create different shapes with the only difference being the first parameter is used to define the shape. This function does have an additional type of shape of "freeform" which allows you to create an 3+ vertices shape in any format you wish. Shape Ids:
            ---https://wiki.hoggitworld.com/view/DCS_func_markupToAll
            ---@param shapeId Enum_ShapeID
            ---@param coalition coalition.side|-1
            ---@param id number
            ---@param points vec3
            ---@param color table|any
            ---@param fillColor table|any
            ---@param lineType number|any
            ---@param readOnly boolean|nil|any
            ---@param message string|nil|any
            ---@param ... any
            function trigger.action.markupToAll(shapeId, coalition, id, points, color, fillColor, lineType, readOnly,
                                                message, ...)
            end

            ---	Plays a sound file to all players. The sound file must be placed incoalition.side of the miz file in order to be played.
            ---https://wiki.hoggitworld.com/view/DCS_func_outSound
            ---@param soundfile string
            function trigger.action.outSound(soundfile) end

            ---Plays a sound file to all players on the specified coalition. The sound file must be placed incoalition.side of the miz file in order to be played.
            ---https://wiki.hoggitworld.com/view/DCS_func_outSoundForCoalition
            ---@param coalition coalition.side
            ---@param soundfile string
            function trigger.action.outSoundForCoalition(coalition, soundfile) end

            ---Plays a sound file to all players on the specified country. The sound file must be placed incoalition.side of the miz file in order to be played.
            ---https://wiki.hoggitworld.com/view/DCS_func_outSoundForCountry
            ---@param country country.id
            ---@param soundfile string
            function trigger.action.outSoundForCountry(country, soundfile) end

            ---Plays a sound file to all players in the specified group. Group is specified by their groupId. The sound file must be placed incoalition.side of the miz file in order to be played.
            ---https://wiki.hoggitworld.com/view/DCS_func_outSoundForGroup
            ---@param groupId number
            ---@param soundfile string
            function trigger.action.outSoundForGroup(groupId, soundfile) end

            ---No Docu
            function trigger.action.outSoundForUnit() end

            ---No Docu
            function trigger.action.outSoundStop() end

            ---Displays the passed string of text for the specified time to all players. Boolean clearview defines whether or not to use the old message display format. The old message display overwrites existing messages and is good for displaying anything that must be updated at a high rate like lap times.
            ---https://wiki.hoggitworld.com/view/DCS_func_outText
            ---@param text string
            ---@param displayTime number
            ---@param clearview boolean|nil
            function trigger.action.outText(text, displayTime, clearview) end

            ---Displays the passed string of text for the specified time to all players belonging to the specified coalition. Boolean clearview defines whether or not to use the old message display format. The old message display overwrites existing messages and is good for displaying anything that must be updated at a high rate like lap times.
            ---https://wiki.hoggitworld.com/view/DCS_func_outTextForCoalition
            ---@param coalition coalition.side
            ---@param text string
            ---@param displayTime number
            ---@param clearview boolean|nil
            function trigger.action.outTextForCoalition(coalition, text, displayTime, clearview) end

            ---Displays the passed string of text for the specified time to all players belonging to the specified country. Boolean clearview defines whether or not to use the old message display format. The old message display overwrites existing messages and is good for displaying anything that must be updated at a high rate like lap times.
            ---https://wiki.hoggitworld.com/view/DCS_func_outTextForCountry
            ---@param country country.id
            ---@param text string
            ---@param displayTime number
            ---@param clearview boolean|nil
            function trigger.action.outTextForCountry(country, text, displayTime, clearview) end

            ---Displays the passed string of text for the specified time to all players in the specified group. The group is defined by its groupId. Boolean clearview defines whether or not to use the old message display format. The old message display overwrites existing messages and is good for displaying anything that must be updated at a high rate like lap times.
            ---https://wiki.hoggitworld.com/view/DCS_func_outTextForGroup
            ---@param groupId number
            ---@param text string
            ---@param displayTime number
            ---@param clearview boolean|nil
            function trigger.action.outTextForGroup(groupId, text, displayTime, clearview) end

            ---Displays the passed string of text for the specified time to all players in the specified unit. The unit is defined by its unitId. Boolean clearview defines whether or not to use the old message display format. The old message display overwrites existing messages and is good for displaying anything that must be updated at a high rate like lap times.
            ---https://wiki.hoggitworld.com/view/DCS_func_outTextForUnit
            ---@param unitId number
            ---@param text string
            ---@param displayTime number
            ---@param clearview boolean|nil
            function trigger.action.outTextForUnit(unitId, text, displayTime, clearview) end

            ---Pushes the task of the specified index to the front of the tasking queue.
            ---https://wiki.hoggitworld.com/view/DCS_func_pushAITask
            ---@param taskIndex number
            ---@param Group Group
            function trigger.action.pushAITask(Group, taskIndex) end

            ---Creates a shape defined by the 4 points on the F10 map.
            ---https://wiki.hoggitworld.com/view/DCS_func_quadToAll Coalition Ids to be used.
            ---@param coalition coalition.side|-1
            ---@param id number
            ---@param point1 vec3
            ---@param point2 vec3
            ---@param point3 vec3
            ---@param point4 vec3
            ---@param color table
            ---@param fillColor table
            ---@param lineType number
            ---@param readOnly boolean|nil
            ---@param message string|nil
            function trigger.action.quadToAll(coalition, id, point1, point2, point3, point4, color, fillColor, lineType,
                                              readOnly, message)
            end

            ---Transmits an audio file to be broadcast over a specific frequency eneminating from the specified point.
            ---Modulation Values:
            ---https://wiki.hoggitworld.com/view/DCS_func_radioTransmission
            ---@param filename string
            ---@param point vec3
            ---@param modulation radio.modulation
            ---@param loop boolean
            ---@param frequency number
            ---@param power number
            ---@param name string|nil
            function trigger.action.radioTransmission(filename, point, modulation, loop, frequency, power, name) end

            ---Creates a rectangle on the map from the startpoint in one corner to the endPoint in the opposite corner. Coalition Ids to be used.
            ---https://wiki.hoggitworld.com/view/DCS_func_rectToAll
            ---@param coalition coalition.side|-1
            ---@param id number
            ---@param startPoint vec3
            ---@param EndPoint vec3
            ---@param color table
            ---@param fillColor table
            ---@param lineType number
            ---@param readOnly boolean|nil
            ---@param message string|nil
            function trigger.action.rectToAll(coalition, id, startPoint, EndPoint, color, fillColor, lineType, readOnly,
                                              message)
            end

            ---Removes a mark panel from the f10 map
            ---https://wiki.hoggitworld.com/view/DCS_func_removeMark
            ---@param id number
            function trigger.action.removeMark(id) end

            ---Removes the command that matches the specified name input variable from the "F10 Other" radio menu.
            ---https://wiki.hoggitworld.com/view/DCS_func_removeOtherCommand
            ---@param name string
            function trigger.action.removeOtherCommand(name) end

            ---Removes the command that matches the specified name input variable from the "F10 Other" radio menu if the command was added for coalition.
            ---https://wiki.hoggitworld.com/view/DCS_func_removeOtherCommandForCoalition
            ---@param coalitionId coalition.side
            ---@param name string
            function trigger.action.removeOtherCommandForCoalition(coalitionId, name) end

            ---Removes the command that matches the specified name input variable from the "F10 Other" radio menu if the command exists for the specified group.
            ---https://wiki.hoggitworld.com/view/DCS_func_removeOtherCommandForGroup
            ---@param groupId number
            ---@param name string
            function trigger.action.removeOtherCommandForGroup(groupId, name) end

            ---Sets the task of the specified index to be the one and only active task.
            ---https://wiki.hoggitworld.com/view/DCS_func_setAITask
            ---@param taskIndex number
            ---@param Group Group
            function trigger.action.setAITask(Group, taskIndex) end

            ---Turns the specified groups AI off. Calls the Group.getController(setOnOff(false)) function. Only works with ground and ship groups.
            ---https://wiki.hoggitworld.com/view/DCS_func_setGroupAIOff
            ---@param Group Group
            function trigger.action.setGroupAIOff(Group) end

            ---Turns the specified groups AI on. Calls the Group.getController(setOnOff(true)) function. Only works with ground and ship groups.
            ---https://wiki.hoggitworld.com/view/DCS_func_setGroupAIOn
            ---@param Group Group
            function trigger.action.setGroupAIOn(Group) end

            ---Updates the color of the specified mark to be the new value. Color format is {r, g, b, alpha} with values ranging from 0 to 1.
            ---https://wiki.hoggitworld.com/view/DCS_func_setMarkupColor
            ---@param id number
            ---@param color table
            function trigger.action.setMarkupColor(id, color) end

            ---Updates the colorfill of the specified mark to be the new value. Color format is {r, g, b, alpha} with values ranging from 0 to 1.
            ---https://wiki.hoggitworld.com/view/DCS_func_setMarkupColorFill
            ---@param id number
            ---@param colorFill table
            function trigger.action.setMarkupColorFill(id, colorFill) end

            ---Updates the font size of the specified mark to be the new value. If the id of the passed mark does not have text then nothing will happen.
            ---https://wiki.hoggitworld.com/view/DCS_func_setMarkupFontSize
            ---@param id number
            ---@param fontSize number
            function trigger.action.setMarkupFontSize(id, fontSize) end

            ---Updates the position of a mark that was defined at the last point given to create it. Can be used to "move" an existing mark from one place to the next without deleting it and creating a new one.
            ---https://wiki.hoggitworld.com/view/DCS_func_setMarkupPositionEnd
            ---@param id number
            ---@param vec3 vec3
            function trigger.action.setMarkupPositionEnd(id, vec3) end

            ---Updates the position of a mark that was defined at the first point given to create it. Can be used to "move" an existing mark from one place to the next without deleting it and creating a new one.
            ---https://wiki.hoggitworld.com/view/DCS_func_setMarkupPositionStart
            ---@param id number
            ---@param vec3 vec3
            function trigger.action.setMarkupPositionStart(id, vec3) end

            ---Updates the radius of the specified mark to be the new value. If the id of the passed mark is not a circle then nothing will happen.
            ---https://wiki.hoggitworld.com/view/DCS_func_setMarkupRadius
            ---@param id number
            ---@param radius number
            function trigger.action.setMarkupRadius(id, radius) end

            ---Updates the text value of the passed mark to the passed text value. If the id of the passed mark does not have any text then nothing will happen.
            ---https://wiki.hoggitworld.com/view/DCS_func_setMarkupText
            ---@param id number
            ---@param text string
            function trigger.action.setMarkupText(id, text) end

            ---Updates the type line of the specified mark to be the new value.
            ---https://wiki.hoggitworld.com/view/DCS_func_setMarkupTypeLine
            ---@param id number
            ---@param TypeLine number
            function trigger.action.setMarkupTypeLine(id, TypeLine) end

            ---Sets the internal cargo for the specified unit at the specified mass. Overrides any previously set value. Can be used in conjunction with troop transport to simulate cargo being added to the aircraft. Can be used on any unit object, however it only will impact airplanes and helicopters. Mass is defined in kilograms.
            ---https://wiki.hoggitworld.com/view/DCS_func_setUnitInternalCargo
            ---@param unitName string
            ---@param mass number
            function trigger.action.setUnitInternalCargo(unitName, mass) end

            ---Sets a user flag to the specified value.
            ---https://wiki.hoggitworld.com/view/DCS_func_setUserFlag
            ---@param flagNumFlagName string
            ---@param userFlagValue boolean|number
            function trigger.action.setUserFlag(flagNumFlagName, userFlagValue) end

            ---Creates a signal flare at the given point in the specified color. The flare will be launched in the direction of the azimuth variable.
            ---https://wiki.hoggitworld.com/view/DCS_func_signalFlare
            ---@param vec3 vec3
            ---@param flareColor trigger.flareColor
            ---@param azimuth number
            function trigger.action.signalFlare(vec3, flareColor, azimuth) end

            ---Creates colored smoke marker at a given point. Smoke uses trigger.smokeColor enum
            ---https://wiki.hoggitworld.com/view/DCS_func_smoke
            ---@param vec3 vec3
            ---@param smokeColor trigger.smokeColor
            function trigger.action.smoke(vec3, smokeColor) end

            ---Stops a radio transmission of the passed name. Transmission must be named in the trigger.action.radioTransmission it was sent from.
            ---https://wiki.hoggitworld.com/view/DCS_func_stopRadioTransmission
            ---@param name string
            function trigger.action.stopRadioTransmission(name) end

            ---Creates a text imposed on the map at a given point. Text scales with the map. Coalition Ids to be used.
            ---https://wiki.hoggitworld.com/view/DCS_func_textToAll
            ---@param coalition coalition.side|-1
            ---@param id number
            ---@param point vec3
            ---@param color table
            ---@param fillColor table
            ---@param fontSize number
            ---@param readOnly boolean
            ---@param text string
            function trigger.action.textToAll(coalition, id, point, color, fillColor, fontSize, readOnly, text) end
        end

        --misc
        do
            --No Docu
            ---comment
            ---@param trgdata table
            ---@return table<"func", string>
            function trigger.misc.addTrigger(trgdata) end

            --No Docu
            ---comment
            ---@param zonedata table
            ---@return Trig_zone_data
            function trigger.misc.addZone(zonedata) end

            ---Returns the value of a user flag.
            ---https://wiki.hoggitworld.com/view/DCS_func_getUserFlag
            ---@return number
            ---@param flagNumFlagName string
            function trigger.misc.getUserFlag(flagNumFlagName) end

            ---Returns a trigger zone table of a given name
            ---https://wiki.hoggitworld.com/view/DCS_func_getZone
            ---@return TriggerZone class
            ---@param zoneName string
            function trigger.misc.getZone(zoneName) end
        end
    end
end
