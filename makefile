all: build
build: build/chrtox
clean:
	rm -rf build/
rebuild: clean build

build/:
	mkdir $@
build/chrtox: build/
	gcc src/main.c -Wall -Werror -Wextra -std=c23 -o $@
