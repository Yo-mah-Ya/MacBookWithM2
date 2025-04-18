#!/usr/bin/env bash

git clone https://github.com/jenv/jenv.git ~/.jenv
echo -e "\n# Java" >> ~/.bashrc
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(jenv init -)"' >> ~/.bashrc

source ~/.bashrc

brew install java11
jenv add /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home
brew install java17
jenv add /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home
brew install java21
jenv add /opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk/Contents/Home

jenv global 21.0
jenv enable-plugin export
source ~/.bashrc
