#!/bin/sh

# The following script will reduce the filesize of a clean wineskin wrapper to less than 40MB
# Made for old games with little to no dependencies. Tested with Warcraft II, EV Nova
# Tested with wine version WS11WineCX64Bit22.1.1-8


# cd current working directory
WORKINGDIR=$(cd "$(dirname "$BASH_SOURCE")"; cd -P "$(dirname "$(readlink "$BASH_SOURCE" || echo .)")"; pwd)
cd "$WORKINGDIR"

# make sure we are in the right directory
[ ! -d "Contents/Frameworks" ] && echo "Error: Script must be placed inside of a wineskin wrapped app, aborting..." && exit 1


cd Contents

mv Frameworks Frameworks_tmp
mkdir Frameworks

mv Frameworks_tmp/ObjectiveC_Extension.framework Frameworks/ObjectiveC_Extension.framework

mv Frameworks_tmp/libbrotlicommon.1.0.9.dylib Frameworks/libbrotlicommon.1.0.9.dylib
mv Frameworks_tmp/libbrotlicommon.1.dylib Frameworks/libbrotlicommon.1.dylib
mv Frameworks_tmp/libbrotlicommon.dylib Frameworks/libbrotlicommon.dylib
mv Frameworks_tmp/libbrotlidec.1.0.9.dylib Frameworks/libbrotlidec.1.0.9.dylib
mv Frameworks_tmp/libbrotlidec.1.dylib Frameworks/libbrotlidec.1.dylib
mv Frameworks_tmp/libbrotlidec.dylib Frameworks/libbrotlidec.dylib
mv Frameworks_tmp/libfreetype.6.dylib Frameworks/libfreetype.6.dylib
mv Frameworks_tmp/libfreetype.dylib Frameworks/libfreetype.dylib
mv Frameworks_tmp/libpng.dylib Frameworks/libpng.dylib
mv Frameworks_tmp/libpng16.16.dylib Frameworks/libpng16.16.dylib
mv Frameworks_tmp/libpng16.dylib Frameworks/libpng16.dylib
mv Frameworks_tmp/libwine.1.0.dylib Frameworks/libwine.1.0.dylib
mv Frameworks_tmp/libwine.1.dylib Frameworks/libwine.1.dylib

rm -r Frameworks_tmp


cd "$WORKINGDIR"
cd Contents/SharedSupport/prefix/drive_c/

mv windows/system32 windows/system32_tmp
mkdir windows/system32

mv windows/system32_tmp/drivers windows/system32/drivers

