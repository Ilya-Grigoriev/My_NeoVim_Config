function get_config_path()
    local config_path = vim.api.nvim_command_output('echo stdpath("config")')
    return config_path
end
