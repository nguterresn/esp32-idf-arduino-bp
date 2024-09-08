#!/bin/bash

brew install cmake ninja dfu-util
brew install python3
cd $HOME
if ! [ $HOME/esp-idf ]; then
  echo -e "\033[1;33m Insert the esp-idf version (default is v5.1.4):"
  read version
  git clone -b $version --recursive https://github.com/espressif/esp-idf.git
  cd $HOME/esp-idf
  ./install.sh all
fi
if ! alias get_idf >/dev/null 2>&1; then
  echo "alias get_idf='. $HOME/esp-idf/export.sh'" >> $HOME/.zshrc
  source $HOME/.zshrc
fi
echo -e "\033[0;32m esp-idf-arduino-bp is successfully installed."
