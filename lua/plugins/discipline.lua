local M = {}

function M.cowboy()
  --- @type table?
  local id
  local ok = true

  for _, key in ipairs({ "h", "j", "k", "l", "+", "-" }) do
    local count = 0
    local timer = vim.loop.new_timer()

    vim.keymap.set("n", key, function()
      if vim.v.count > 0 then
        count = 0
      end

      if count >= 10 then
        ok, id = pcall(vim.notify, "Hold it cowboy!", vim.log.levels.WARN, {
          icon = "🤠",
          replace = id,
          keep = function()
            return count >= 10
          end,
        })
        if not ok then
          id = nil
          return key -- Return the mapped key
        end
      else
        count = count + 1
        timer:start(2000, 0, function()
          count = 0
        end)
      end

      return key -- Return the mapped key
    end, { expr = true, silent = true })

    -- Stop the timer when changing modes
    vim.api.nvim_create_autocmd("ModeChanged", {
      pattern = "*",
      callback = function()
        count = 0
        timer:stop()
      end,
    })
  end

  return M
end

return M
