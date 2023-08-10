require('dashboard_setup/setup_components/_setup')

require('dashboard').setup(
    get_setup_by_theme_name('hyper')
)

vim.api.nvim_create_autocmd("FileType", {
    pattern = "dashboard",
    group = vim.api.nvim_create_augroup("dashboard_enter", { clear = true }),
    callback = function()
        vim.keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
        vim.keymap.set("n", "e", ":enew<CR>", { buffer = true, silent = true })
    end
})
