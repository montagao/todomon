-- todomon.nvim/lua/init.lua
local M = {}

-- Define the Lua function to toggle a to-do list item
function M.toggle_todo()
    local line = vim.api.nvim_get_current_line()
    -- Check if the line has an incomplete to-do list marker
    if line:match("^%s*[%*%-]+%s*%[%s?%]") then
        -- Toggle to completed, ensuring exactly one space inside the brackets
        line = line:gsub("(%[)%s?(%])", "%1x%2")
    -- Check if the line has a complete to-do list marker
    elseif line:match("^%s*[%*%-]+%s*%[x%s?%]") then
        -- Toggle to incomplete, ensuring exactly one space inside the brackets
        line = line:gsub("(%[)x%s?(%])", "%1 %2")
    else
        -- It's not a to-do, make it one, with one space inside the brackets
        line = line:gsub("^([%s%*%-]+)", "%1[ ]")
    end
    vim.api.nvim_set_current_line(line)
end




return M

