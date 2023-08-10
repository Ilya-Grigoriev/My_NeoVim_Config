require('dashboard_setup/setup_components/_shortcut')
require('dashboard_setup/setup_components/_colors')

function get_doom_setup()
    local config = {
        set_colors_dashboard(),

        header = get_header_by_theme_name('doom'),

        center = get_doom_shortcut(),

        footer = { 'by Ilya Grigoryev' }
    }

    local setup = {
        theme = 'doom',
        config = config
    }
    return setup
end
