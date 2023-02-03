fx_version "cerulean"
game "gta5"

ui_page "build/index.html"

files {
    "build/**.*",
}

client_scripts {
    "@utility_lib/client/native.lua",
    "config.lua",
    "client/*.lua",
}

server_scripts {
    "server.lua",
    "dumb-checker.lua"
}

escrow_ignore {
    "config.lua",
    "dumb-checker.lua"
}
lua54 "yes"
dependency '/assetpacks'

-- Cleaned and bypassed by flux#3487