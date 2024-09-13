return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  -- lazy = true,
  cmd = "Telescope",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    defaults = {
      prompt_prefix = "   ",
      selection_caret = " ",
      entry_prefix = " ",
      sorting_strategy = "ascending",
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
        },
        width = 0.87,
        height = 0.80,
      },
    },
    extensions_list = { "themes", "terms" },
    extensions = {},
    pickers = {
      cache_picker = {
        num_pickers = 3,
        limit_pickers = 50,
        ignore_empty_prompt = true,
      },
      -- live_grep = {
      --   vimgrep_arguments = function()
      --     table.insert(require("telescope.config").values.vimgrep_arguments, "--fixed-strings")
      --   end,
      -- },
    },
  },
  config = function(_, opts)
    local telescope = require "telescope"
    telescope.setup(opts)

    -- load extensions
    for _, ext in ipairs(opts.extensions_list) do
      telescope.load_extension(ext)
    end
  end,
}
