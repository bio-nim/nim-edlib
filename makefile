F=--debugger:native

try: foo.exe
	./foo.exe
go:
	c2nim --header ../edlib/include/edlib.h --cdecl --out:edlib.nim

foo.exe: foo.nim
	nim cpp $F -o:foo.exe foo.nim
