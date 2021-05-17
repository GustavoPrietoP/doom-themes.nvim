lua << EOF
package.loaded['nord'] = nil
package.loaded['nord.util'] = nil
package.loaded['nord.colors'] = nil
package.loaded['nord.theme'] = nil
package.loaded['nord.functions'] = nil

require('doom-nord').set()
EOF
