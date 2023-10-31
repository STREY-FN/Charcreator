fx_version('cerulean')
game('gta5')
lua54('yes')

shared_script({'shared/config.lua'})

client_scripts({
    'shared/function.lua',
    
    'RageUI/RMenu.lua',
    'RageUI/menu/RageUI.lua',
    'RageUI/menu/Menu.lua',
    'RageUI/menu/MenuController.lua',
    'RageUI/components/*.lua',
    'RageUI/menu/elements/*.lua',
    'RageUI/menu/items/*.lua',
    'RageUI/menu/panels/*.lua',
    'RageUI/menu/windows/*.lua',

    'client/cl_charcreator.lua',
    'client/cl_skinchanger.lua',
})

server_scripts({
    '@oxmysql/lib/MySQL.lua', -- mysql-async

    'server/sv_charcreator.lua',
    'server/sv_skinchanger.lua',
})