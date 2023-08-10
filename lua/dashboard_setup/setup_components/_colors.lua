colors = {
    header = "#ffcd94",
    center = "#51afef",
    shortcut = "#73B2E3",
    footer = "#9AA0A4",
}

function set_colors_dashboard()
    vim.api.nvim_set_hl(0, "DashboardShortCut", { fg = colors.shortcut })
    vim.api.nvim_set_hl(0, "DashboardHeader", { fg = colors.header })
    vim.api.nvim_set_hl(0, "DashboardFooter", { fg = colors.footer })
end
