TARGET_DIR := /etc
EXCLUDES := .git Makefile
SOURCE_DIR := $(PWD)
SOURCES := $(filter-out $(EXCLUDES), $(wildcard *))

all:
	$(foreach SOURCE, $(SOURCES), rm -rf $(TARGET_DIR)/$(SOURCE);)
	$(foreach SOURCE, $(SOURCES), ln -s $(abspath $(SOURCE)), $(TARGET_DIR)/$(SOURCE);)