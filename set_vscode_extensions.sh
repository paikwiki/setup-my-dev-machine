#!/bin/sh

# If some extension was deleted, there is no way to find it before reinstall.
# So I should uninstall all extensions, then reinstall them base on
# ".vscode/extensions_list.txt".
#
# issue: Cannot uninstall an extension if the other depends on it.

if [ ! -f "./vscode/extensions_list.txt" ]; then
	printf "extenstions_list.txt does not exist.\n"
else
	# create current extensions_list_previous.txt
	code --list-extensions > ./vscode/extensions_list_previous.txt

	# uninstall current extensions
	code --list-extensions | xargs -L 1 code --uninstall-extension

	# install extensions
	cat ./vscode/extensions_list.txt | while read extension_name
	do
		code --install-extension $extension_name
	done
	cnt=$(code --list-extensions | wc -l | tr -d " ")
	printf "$cnt extentions was installed.\n"
fi
