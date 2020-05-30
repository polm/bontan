all: src/bontan

src/bontan: src/bontan.nim
	nim c -d:ssl src/bontan.nim

clean:
	rm src/bontan