mv windows/system32_tmp/actxprxy.dll windows/system32/actxprxy.dll
mv windows/system32_tmp/advapi32.dll windows/system32/advapi32.dll
mv windows/system32_tmp/bcrypt.dll windows/system32/bcrypt.dll
mv windows/system32_tmp/combase.dll windows/system32/combase.dll
mv windows/system32_tmp/comctl32.dll windows/system32/comctl32.dll
mv windows/system32_tmp/comdlg32.dll windows/system32/comdlg32.dll
mv windows/system32_tmp/crtdll.dll windows/system32/crtdll.dll
mv windows/system32_tmp/crypt32.dll windows/system32/crypt32.dll
mv windows/system32_tmp/dnsapi.dll windows/system32/dnsapi.dll
mv windows/system32_tmp/dsound.dll windows/system32/dsound.dll
mv windows/system32_tmp/dwmapi.dll windows/system32/dwmapi.dll
mv windows/system32_tmp/explorer.exe windows/system32/explorer.exe
mv windows/system32_tmp/gdi32.dll windows/system32/gdi32.dll
mv windows/system32_tmp/gdiplus.dll windows/system32/gdiplus.dll
mv windows/system32_tmp/imm32.dll windows/system32/imm32.dll
mv windows/system32_tmp/iphlpapi.dll windows/system32/iphlpapi.dll
mv windows/system32_tmp/kernel32.dll windows/system32/kernel32.dll
mv windows/system32_tmp/kernelbase.dll windows/system32/kernelbase.dll
mv windows/system32_tmp/mmdevapi.dll windows/system32/mmdevapi.dll
mv windows/system32_tmp/msacm32.dll windows/system32/msacm32.dll
mv windows/system32_tmp/msvcrt.dll windows/system32/msvcrt.dll
mv windows/system32_tmp/nsi.dll windows/system32/nsi.dll
mv windows/system32_tmp/ntoskrnl.exe windows/system32/ntoskrnl.exe
mv windows/system32_tmp/ole32.dll windows/system32/ole32.dll
mv windows/system32_tmp/oleaut32.dll windows/system32/oleaut32.dll
mv windows/system32_tmp/opengl32.dll windows/system32/opengl32.dll
mv windows/system32_tmp/plugplay.exe windows/system32/plugplay.exe
mv windows/system32_tmp/rasapi32.dll windows/system32/rasapi32.dll
mv windows/system32_tmp/rpcrt4.dll windows/system32/rpcrt4.dll
mv windows/system32_tmp/rpcss.exe windows/system32/rpcss.exe
mv windows/system32_tmp/rsaenh.dll windows/system32/rsaenh.dll
mv windows/system32_tmp/sechost.dll windows/system32/sechost.dll
mv windows/system32_tmp/services.exe windows/system32/services.exe
mv windows/system32_tmp/setupapi.dll windows/system32/setupapi.dll
mv windows/system32_tmp/shcore.dll windows/system32/shcore.dll
mv windows/system32_tmp/shell32.dll windows/system32/shell32.dll
mv windows/system32_tmp/shlwapi.dll windows/system32/shlwapi.dll
mv windows/system32_tmp/svchost.exe windows/system32/svchost.exe
mv windows/system32_tmp/ucrtbase.dll windows/system32/ucrtbase.dll
mv windows/system32_tmp/user32.dll windows/system32/user32.dll
mv windows/system32_tmp/userenv.dll windows/system32/userenv.dll
mv windows/system32_tmp/uxtheme.dll windows/system32/uxtheme.dll
mv windows/system32_tmp/version.dll windows/system32/version.dll
mv windows/system32_tmp/wevtsvc.dll windows/system32/wevtsvc.dll
mv windows/system32_tmp/win32u.dll windows/system32/win32u.dll
mv windows/system32_tmp/wineboot.exe windows/system32/wineboot.exe
mv windows/system32_tmp/winecoreaudio.drv windows/system32/winecoreaudio.drv
mv windows/system32_tmp/winedevice.exe windows/system32/winedevice.exe
mv windows/system32_tmp/winemac.drv windows/system32/winemac.drv
mv windows/system32_tmp/winemenubuilder.exe windows/system32/winemenubuilder.exe
mv windows/system32_tmp/winmm.dll windows/system32/winmm.dll
mv windows/system32_tmp/winspool.drv windows/system32/winspool.drv
mv windows/system32_tmp/wow64.dll windows/system32/wow64.dll
mv windows/system32_tmp/wow64cpu.dll windows/system32/wow64cpu.dll
mv windows/system32_tmp/ws2_32.dll windows/system32/ws2_32.dll

rm -r windows/system32_tmp


mv windows/syswow64 windows/syswow64_tmp
mkdir windows/syswow64

mv windows/syswow64_tmp/advapi32.dll windows/syswow64/advapi32.dll
mv windows/syswow64_tmp/combase.dll windows/syswow64/combase.dll
mv windows/syswow64_tmp/comctl32.dll windows/syswow64/comctl32.dll
mv windows/syswow64_tmp/comdlg32.dll windows/syswow64/comdlg32.dll
mv windows/syswow64_tmp/crtdll.dll windows/syswow64/crtdll.dll
mv windows/syswow64_tmp/ddraw.dll windows/syswow64/ddraw.dll
mv windows/syswow64_tmp/dnsapi.dll windows/syswow64/dnsapi.dll
mv windows/syswow64_tmp/dsound.dll windows/syswow64/dsound.dll
mv windows/syswow64_tmp/gdi32.dll windows/syswow64/gdi32.dll
mv windows/syswow64_tmp/imm32.dll windows/syswow64/imm32.dll
mv windows/syswow64_tmp/iphlpapi.dll windows/syswow64/iphlpapi.dll
mv windows/syswow64_tmp/kernel32.dll windows/syswow64/kernel32.dll
mv windows/syswow64_tmp/kernelbase.dll windows/syswow64/kernelbase.dll
mv windows/syswow64_tmp/mmdevapi.dll windows/syswow64/mmdevapi.dll
mv windows/syswow64_tmp/mpr.dll windows/syswow64/mpr.dll
mv windows/syswow64_tmp/msacm32.dll windows/syswow64/msacm32.dll
mv windows/syswow64_tmp/msvcrt.dll windows/syswow64/msvcrt.dll
mv windows/syswow64_tmp/nsi.dll windows/syswow64/nsi.dll
mv windows/syswow64_tmp/ole32.dll windows/syswow64/ole32.dll
mv windows/syswow64_tmp/oleaut32.dll windows/syswow64/oleaut32.dll
mv windows/syswow64_tmp/opengl32.dll windows/syswow64/opengl32.dll
mv windows/syswow64_tmp/rpcrt4.dll windows/syswow64/rpcrt4.dll
mv windows/syswow64_tmp/sechost.dll windows/syswow64/sechost.dll
mv windows/syswow64_tmp/setupapi.dll windows/syswow64/setupapi.dll
mv windows/syswow64_tmp/shcore.dll windows/syswow64/shcore.dll
mv windows/syswow64_tmp/shell32.dll windows/syswow64/shell32.dll
mv windows/syswow64_tmp/shlwapi.dll windows/syswow64/shlwapi.dll
mv windows/syswow64_tmp/ucrtbase.dll windows/syswow64/ucrtbase.dll
mv windows/syswow64_tmp/urlmon.dll windows/syswow64/urlmon.dll
mv windows/syswow64_tmp/user32.dll windows/syswow64/user32.dll
mv windows/syswow64_tmp/uxtheme.dll windows/syswow64/uxtheme.dll
mv windows/syswow64_tmp/version.dll windows/syswow64/version.dll
mv windows/syswow64_tmp/win32u.dll windows/syswow64/win32u.dll
mv windows/syswow64_tmp/winebrowser.exe windows/syswow64/winebrowser.exe
mv windows/syswow64_tmp/winecoreaudio.drv windows/syswow64/winecoreaudio.drv
mv windows/syswow64_tmp/wined3d.dll windows/syswow64/wined3d.dll
mv windows/syswow64_tmp/winemac.drv windows/syswow64/winemac.drv
mv windows/syswow64_tmp/wininet.dll windows/syswow64/wininet.dll
mv windows/syswow64_tmp/winmm.dll windows/syswow64/winmm.dll
mv windows/syswow64_tmp/winspool.drv windows/syswow64/winspool.drv
mv windows/syswow64_tmp/ws2_32.dll windows/syswow64/ws2_32.dll
mv windows/syswow64_tmp/wsock32.dll windows/syswow64/wsock32.dll

