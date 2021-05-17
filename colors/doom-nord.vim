lua << EOF
package.loaded['doom-nord'] = nil
package.loaded['doom-nord.util'] = nil
package.loaded['doom-nord.colors'] = nil
package.loaded['doom-nord.theme'] = nil
package.loaded['doom-nord.functions'] = nil

require('doom-nord').set()
EOF
