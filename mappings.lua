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
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>a"] = { name = "Harpoon" },
    ["<leader>al"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
      desc = "Harpoon Quick Menu",
    },
    ["<leader>aa"] = {
      function() require("harpoon.mark").add_file() end,
      desc = "Add file mark",
    },
    ["<leader>a1"] = {
      function() require("harpoon.ui").nav_file(1) end,
      desc = "Go to file 1",
    },
    ["<leader>a2"] = {
      function() require("harpoon.ui").nav_file(2) end,
      desc = "Go to file 2",
    },
    ["<leader>a3"] = {
      function() require("harpoon.ui").nav_file(3) end,
      desc = "Go to file 3",
    },
    ["<leader>a4"] = {
      function() require("harpoon.ui").nav_file(4) end,
      desc = "Go to file 4",
    },
    ["<leader>a5"] = {
      function() require("harpoon.ui").nav_file(5) end,
      desc = "Go to file 5",
    },
    -- Buffer Nav
    ["<Tab>"] = {
      "<cmd> bnext<cr>",
      desc = "Next buffer",
    },
    ["<S-Tab>"] = {
      "<cmd> bprev<cr>",
      desc = "Prev Buffer",
    },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
