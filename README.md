# Todomon.nvim

Todomon.nvim is a lightweight Neovim plugin written in Lua, designed to manage to-do list items within your Neovim editor. With simple keystrokes, you can toggle to-do states and manage your tasks directly from the comfort of your Neovim environment.

## Features

- **Toggle To-Do**: Convert any line into a to-do item or toggle its completion state using a keyboard shortcut.
- **Keyboard Shortcut**: Use `Ctrl+Space` to quickly toggle to-dos.

## Installation

You can install todomon.nvim using your preferred package manager.

For [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'your_username/todomon.nvim'
```
For packer.nvim:

```lua
use {'your_username/todomon.nvim'}
```

## Usage

To toggle a to-do state, place the cursor on the line you want to modify and press Ctrl+Space. This will either:

Add [] to the beginning of the line, before any list marker such as -, *, etc., if it's not already a to-do item.
Change [] to [x] to mark the to-do as completed, or back to [] if it's already completed.
Configuration
The plugin works out of the box with the default key mapping. If you wish to use a different key mapping, you can map your preferred key to the toggle_todo function in your Neovim configuration:

``` lua
vim.api.nvim_set_keymap('n', '<YourKey>', '<cmd>lua toggle_todo()<CR>', { noremap = true, silent = true })
```

## Contributing
Contributions are welcome! Feel free to fork the repository and submit pull requests.

## License
This project is open-sourced under the MIT license.
