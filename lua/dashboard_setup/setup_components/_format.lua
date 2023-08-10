require('dashboard_setup.setup_components._path')

function get_command_for_edit_config()
    local command = string.format('edit %s', get_config_path())
    return command
end

function get_align_text(text)
    local aligned_text = string.format('%-20s', text)
    return aligned_text
end
