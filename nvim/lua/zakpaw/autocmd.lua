function SetCwdToTmuxAttach()
    local handle = io.popen("tmux display-message -p -F '#{pane_current_path}'")
    if handle then
        local tmux_cwd = handle:read("*a")
        handle:close()
        tmux_cwd = tmux_cwd:gsub("\n", "")
        if tmux_cwd ~= "" and vim.fn.isdirectory(tmux_cwd) == 1 then
            if vim.g.tmux_attached_directory == nil then
                vim.g.tmux_attached_directory = tmux_cwd
            end
            vim.cmd("cd " .. vim.fn.fnameescape(vim.g.tmux_attached_directory))
        end
    end
end

vim.cmd [[
    autocmd BufRead * lua SetCwdToTmuxAttach()
    autocmd FileType netrw lua SetCwdToTmuxAttach()
]]

-- show diagnostics when cursor on line
vim.cmd([[
    set signcolumn=yes
    autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
