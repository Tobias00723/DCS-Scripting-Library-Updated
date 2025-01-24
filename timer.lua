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

    end

    ---The timer singleton has two important uses. 1. Return the mission time. 2. To schedule functions.
    ---https://wiki.hoggitworld.com/view/DCS_singleton_timer
    ---@class timer
    timer = {}

    --Functions
    do
        ---Returns the mission time in seconds. It is relative compared to the mission start time. The default mission start time in the mission editor is Day 1: 12:00:00. In seconds this value is: 43200
        ---https://wiki.hoggitworld.com/view/DCS_func_getAbsTime
        ---@return any time
        function timer.getAbsTime() end

        --No Docu
        ---Seems to always returns false
        ---@return boolean
        function timer.getPause() end

        ---Returns the model time in seconds to 3 decimal places. This counts time once the simulator loads. So if a mission is paused, the time this function returns still moves forward.
        ---https://wiki.hoggitworld.com/view/DCS_func_getTime
        ---@return any time
        function timer.getTime() end

        ---Returns the mission start time in seconds. Can be used with timer.getAbsTime() to see how much time has passed in the mission.
        ---https://wiki.hoggitworld.com/view/DCS_func_getTime0
        ---@return any time
        function timer.getTime0() end

        ---Removes a scheduled function as defined by the functionId from executing. Essentially will "destroy" the function.
        ---https://wiki.hoggitworld.com/view/DCS_func_removeFunction
        ---@return function
        ---@param functionId number
        function timer.removeFunction(functionId) end

        ---Schedules a function to run at a time in the future. This is a very powerful function. The function that is called is expected to return nil or a number which will indicate the next time the function will be rescheduled. Use the second argument in that function to retrieve the current time and add the desired amount of delay (expressed in seconds).
        ---https://wiki.hoggitworld.com/view/DCS_func_scheduleFunction
        ---@return any functionId
        ---@param functionToCall function
        ---@param anyFunctionArguement any functionArgs
        ---@param modelTime any time
        function timer.scheduleFunction(functionToCall, anyFunctionArguement, modelTime) end

        ---Re-Schedules an already scheduled function to run at a different time in the future.
        ---https://wiki.hoggitworld.com/view/DCS_func_setFunctionTime
        ---@return function
        ---@param functionId number
        ---@param modelTime any time
        function timer.setFunctionTime(functionId, modelTime) end
    end
end
