local M = {}

local function speak_name()
    return 'Mayukh'
end

function M.say_hello()
    print('Hello' .. speak_name())
end

return M


-- Run it form mainModel.lua