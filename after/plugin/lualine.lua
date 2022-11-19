local lualine = require("lualine")

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local diff = {
  "diff",
  symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width,
}

local filetype = {
  "filetype",
  icons_enabled = true,
}

local branch = {
  "branch",
  icons_enabled = true,
  icon = "",
}

local progress = function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  local line_ratio = math.ceil(current_line * 100 / total_lines)
  return line_ratio.."%%"
end

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
local spacing = {
  function()
    return "%="
  end,
}

local lsp_info = {
  function()
    local msg = "none"
    local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = " LSP:",
}

lualine.setup {
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { branch, diff },
    lualine_c = { "filename", spacing, lsp_info },
    lualine_x = { filetype },
    lualine_y = { "location" },
    lualine_z = { progress },
  },
}
