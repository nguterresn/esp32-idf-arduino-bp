config:
	. ${HOME}/esp-idf/export.sh

build:
	idf.py build

flash:
	idf.py flash -p $(port)

clean:
	rm -rf build

.PHONY: build
