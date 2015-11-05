# Alpine-FSharp

An alpine linux fsharp container, 3 layers with a total image size of 154 MB.

Alpine mono is currently only available from testing repository and segfaults while building fsharp. The alternative I have used is alpine-glibc + archlinux mono and a source build of fsharp. It seems to work. Your milage may vary.
