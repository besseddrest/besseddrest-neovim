return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require "harpoon"
    local kmset = vim.keymap.set

    -- REQUIRED
    harpoon:setup {}
    -- REQUIRED

    kmset("n", "<leader>hh", function()
      harpoon:list():add()
    end)
    kmset("n", "<leader>h", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    kmset("n", "<leader>ha", function()
      harpoon:list():select(1)
    end)
    kmset("n", "<leader>hs", function()
      harpoon:list():select(2)
    end)
    kmset("n", "<leader>hd", function()
      harpoon:list():select(3)
    end)
    kmset("n", "<leader>hf", function()
      harpoon:list():select(4)
    end)

    --     kmset("n", "<leader>hc", function()
    --   harpoon:list():clear_all()
    -- end)

    -- Toggle previous & next buffers stored within Harpoon list
    kmset("n", "<C-S-P>", function()
      harpoon:list():prev()
    end)
    kmset("n", "<C-S-N>", function()
      harpoon:list():next()
    end)

    -- basic telescope configuration
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    kmset("n", "<leader>ht", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Open harpoon window" })
  end,
}
