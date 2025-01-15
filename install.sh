#!/bin/zsh

if [ ! -d "$HOME/esp-idf" ]; then
  cd "$HOME" || exit 1
  echo -e "\033[1;33mInsert the esp-idf version (default is v5.1.4):\033[0m"
  read -r version
  # Set default version if none is provided
  version=${version:-v5.1.4}
  
  echo -e "\033[1;32mCloning ESP-IDF repository...\033[0m"
  if git clone -b "$version" --recursive https://github.com/espressif/esp-idf.git; then
    cd "$HOME/esp-idf" || exit 1
    echo -e "\033[1;32mInstalling ESP-IDF tools...\033[0m"
    ./install.sh all
  else
    echo -e "\033[1;31mFailed to clone the repository. Please check the version or your internet connection.\033[0m"
    exit 1
  fi
else
  echo -e "\033[1;33mESP-IDF is already installed at $HOME/esp-idf.\033[0m"
fi
