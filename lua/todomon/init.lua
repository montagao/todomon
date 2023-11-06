-- todomon.nvim/lua/init.lua
local M = {}

-- Define the Lua function to toggle a to-do list item
function M.toggle_todo()
    local line = vim.api.nvim_get_current_line()
    if line:match("^%s*[%*%-]+%s*%[%s%]") then
        line = line:gsub("%[%s%]", "[x]")
    elseif line:match("^%s*[%*%-]+%s*%[x%]") then
        line = line:gsub("%[x%]", "[] ")
    else
        line = line:gsub("^([%s%*%-]+)", "%1[] ")
    end
    vim.api.nvim_set_current_line(line)
end

-- Make the toggle_todo function globally accessible
_G.toggle_todo = M.toggle_todo

-- Map Ctrl+Space to the Lua function
vim.api.nvim_set_keymap('n', '<C-Space>', '<cmd>lua toggle_todo()<CR>', { noremap = true, silent = true })

return M

