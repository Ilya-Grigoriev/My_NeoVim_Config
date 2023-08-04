local config = {
    cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xmx1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

        '-jar',
        '/home/ilya/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.6.500.v20230717-2134.jar',
        '-configuration', '/home/ilya/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux',
        '-data', '/home/ilya/eclipse.jdt.ls'
    },

    root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew' }),

    settings = {
        java = {
            configuration = {
                runtimes = {
                    {
                        name = "JavaSE-17",
                        path = "/usr/lib/jvm/java-17-openjdk-amd64"
                    }
                }
            }
        }
    },
}

require('jdtls').start_or_attach(config)
