rem @echo off
set "usage=usage: flashi [{Debug|Release}]"

setlocal

set "build_type=Debug"
if not [%1]==[] set "build_type=%1"

set "ws_root=C:\Users\Sheen\Desktop\CICD"
set "sn=0670FF3632524B3043205426"
set "image_file=%ws_root%\%build_type%\CICDBadweh.bin"

"%ws_root%\ci-cd-tools\flash.bat" %sn% "%image_file%"
