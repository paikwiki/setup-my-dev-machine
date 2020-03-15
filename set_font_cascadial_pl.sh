#!/bin/sh

. ./userconfig.sh

wget https://github.com/microsoft/cascadia-code/releases/latest/download/CascadiaPl.ttf
mv -f ./CascadiaPl.ttf ./vscode/
printf "${GREEN}Open Font manager.\n${DEFAULT}"
printf "${GREEN}Delete ${RED}./vscode/CascadialPl.ttf${GREEN} ${DEFAULT}if you want.\n"
open ./vscode/CascadiaPl.ttf
