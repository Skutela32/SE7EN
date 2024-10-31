fx_version 'adamant'
game 'gta5'
lua54 'yes'

description 'DonSamuele Casino System'

ui_page 'html/index.html'

files {
    'html/*.*',
    'html/assets/*.*'
}

shared_scripts {
    '@ox_lib/init.lua', --UNCOMMENT ONLY IF MenuType = 'OX' OR YOUR FRAMEWORK IS ND_CORE
    'config/*.lua',
    'shared/shared.lua',
    'default_maps.lua'
}

client_scripts {
    'client/needed.lua',
    'bridge/client/*.lua',
    'client/utils.lua',
    'client/main.lua',
    'client/vip.lua',
    'client/bartender.lua',
    'client/blackjack.lua',
    'client/slots.lua',
    'client/poker.lua',
    'client/luckwheel.lua',
    'client/roulette.lua',
    'client/insidetrack.lua',
    'client/cameras.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/needed.lua',
    'bridge/server/*.lua',
    'server/utils.lua',
    'webhooks.lua',
    'server/debug.lua',
    'server/main.lua',
    'server/vip.lua',
    'server/bartender.lua',
    'server/blackjack.lua',
    'server/slots.lua',
    'server/poker.lua',
    'server/luckwheel.lua',
    'server/roulette.lua',
    'server/insidetrack.lua'
}

escrow_ignore {
    'bridge/client/*.lua',
    'bridge/server/*.lua',
    'config/*.lua',
    'webhooks.lua',
    'default_maps.lua'
}

dependencies {
    '/server:4752',
    '/onesync',
    '/gameBuild:2060'
}
dependency '/assetpacks'