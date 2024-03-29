#!/usr/bin/env bash

# set -euo pipefail

SOURCE_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}) && pwd)
SCRIPTS_DIR=${SOURCE_DIR}/scripts

OS=$(uname -s)

# Mac
if [ ${OS} = 'Darwin' ] ; then
    cd ~
    . ${SOURCE_DIR}/mac.sh
fi

# kubectl
cd ~
. ${SCRIPTS_DIR}/kubectl.sh

# git-secrets
cd ~
. ${SCRIPTS_DIR}/git_secrets.sh

# AWS CLI V2 for X86_64 latest version
cd ~
. ${SCRIPTS_DIR}/aws_cli_v2.sh

# Python
cd ~
. ${SCRIPTS_DIR}/python.sh

# Node.js
cd ~
. ${SCRIPTS_DIR}/nodejs.sh

# Golang
cd ~
. ${SCRIPTS_DIR}/golang.sh

# Open JDK
cd ~
. ${SCRIPTS_DIR}/java.sh

# PHP
cd ~
. ${SCRIPTS_DIR}/php.sh

# ssl-scan
cd ~
. ${SCRIPTS_DIR}/ssl_scan.sh

# vim
cd ~
. ${SCRIPTS_DIR}/vim.sh
