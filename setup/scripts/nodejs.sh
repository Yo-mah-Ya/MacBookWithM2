#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc

nvm install v16.13.1

npm install -g yarn@1.22.18
echo -e "\n# Node.js" >> ~/.bashrc
echo 'export NODE_PATH=$(npm root -g)' >> ~/.bashrc
