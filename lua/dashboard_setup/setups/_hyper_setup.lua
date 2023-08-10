require('dashboard_setup/setup_components/_shortcut')
require('dashboard_setup/setup_components/_header')
require('dashboard_setup/setup_components/_colors')

function get_hyper_setup()
    local config = {
        packages = {
            enable = false,
        },

        disable_move = true,

        set_colors_dashboard(),

        header   = get_header_by_theme_name('hyper'),

        shortcut = get_hyper_shortcut(),

        footer   = {
            'by Ilya Grigoryev',
        }
    }

    local setup = {
        theme = 'hyper',
        shortcut_type = 'number',
        config = config
    }
    return setup
end
