#!/bin/sh

GREEN='\033[0;32m'
RED='\033[0;31m'

wget https://github.com/microsoft/cascadia-code/releases/latest/download/CascadiaPl.ttf
mv -f ./CascadiaPl.ttf ./vscode/
printf "${GREEN}Open Font manager.\n"
printf "${GREEN}Delete ${RED}./vscode/CascadialPl.ttf${GREEN} if you want.\n"
open ./vscode/CascadiaPl.ttf
