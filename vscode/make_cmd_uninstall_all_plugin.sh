#!/bin/sh
code --list-extensions | xargs -L 1 echo code --uninstall-extension > uninstall-all-extensions.sh
