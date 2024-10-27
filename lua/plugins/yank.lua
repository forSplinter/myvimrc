return {
  "gbprod/yanky.nvim",
  opts = {
    ring = {
      history_length = 100, -- Example configuration
      storage = "none",
    },
  },
  config = function()
    local keymap = vim.keymap.set

    -- Basic Yanky key mappings
    keymap({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
    keymap({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
    keymap({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
    keymap({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

    keymap("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
    keymap("n", "<c-n>", "<Plug>(YankyNextEntry)")

    keymap("n", "]p", "<Plug>(YankyPutIndentAfterLinewise)")
    keymap("n", "[p", "<Plug>(YankyPutIndentBeforeLinewise)")
    keymap("n", "]P", "<Plug>(YankyPutIndentAfterLinewise)")
    keymap("n", "[P", "<Plug>(YankyPutIndentBeforeLinewise)")

    keymap("n", ">p", "<Plug>(YankyPutIndentAfterShiftRight)")
    keymap("n", "<p", "<Plug>(YankyPutIndentAfterShiftLeft)")
    keymap("n", ">P", "<Plug>(YankyPutIndentBeforeShiftRight)")
    keymap("n", "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)")

    -- Commenting out filtering mappings for troubleshooting
    -- keymap("n", "=p", "<Plug>(YankyPutAfterFilter)")
    -- keymap("n", "=P", "<Plug>(YankyPutBeforeFilter)")
  end,
}
