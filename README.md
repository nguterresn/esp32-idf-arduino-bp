## ESP-IDF + Arduino Boilerplate

### Clone it

```BASH
git clone --recursive -j8 https://github.com/nguterresn/esp32-idf-arduino-bp.git your_custom_path_or_name
cd your_custom_path_or_name
```

### Build

Based on [ESP-IDF v5.1.4](https://docs.espressif.com/projects/esp-idf/en/v5.1.4/esp32/api-reference/index.html)

- Before anything do `get_idf`
- Build with `idf.py build`
- Check for serial devices with `ls /dev/tty.*`
- Flash with `idf.py -p DEVICE flash`
- Monitor with `idf.py -p DEVICE monitor`

### Troubleshooting

In case of SSL invalid certificates, check https://stackoverflow.com/questions/44649449/brew-installation-of-python-3-6-1-ssl-certificate-verify-failed-certificate/44649450#44649450.
