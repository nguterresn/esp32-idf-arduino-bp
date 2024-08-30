brew install cmake ninja dfu-util
brew install python3
cd ~
git clone -b v5.1.4 --recursive https://github.com/espressif/esp-idf.git
cd ~/esp-idf
./install.sh all
echo "alias get_idf='. $HOME/esp-idf/export.sh'" >> ~/.zshrc
source ~/.zshrc