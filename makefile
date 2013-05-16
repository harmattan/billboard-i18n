
LUPDATE ?= lupdate
LRELEASE ?= lrelease

QML_FILES = $(wildcard ../*.qml)
TS_FILES = $(wildcard *.ts)

default:
	@echo "Usage: make [update|release|clean]"

update:
	$(LUPDATE) $(QML_FILES) -ts $(TS_FILES)

release:
	$(LRELEASE) $(TS_FILES)

clean:
	rm -f *.qm

.PHONY: update release clean

