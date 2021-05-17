
"                            M O O N L I G H T
"      _..._         _..._         _..._         _..._         _..._
"    .:::::::.     .::::. `.     .::::  `.     .::'   `.     .'     `.
"   :::::::::::   :::::::.  :   ::::::    :   :::       :   :         :
"   :::::::::::   ::::::::  :   ::::::    :   :::       :   :         :
"   `:::::::::'   `::::::' .'   `:::::   .'   `::.     .'   `.       .'
"     `':::''       `'::'-'       `'::.-'       `':..-'       `-...-'
"
" Colorscheme name:    moonlight.nvim
" Description:         Port of VSCode's Moonlight colorscheme for NeoVim
" Author:              https://github.com/shaunsingh

lua << EOF
package.loaded['doom-moonlight'] = nil
package.loaded['doom-moonlight.util'] = nil
package.loaded['doom-moonlight.colors'] = nil
package.loaded['doom-moonlight.theme'] = nil
package.loaded['doom-moonlight.functions'] = nil

require('doom-moonlight').set()
EOF
