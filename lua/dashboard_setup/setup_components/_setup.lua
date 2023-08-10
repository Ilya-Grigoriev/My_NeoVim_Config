require('dashboard_setup/setups/_doom_setup')
require('dashboard_setup/setups/_hyper_setup')

function get_setup_by_theme_name(theme_name)
    if theme_name == 'hyper' then
        return get_hyper_setup()
    elseif theme_name == 'doom' then
        return get_doom_setup()
    else
        error('Theme name is not found')
    end
end