rm -r windows/syswow64_tmp


mv windows/winsxs windows/winsxs_tmp
mkdir windows/winsxs

mkdir windows/winsxs/manifests

mv windows/winsxs_tmp/manifests/amd64_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef.manifest windows/winsxs/manifests/amd64_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef.manifest
mv windows/winsxs_tmp/manifests/x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef.manifest windows/winsxs/manifests/x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef.manifest

mv windows/winsxs_tmp/amd64_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef windows/winsxs/amd64_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef
mv windows/winsxs_tmp/x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef windows/winsxs/x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef

rm -r windows/winsxs_tmp


mv windows windows_tmp
mkdir windows

mv windows_tmp/Fonts windows/Fonts
mv windows_tmp/resources windows/resources
mv windows_tmp/system32 windows/system32
mv windows_tmp/syswow64 windows/syswow64
mv windows_tmp/winsxs windows/winsxs
mv windows_tmp/profiles windows/profiles

rm -r windows_tmp


rm -r "Program Files/"*
rm -r "Program Files (x86)/"*


cd "$WORKINGDIR"

rm -r Contents/SharedSupport/wine/share/wine/gecko/*
rm -r Contents/SharedSupport/wine/share/wine/mono/*


cd Contents/SharedSupport/wine/

if [ -d "lib/wine/i386-windows" ]; then
	mv lib/wine/i386-windows lib/wine/i386-windows_tmp
	mkdir lib/wine/i386-windows

	mv lib/wine/i386-windows_tmp/dnsapi.dll lib/wine/i386-windows/dnsapi.dll
	mv lib/wine/i386-windows_tmp/ntdll.dll lib/wine/i386-windows/ntdll.dll
	mv lib/wine/i386-windows_tmp/winecoreaudio.drv lib/wine/i386-windows/winecoreaudio.drv
	mv lib/wine/i386-windows_tmp/ws2_32.dll lib/wine/i386-windows/ws2_32.dll

	rm -r lib/wine/i386-windows_tmp
elif [ -d "lib/wine/i386-windows" ]; then
	#TODO: Add support for older wine versions
	echo "Error: directory i386-windows not found"
else
	echo "Error: directory i386-windows not found"
fi


if [ -d "lib/wine/x86_32on64-unix" ]; then
	mv lib/wine/x86_32on64-unix lib/wine/x86_32on64-unix_tmp
	mkdir lib/wine/x86_32on64-unix

	mv lib/wine/x86_32on64-unix_tmp/dnsapi.so lib/wine/x86_32on64-unix/dnsapi.so
	mv lib/wine/x86_32on64-unix_tmp/libwine.1.0.dylib lib/wine/x86_32on64-unix/libwine.1.0.dylib
	mv lib/wine/x86_32on64-unix_tmp/libwine.1.dylib lib/wine/x86_32on64-unix/libwine.1.dylib
	mv lib/wine/x86_32on64-unix_tmp/mountmgr.so lib/wine/x86_32on64-unix/mountmgr.so
	mv lib/wine/x86_32on64-unix_tmp/nsiproxy.so lib/wine/x86_32on64-unix/nsiproxy.so
	mv lib/wine/x86_32on64-unix_tmp/ntdll.so lib/wine/x86_32on64-unix/ntdll.so
	mv lib/wine/x86_32on64-unix_tmp/opengl32.dll.so lib/wine/x86_32on64-unix/opengl32.dll.so
	mv lib/wine/x86_32on64-unix_tmp/win32u.dll.so lib/wine/x86_32on64-unix/win32u.dll.so
	mv lib/wine/x86_32on64-unix_tmp/winebus.so lib/wine/x86_32on64-unix/winebus.so
	mv lib/wine/x86_32on64-unix_tmp/winecoreaudio.so lib/wine/x86_32on64-unix/winecoreaudio.so
	mv lib/wine/x86_32on64-unix_tmp/winemac.drv.so lib/wine/x86_32on64-unix/winemac.drv.so
	mv lib/wine/x86_32on64-unix_tmp/ws2_32.so lib/wine/x86_32on64-unix/ws2_32.so

	rm -r lib/wine/x86_32on64-unix_tmp
elif [ -d "lib/wine/x86_32on64-unix" ]; then
	#TODO: Add support for older wine versions
	echo "Error: directory x86_32on64-unix not found"
else
	echo "Error: directory x86_32on64-unix not found"
fi


if [ -d "lib/wine/x86_64-unix" ]; then
	mv lib/wine/x86_64-unix lib/wine/x86_64-unix_tmp
	mkdir lib/wine/x86_64-unix

	mv lib/wine/x86_64-unix_tmp/dnsapi.so lib/wine/x86_64-unix/dnsapi.so
	mv lib/wine/x86_64-unix_tmp/libwine.1.0.dylib lib/wine/x86_64-unix/libwine.1.0.dylib
	mv lib/wine/x86_64-unix_tmp/libwine.1.dylib lib/wine/x86_64-unix/libwine.1.dylib
	mv lib/wine/x86_64-unix_tmp/mountmgr.so lib/wine/x86_64-unix/mountmgr.so
	mv lib/wine/x86_64-unix_tmp/nsiproxy.so lib/wine/x86_64-unix/nsiproxy.so
	mv lib/wine/x86_64-unix_tmp/ntdll.so lib/wine/x86_64-unix/ntdll.so
	mv lib/wine/x86_64-unix_tmp/win32u.dll.so lib/wine/x86_64-unix/win32u.dll.so
	mv lib/wine/x86_64-unix_tmp/winebus.so lib/wine/x86_64-unix/winebus.so
	mv lib/wine/x86_64-unix_tmp/winemac.drv.so lib/wine/x86_64-unix/winemac.drv.so
	mv lib/wine/x86_64-unix_tmp/ws2_32.so lib/wine/x86_64-unix/ws2_32.so

	rm -r lib/wine/x86_64-unix_tmp
elif [ -d "lib/wine/x86_64-unix" ]; then
	#TODO: Add support for older wine versions
	echo "Error: directory x86_64-unix not found"
else
	echo "Error: directory x86_64-unix not found"
fi


if [ -d "lib/wine/x86_64-windows" ]; then
	mv lib/wine/x86_64-windows lib/wine/x86_64-windows_tmp
	mkdir lib/wine/x86_64-windows

	mv lib/wine/x86_64-windows_tmp/apisetschema.dll lib/wine/x86_64-windows/apisetschema.dll
	mv lib/wine/x86_64-windows_tmp/dnsapi.dll lib/wine/x86_64-windows/dnsapi.dll
	mv lib/wine/x86_64-windows_tmp/mountmgr.sys lib/wine/x86_64-windows/mountmgr.sys
	mv lib/wine/x86_64-windows_tmp/nsiproxy.sys lib/wine/x86_64-windows/nsiproxy.sys
	mv lib/wine/x86_64-windows_tmp/ntdll.dll lib/wine/x86_64-windows/ntdll.dll
	mv lib/wine/x86_64-windows_tmp/ntoskrnl.exe lib/wine/x86_64-windows/ntoskrnl.exe
	mv lib/wine/x86_64-windows_tmp/winebus.sys lib/wine/x86_64-windows/winebus.sys
	mv lib/wine/x86_64-windows_tmp/ws2_32.dll lib/wine/x86_64-windows/ws2_32.dll

	rm -r lib/wine/x86_64-windows_tmp
elif [ -d "lib/wine/x86_64-windows" ]; then
	#TODO: Add support for older wine versions
	echo "Error: directory x86_64-windows not found"
else
	echo "Error: directory x86_64-windows not found"
fi
