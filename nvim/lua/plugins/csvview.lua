return {
  "hat0uma/csvview.nvim",
  -- Загружаем плагин при открытии файлов с этими расширениями
  event = { "BufReadPre *.csv", "BufNewFile *.csv" },
  opts = {
    view = {
      display_mode = "border",
    },
    keymaps = {
      -- Удобная навигация как в Excel
      jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
      jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
      jump_next_row = { "<Enter>", mode = { "n", "v" } },
      jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },
    },
  },
  config = function(_, opts)
    require("csvview").setup(opts)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "csv",
      callback = function()
        require("csvview").enable()
      end,
      desc = "Автоматически включить csvview для CSV-файлов",
    })
  end,
}
