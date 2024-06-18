fx_version 'cerulean'
game 'gta5'

lua54 'yes'

shared_scripts {
    'config.lua',
    "@ox_lib/init.lua",
    '@es_extended/imports.lua',
    'locales/*.lua',
}

client_scripts {
    'client.lua',
    'menu.lua'
}

server_scripts {
    'server.lua',
}