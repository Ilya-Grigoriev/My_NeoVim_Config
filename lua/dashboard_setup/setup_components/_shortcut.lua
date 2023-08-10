require('dashboard_setup/setup_components/_format')

function get_hyper_shortcut()
    local shortcut = {
        {
            desc = '󰊳 Update',
            group = '@property',
            action = 'PackerSync',
            key = 'u'
        },
        {
            icon = ' ',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
        },
        {
            icon = '🔍 ',
            desc = 'Word',
            group = 'number',
            action = 'Telescope live_grep',
            key = 'w',
        },
        {
            icon = '⛭ ',
            desc = 'Config',
            group = 'Title',
            action = get_command_for_edit_config(),
            key = 'c',
        },
    }
    return shortcut
end

function get_doom_shortcut()
    local shortcut = {
        {
            icon = '  ',
            icon_hl = 'Title',

            desc = get_align_text('Find files'),
            desc_hl = 'Title',

            key = 'f',
            keymap = 'f f',
            key_hl = 'number',

            action = 'Telescope find_files',
        },
        {
            icon = '🔍 ',
            icon_hl = 'Title',

            desc = get_align_text('Find word'),
            desc_hl = 'Title',

            key = 'g',
            keymap = 'f g',
            key_hl = 'number',

            action = 'Telescope live_grep',
        },
        {
            icon = '󰈢  ',
            icon_hl = 'Title',

            desc = get_align_text('Recent files'),
            desc_hl = 'Title',

            key = 'r',
            keymap = 'f r',
            key_hl = 'number',

            action = 'Telescope recent_files pick',
        },
        {
            icon = '🎨 ',
            icon_hl = 'Title',

            desc = get_align_text('Colorscheme'),
            desc_hl = 'Title',

            key = 's',
            key_hl = 'number',

            action = 'Telescope colorscheme',
        },
        {
            icon = '⛭  ',
            icon_hl = 'Title',

            desc = get_align_text('Open config'),
            desc_hl = 'Title',

            key = 'c',
            key_hl = 'number',

            action = get_command_for_edit_config(),
        },
    }

    return shortcut
end
