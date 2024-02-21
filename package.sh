#!/usr/bin/env bash

prompt() {
    while true; do
        echo -e "$1 [y/n]: "
        read -r yn
        case ${yn} in
            [Yy]*) return 0 ;;
            [Nn]*) return 1 ;;
	    *) echo "Invalid response '${yn}'"
        esac
    done
}

PACKAGE_NAME="$(jq -r '."X-KDE-PluginKeyword"' < "${PWD}/package/metadata.json")"

#zip -r "${PACKAGE_NAME}.kwinscript" "package"
tar -zcvf "${PACKAGE_NAME}.tar.gz" "package"

prompt "Do you want to commit and push the changes to the git repository?" && \
git add . && \
git commit -m "Update package" && \
git push
