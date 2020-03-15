#!/bin/sh

RED='\033[0;31m'
DEFAULT='\033[0;0m'

if [ -r userconfig.sh ]; then
	sh ./userconfig.sh
	if [ $dir_user_root2 ]; then
		dir_vscode_user="${dir_user_root}/Library/Application Support/Code/User"

		cat "${dir_vscode_user}/settings.json" \
				> ./vscode/settings_previous.json
		cat ./vscode/settings.json > "${dir_vscode_user}/settings.json"
		cnt=$(cat "${dir_vscode_user}/settings.json" | wc -l | tr -d " ")
		printf "$cnt lines was written.\n"
	else
		printf "${RED}\$dir_user_root${DEFAULT} is undefined. Check userconfig.sh.\n"
	fi
else
	printf "${RED}userconfig.sh${DEFAULT} does not exist. Create userconfig.sh with userconfig.sh.sample.\n"
fi
