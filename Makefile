.PHONY: all release

PWD := $(shell pwd)
MAVEN := ./mvnw

clean:
	${MAVEN} clean

build:
	${MAVEN} install package

all: clean build

docker_build:
	cd train && $(MAKE) docker_build && cd ..
	cd detect && $(MAKE) docker_build && cd ..

# build all and release
release: all
	cd train && $(MAKE) release && cd ..
	cd detect && $(MAKE) release && cd ..
