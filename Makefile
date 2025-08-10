DMD ?= dmd

all: zash

zash: Src/main.d
	$(DMD) Src/main.d -ofzash

clean:
	rm -f zash

.PHONY: all clean
