F=--debugger:native -d:nimDebugDlOpen
# Note: In OSX, DYLD_LIBRARY_PATH is cleared for sub-procs.

try: aligner.exe
	#DYLD_PRINT_LIBRARIES=1 ./aligner.exe
	./aligner.exe
%.exe: %.nim
	nim cpp $F -o:$@ $<
clean:
	rm -f *.exe
