

fx_version 'cerulean'
games { 'gta5' }


shared_scripts {
  "cfg/cfg_delgun.lua",
}

client_scripts {
    "client/cl_delgun.lua",
}

server_scripts {
    "@vrp/lib/utils.lua",
    "modules/sv_delgun.lua"
}


