

PATH:=node_modules/.bin:$(PATH)


#
# Sources
#

CSS:=$(wildcard lib/*.myth)
SRC:=$(CSS:%.myth=%.css)


#
# Targets
#

all: build

build: $(SRC)

%.css: %.myth
	myth $< $@

