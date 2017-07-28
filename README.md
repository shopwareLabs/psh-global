# Global PSH runner

This is a global [PSH](https://github.com/shopwareLabs/psh) runner, not a global install of PSH. The script will search for an instance of the psh.phar file in the current directory and it's parents. The first found file will be used. This way we just rely on the next version to include the autocompletion dump, but from that point on you can decide which version to include in your project and when to upgrade.

So now you can call PSH from anywhere inside your project with `psh <command>`.

In addition to the features of your PSH version, you will get autocompletion with Version X.

## Install

The install will be streamlined by the install.sh script. Just run it and the autocompletion files will be added to bash or zsh and the binary will be copied into `/usr/local/bin` as `psh`.