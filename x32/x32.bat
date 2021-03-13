set GOARCH=386
set CGO_ENABLED=0
set path=E:\mingw32\bin\;%path%
go build --ldflags "-s -w" -buildmode=c-archive -o dllmain.a
gcc dllmain.def dllmain.a -shared -lwinmm -lWs2_32 -o dllmain.dll
move dllmain.dll reflective_dll.dll 