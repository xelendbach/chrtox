all: build
build: build/chrtox
clean:
	rm -rf build/
rebuild: clean build
install: build/chrtox
	cp build/chrtox /bin/chrtox

build/:
	mkdir $@
build/chrtox: build/
	gcc src/main.c -Wall -Werror -Wextra -std=c23 -o $@
