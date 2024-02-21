#!/usr/bin/env bash

PACKAGE_NAME="$(jq -r '."X-KDE-PluginKeyword"' < "${PWD}/package/metadata.json")"
INSTALL_LOCATION="${HOME}/.local/share/kwin/effects/"

echo "Installing ${PACKAGE_NAME}"

if [[ ! -d "${INSTALL_LOCATION}" ]]; then
    mkdir -p "${INSTALL_LOCATION}${PACKAGE_NAME}"
else
    echo "Skipping directory creation: directory exists"
fi

cp -R "package/." "${INSTALL_LOCATION}${PACKAGE_NAME}/" &&
echo "Successfully installed ${PACKAGE_NAME} to ${INSTALL_LOCATION}" ||
echo "Installation failed"
