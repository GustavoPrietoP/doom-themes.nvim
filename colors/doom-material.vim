lua << EOF
package.loaded['doom-material'] = nil
package.loaded['doom-material.util'] = nil
package.loaded['doom-material.colors'] = nil
package.loaded['doom-material.theme'] = nil
package.loaded['doom-material.functions'] = nil

require('doom-material').set()
EOF
