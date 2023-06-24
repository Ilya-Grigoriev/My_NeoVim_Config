local function TrimSlashes()
    vim.cmd([[
       keeppatterns %s/\s\+$//e
    ]])
end

vim.api.nvim_create_user_command("TrimSlashes", TrimSlashes, {})

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.cmd([[
       keeppatterns %s/\s\+$//e
    ]])
    end,
})
