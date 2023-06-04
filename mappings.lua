-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
-- local utils = require "astronvim.utils"
-- local is_available = utils.is_available
-- local map = { n = {} } -- define map.n table here
--
-- -- Smart Splits
-- if is_available("smart-splits.nvim") then
--     map.n["<D-h>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" }
--     map.n["<D-j>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" }
--     map.n["<D-k>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" }
--     map.n["<D-l>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" }
--     map.n["<D-Up>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" }
--     map.n["<D-Down>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" }
--     map.n["<D-Left>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" }
--     map.n["<D-Right>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" }
-- else
--     map.n["<D-h>"] = { "<C-w>h", desc = "Move to left split" }
--     map.n["<D-j>"] = { "<C-w>j", desc = "Move to below split" }
--     map.n["<D-k>"] = { "<C-w>k", desc = "Move to above split" }
--     map.n["<D-l>"] = { "<C-w>l", desc = "Move to right split" }
--     map.n["<D-Up>"] = { "<cmd>resize -2<CR>", desc = "Resize split up" }
--     map.n["<D-Down>"] = { "<cmd>resize +2<CR>", desc = "Resize split down" }
--     map.n["<D-Left>"] = { "<cmd>vertical resize -2<CR>", desc = "Resize split left" }
--     map.n["<D-Right>"] = { "<cmd>vertical resize +2<CR>", desc = "Resize split right" }
-- end
--
-- -- Add additional key mappings
-- map.n["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" }
-- map.n["<leader>bD"] = {
--     function()
--         require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
--     end,
--     desc = "Pick to close",
-- }
-- map.n["<leader>b"] = { name = "Buffers" }
--
-- return map

