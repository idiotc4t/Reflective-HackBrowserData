del dllmain.a
set GOARCH=amd64
go build -a -v --gcflags=-trimpath=$GOPATH -asmflags=-trimpath=$GOPATH -ldflags "-w -s" -buildmode=c-archive -o dllmain.a
gcc dllmain.def dllmain.a -shared -lwinmm -lWs2_32 -o dllmain.dll
move dllmain.dll reflective_dll.x64.dll
