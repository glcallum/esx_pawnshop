resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX pawnshop'

version '0.0.1'

server_scripts {
  '@es_extended/locale.lua',
  '@mysql-async/lib/MySQL.lua',
  'server.lua'
}

client_scripts {
  '@es_extended/locale.lua',
  'client.lua'
}