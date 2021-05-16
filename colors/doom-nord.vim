lua << EOF
package.loaded['lua.nord'] = nil
package.loaded['lua.nord.util'] = nil
package.loaded['lua.nord.colors'] = nil
package.loaded['lua.nord.theme'] = nil
package.loaded['lua.nord.functions'] = nil

require('nord').set()
EOF
