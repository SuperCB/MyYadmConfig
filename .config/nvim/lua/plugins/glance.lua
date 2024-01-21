return {
  {
    "dnlhc/glance.nvim",
    config = function()
      local glance = require("glance")
      local actions = glance.actions
      require("glance").setup({
        border = {
          enable = true,
          top_char = "―",
          bottom_char = "―",
        }, -- your configuration
        mappings = {
          list = {
            ["j"] = actions.next, -- Bring the cursor to the next item in the list
            ["k"] = actions.previous, -- Bring the cursor to the previous item in the list
            ["<Down>"] = actions.next,
            ["<Up>"] = actions.previous,
            ["<Tab>"] = actions.next_location, -- Bring the cursor to the next location skipping groups in the list
            ["<S-Tab>"] = actions.previous_location, -- Bring the cursor to the previous location skipping groups in the list
            ["<C-u>"] = actions.preview_scroll_win(10),
            ["<C-d>"] = actions.preview_scroll_win(-10),
            ["v"] = actions.jump_vsplit,
            ["x"] = actions.jump_split,
            ["t"] = actions.jump_tab,
            ["<CR>"] = actions.jump,
            ["o"] = actions.jump,
            ["l"] = actions.open_fold,
            ["h"] = actions.close_fold,
            ["<leader>l"] = actions.enter_win("preview"), -- Focus preview window
            ["q"] = actions.close,
            ["Q"] = actions.close,
            ["<Esc>"] = actions.close,
            ["<C-q>"] = actions.quickfix,
          },
        },
      })
    end,
  },
}
