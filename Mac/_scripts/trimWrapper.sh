#!/bin/sh

# The following script will reduce the filesize of a clean wineskin wrapper (25-50MB Compressed/pkg, depends on wine version)
# Made for old games with little to no dependencies. Tested with Warcraft II, EV Nova, GTA, Dune 2000, Tiberian Sun, Moorhuhn 2
# Tested with wine version WS11WineCX64Bit22.1.1-8, WS11WineCX64Bit21.2.0-1, WS11WineCX21.2.0-1, WS11WineCX64Bit20.0.4, WS11WineCX20.0.4


echo ""

WORKINGDIR=$(cd "$(dirname "$BASH_SOURCE")"; cd -P "$(dirname "$(readlink "$BASH_SOURCE" || echo .)")"; pwd)
cd "$WORKINGDIR"
[ ! -d "drive_c/windows/system32" ] && echo "Error: Script must be placed inside of a wineskin wrapped app, aborting..." && exit 1


if [ -d "Contents/Frameworks" ]; then
	echo "Trimming Contents/Frameworks:"
	
	cd Contents
	
	mv Frameworks Frameworks_tmp
	mkdir Frameworks

	mv Frameworks_tmp/ObjectiveC_Extension.framework Frameworks

	mv Frameworks_tmp/libbrotlicommon.1.0.9.dylib Frameworks
	mv Frameworks_tmp/libbrotlicommon.1.dylib Frameworks
	mv Frameworks_tmp/libbrotlicommon.dylib Frameworks
	mv Frameworks_tmp/libbrotlidec.1.0.9.dylib Frameworks
	mv Frameworks_tmp/libbrotlidec.1.dylib Frameworks
	mv Frameworks_tmp/libbrotlidec.dylib Frameworks
	mv Frameworks_tmp/libfreetype.6.dylib Frameworks
	mv Frameworks_tmp/libfreetype.dylib Frameworks
	mv Frameworks_tmp/libpng.dylib Frameworks
	mv Frameworks_tmp/libpng16.16.dylib Frameworks
	mv Frameworks_tmp/libpng16.dylib Frameworks
	mv Frameworks_tmp/libwine.1.0.dylib Frameworks
	mv Frameworks_tmp/libwine.1.dylib Frameworks

	rm -r Frameworks_tmp
	
	cd ..
	
	echo ""
else
	echo "Directory Contents/Frameworks not found"
	echo ""
fi


if [ -d "Wineskin.app/Contents/Resources" ]; then
	echo "Trimming Wineskin.app/Contents/Resources:"
	
	cd Wineskin.app/Contents/Resources

	rm 7z
	rm 7z.so
	rm 7za
	rm 7zCon.sfx
	rm 7zr
	rm wineskin7z
	
	cd ../../..
	
	echo ""
else
	echo "Directory Wineskin.app/Contents/Resources not found"
	echo ""
fi


cd drive_c

if [ -d "windows/system32" ]; then
	echo "Trimming drive_c/windows/system32:"
	
	cd windows
	
	mv system32 system32_tmp
	mkdir system32

	mv system32_tmp/drivers system32
	
	mv system32_tmp/apisetschema.dll system32
	mv system32_tmp/actxprxy.dll system32
	mv system32_tmp/advapi32.dll system32
	mv system32_tmp/api-ms-win-core-fibers-l1-1-1.dll system32
	mv system32_tmp/api-ms-win-core-localization-l1-2-1.dll system32
	mv system32_tmp/api-ms-win-core-synch-l1-2-0.dll system32
	mv system32_tmp/bcrypt.dll system32
	mv system32_tmp/cmd.exe system32
	mv system32_tmp/combase.dll system32
	mv system32_tmp/comctl32.dll system32
	mv system32_tmp/comdlg32.dll system32
	mv system32_tmp/conhost.exe system32
	mv system32_tmp/crtdll.dll system32
	mv system32_tmp/crypt32.dll system32
	mv system32_tmp/dbghelp.dll system32
	mv system32_tmp/ddraw.dll system32
	mv system32_tmp/dinput.dll system32
	mv system32_tmp/dinput8.dll system32
	mv system32_tmp/dplayx.dll system32
	mv system32_tmp/dnsapi.dll system32
	mv system32_tmp/dsound.dll system32
	mv system32_tmp/dwmapi.dll system32
	mv system32_tmp/explorer.exe system32
	mv system32_tmp/explorerframe.dll system32
	mv system32_tmp/gdi32.dll system32
	mv system32_tmp/gdiplus.dll system32
	mv system32_tmp/hal.dll system32
	mv system32_tmp/hid.dll system32
	mv system32_tmp/imagehlp.dll system32
	mv system32_tmp/imm32.dll system32
	mv system32_tmp/iphlpapi.dll system32
	mv system32_tmp/jsproxy.dll system32
	mv system32_tmp/kerberos.dll system32
	mv system32_tmp/kernel32.dll system32
	mv system32_tmp/kernelbase.dll system32
	mv system32_tmp/midimap.dll system32
	mv system32_tmp/mmdevapi.dll system32
	mv system32_tmp/mpr.dll system32
	mv system32_tmp/msacm32.dll system32
	mv system32_tmp/msftedit.dll system32
	mv system32_tmp/msimg32.dll system32
	mv system32_tmp/msvcrt.dll system32
	mv system32_tmp/netapi32.dll system32
	mv system32_tmp/ntdll.dll system32
	mv system32_tmp/nsi.dll system32
	mv system32_tmp/ntoskrnl.exe system32
	mv system32_tmp/ole32.dll system32
	mv system32_tmp/oleaut32.dll system32
	mv system32_tmp/oledlg.dll system32
	mv system32_tmp/opengl32.dll system32
	mv system32_tmp/psapi.dll system32
	mv system32_tmp/plugplay.exe system32
	mv system32_tmp/rasapi32.dll system32
	mv system32_tmp/riched20.dll system32
	mv system32_tmp/riched32.dll system32
	mv system32_tmp/rpcrt4.dll system32
	mv system32_tmp/rpcss.exe system32
	mv system32_tmp/rsaenh.dll system32
	mv system32_tmp/rstrtmgr.dll system32
	mv system32_tmp/rundll32.exe system32
	mv system32_tmp/schannel.dll system32
	mv system32_tmp/sechost.dll system32
	mv system32_tmp/secur32.dll system32
	mv system32_tmp/services.exe system32
	mv system32_tmp/setupapi.dll system32
	mv system32_tmp/start.exe system32
	mv system32_tmp/shcore.dll system32
	mv system32_tmp/shell32.dll system32
	mv system32_tmp/shlwapi.dll system32
	mv system32_tmp/svchost.exe system32
	mv system32_tmp/ucrtbase.dll system32
	mv system32_tmp/urlmon.dll system32
	mv system32_tmp/user32.dll system32
	mv system32_tmp/userenv.dll system32
	mv system32_tmp/usp10.dll system32
	mv system32_tmp/uxtheme.dll system32
	mv system32_tmp/version.dll system32
	mv system32_tmp/wevtsvc.dll system32
	mv system32_tmp/win32u.dll system32
	mv system32_tmp/wineboot.exe system32
	mv system32_tmp/winebrowser.exe system32
	mv system32_tmp/winecoreaudio.drv system32
	mv system32_tmp/winedevice.exe system32
	mv system32_tmp/wined3d.dll system32
	mv system32_tmp/winemac.drv system32
	mv system32_tmp/winemenubuilder.exe system32
	mv system32_tmp/wininet.dll system32
	mv system32_tmp/winmm.dll system32
	mv system32_tmp/winhttp.dll system32
	mv system32_tmp/winspool.drv system32
	mv system32_tmp/wldap32.dll system32
	mv system32_tmp/wow64.dll system32
	mv system32_tmp/wow64cpu.dll system32
	mv system32_tmp/ws2_32.dll system32
	mv system32_tmp/wsock32.dll system32
	
	rm -r system32_tmp
	
	cd ..
	
	echo ""
else
	echo "Directory drive_c/windows/system32 not found"
	echo ""
fi


if [ -d "windows/syswow64" ]; then
	echo "Trimming drive_c/windows/syswow64:"
	
	cd windows

	mv syswow64 syswow64_tmp
	mkdir syswow64
	
	mv syswow64_tmp/apisetschema.dll syswow64
	mv syswow64_tmp/actxprxy.dll syswow64
	mv syswow64_tmp/advapi32.dll syswow64
	mv syswow64_tmp/api-ms-win-core-fibers-l1-1-1.dll syswow64
	mv syswow64_tmp/api-ms-win-core-localization-l1-2-1.dll syswow64
	mv syswow64_tmp/api-ms-win-core-synch-l1-2-0.dll syswow64
	mv syswow64_tmp/combase.dll syswow64
	mv syswow64_tmp/bcrypt.dll syswow64
	mv syswow64_tmp/cmd.exe syswow64
	mv syswow64_tmp/comctl32.dll syswow64
	mv syswow64_tmp/comdlg32.dll syswow64
	mv syswow64_tmp/conhost.exe syswow64
	mv syswow64_tmp/crtdll.dll syswow64
	mv syswow64_tmp/crypt32.dll syswow64
	mv syswow64_tmp/dbghelp.dll syswow64
	mv syswow64_tmp/ddraw.dll syswow64
	mv syswow64_tmp/dinput.dll syswow64
	mv syswow64_tmp/dinput8.dll syswow64
	mv syswow64_tmp/dnsapi.dll syswow64
	mv syswow64_tmp/dplayx.dll syswow64
	mv syswow64_tmp/dsound.dll syswow64
	mv syswow64_tmp/dwmapi.dll syswow64
	mv syswow64_tmp/explorer.exe syswow64
	mv syswow64_tmp/explorerframe.dll syswow64
	mv syswow64_tmp/gdi32.dll syswow64
	mv syswow64_tmp/gdiplus.dll syswow64
	mv syswow64_tmp/hal.dll syswow64
	mv syswow64_tmp/hid.dll syswow64
	mv syswow64_tmp/imagehlp.dll syswow64
	mv syswow64_tmp/imm32.dll syswow64
	mv syswow64_tmp/iphlpapi.dll syswow64
	mv syswow64_tmp/kerberos.dll syswow64
	mv syswow64_tmp/kernel32.dll syswow64
	mv syswow64_tmp/kernelbase.dll syswow64
	mv syswow64_tmp/jsproxy.dll syswow64
	mv syswow64_tmp/midimap.dll syswow64
	mv syswow64_tmp/mmdevapi.dll syswow64
	mv syswow64_tmp/mpr.dll syswow64
	mv syswow64_tmp/msacm32.dll syswow64
	mv syswow64_tmp/msftedit.dll syswow64
	mv syswow64_tmp/msimg32.dll syswow64
	mv syswow64_tmp/msvcrt.dll syswow64
	mv syswow64_tmp/netapi32.dll syswow64
	mv syswow64_tmp/ntdll.dll syswow64
	mv syswow64_tmp/nsi.dll syswow64
	mv syswow64_tmp/ntoskrnl.exe syswow64
	mv syswow64_tmp/ole32.dll syswow64
	mv syswow64_tmp/oleaut32.dll syswow64
	mv syswow64_tmp/oledlg.dll syswow64
	mv syswow64_tmp/opengl32.dll syswow64
	mv syswow64_tmp/psapi.dll syswow64
	mv syswow64_tmp/plugplay.exe syswow64
	mv syswow64_tmp/rsaenh.dll syswow64
	mv syswow64_tmp/rstrtmgr.dll syswow64
	mv syswow64_tmp/rundll32.exe syswow64
	mv syswow64_tmp/rasapi32.dll syswow64
	mv syswow64_tmp/riched20.dll syswow64
	mv syswow64_tmp/riched32.dll syswow64
	mv syswow64_tmp/rpcrt4.dll syswow64
	mv syswow64_tmp/rpcss.exe syswow64
	mv syswow64_tmp/schannel.dll syswow64
	mv syswow64_tmp/sechost.dll syswow64
	mv syswow64_tmp/secur32.dll syswow64
	mv syswow64_tmp/services.exe syswow64
	mv syswow64_tmp/setupapi.dll syswow64
	mv syswow64_tmp/start.exe syswow64
	mv syswow64_tmp/shcore.dll syswow64
	mv syswow64_tmp/shell32.dll syswow64
	mv syswow64_tmp/shlwapi.dll syswow64
	mv syswow64_tmp/svchost.exe syswow64
	mv syswow64_tmp/ucrtbase.dll syswow64
	mv syswow64_tmp/urlmon.dll syswow64
	mv syswow64_tmp/user32.dll syswow64
	mv syswow64_tmp/userenv.dll syswow64
	mv syswow64_tmp/usp10.dll syswow64
	mv syswow64_tmp/uxtheme.dll syswow64
	mv syswow64_tmp/version.dll syswow64
	mv syswow64_tmp/wevtsvc.dll syswow64
	mv syswow64_tmp/win32u.dll syswow64
	mv syswow64_tmp/wineboot.exe syswow64
	mv syswow64_tmp/winebrowser.exe syswow64
	mv syswow64_tmp/winecoreaudio.drv syswow64
	mv syswow64_tmp/winedevice.exe syswow64
	mv syswow64_tmp/wined3d.dll syswow64
	mv syswow64_tmp/winemac.drv syswow64
	mv syswow64_tmp/wininet.dll syswow64
	mv syswow64_tmp/winmm.dll syswow64
	mv syswow64_tmp/winhttp.dll syswow64
	mv syswow64_tmp/winspool.drv syswow64
	mv syswow64_tmp/wldap32.dll syswow64
	mv syswow64_tmp/wow64.dll syswow64
	mv syswow64_tmp/wow64cpu.dll syswow64
	mv syswow64_tmp/ws2_32.dll syswow64
	mv syswow64_tmp/wsock32.dll syswow64
	
	rm -r syswow64_tmp
	
	cd ..
	
	echo ""
else
	echo "Directory drive_c/windows/syswow64 not found"
	echo ""
fi


if [ -d "windows/winsxs" ]; then
	echo "Trimming drive_c/windows/winsxs:"

	cd windows

	mv winsxs winsxs_tmp
	mkdir winsxs

	mkdir winsxs/manifests

	mv winsxs_tmp/manifests/amd64_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef.manifest winsxs/manifests
	mv winsxs_tmp/manifests/x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef.manifest winsxs/manifests

	mv winsxs_tmp/amd64_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef winsxs
	mv winsxs_tmp/x86_microsoft.windows.common-controls_6595b64144ccf1df_6.0.2600.2982_none_deadbeef winsxs

	rm -r winsxs_tmp
	
	cd ..
	
	echo ""
else
	echo "Directory drive_c/windows/winsxs not found"
	echo ""
fi


if [ -d "windows" ]; then
	echo "Trimming drive_c/windows:"

	mv windows windows_tmp
	mkdir windows

	mv windows_tmp/Fonts windows
	mv windows_tmp/resources windows
	mv windows_tmp/system32 windows
	mv windows_tmp/syswow64 windows
	mv windows_tmp/winsxs windows
	mv windows_tmp/profiles windows

	rm -r windows_tmp
	
	echo ""
else
	echo "Directory drive_c/windows not found"
	echo ""
fi


echo "Trimming drive_c/Program Files*:"

rm -r "Program Files/"*
rm -r "Program Files (x86)/"*

echo ""


cd "$WORKINGDIR"
[ ! -d "Contents/SharedSupport/wine" ] && echo "Error: Directory Contents/SharedSupport/wine not found, aborting..." && exit 1
cd Contents/SharedSupport/wine/


echo "Removing gecko and mono:"

rm -r share/wine/gecko/*
rm -r share/wine/mono/*

echo ""


if [ -d "lib/wine/i386-windows" ]; then
	echo "Trimming lib/wine/i386-windows:" #WS11WineCX64Bit22.1.1-8
	
	rm -r lib/wine/i386-windows/*
	
	cd lib/wine/i386-windows

	if [ -f "../../../../../../drive_c/windows/syswow64/ntdll.dll" ]; then
		ln -s ../../../../../../drive_c/windows/syswow64/* .
	elif [ -f "../../../../../../drive_c/windows/system32/ntdll.dll" ]; then
		ln -s ../../../../../../drive_c/windows/system32/* .
	fi
	
	cd ../../..
	
	echo ""
elif [[ -f "lib/wine/ntdll.dll" || -f "lib/wine/kernelbase.dll" ]]; then	
	echo "Trimming lib/wine:" #WS11WineCX64Bit21.2.0-1 and below
	
	rm -r lib/wine/*
	
	cd lib/wine

	if [ -f "../../../../../drive_c/windows/syswow64/ntdll.dll" ]; then
		ln -s ../../../../../drive_c/windows/syswow64/* .
	elif [ -f "../../../../../drive_c/windows/system32/ntdll.dll" ]; then
		ln -s ../../../../../drive_c/windows/system32/* .
	fi
	
	cd ../..
	
	echo ""
else
	echo "Directory lib/wine/i386-windows not found"
	echo ""
fi


if [ -d "lib/wine/x86_32on64-unix" ]; then
	echo "Trimming lib/wine/x86_32on64-unix:" #WS11WineCX64Bit22.1.1-8
	
	cd lib/wine

	mv x86_32on64-unix x86_32on64-unix_tmp
	mkdir x86_32on64-unix

	mv x86_32on64-unix_tmp/dnsapi.so x86_32on64-unix
	mv x86_32on64-unix_tmp/ntdll.so x86_32on64-unix
	mv x86_32on64-unix_tmp/opengl32.dll.so x86_32on64-unix
	mv x86_32on64-unix_tmp/ws2_32.so x86_32on64-unix
	mv x86_32on64-unix_tmp/nsiproxy.so x86_32on64-unix
	mv x86_32on64-unix_tmp/win32u.dll.so x86_32on64-unix
	mv x86_32on64-unix_tmp/user32.so x86_32on64-unix
	mv x86_32on64-unix_tmp/bcrypt.so x86_32on64-unix
	mv x86_32on64-unix_tmp/crypt32.so x86_32on64-unix
	mv x86_32on64-unix_tmp/netapi32.so x86_32on64-unix
	mv x86_32on64-unix_tmp/secur32.so x86_32on64-unix
	
	mv x86_32on64-unix_tmp/mountmgr.so x86_32on64-unix
	mv x86_32on64-unix_tmp/winebus.so x86_32on64-unix
	
	mv x86_32on64-unix_tmp/winspool.so x86_32on64-unix
	mv x86_32on64-unix_tmp/winecoreaudio.so x86_32on64-unix
	mv x86_32on64-unix_tmp/winemac.drv.so x86_32on64-unix
	
	mv x86_32on64-unix_tmp/libwine.1.0.dylib x86_32on64-unix
	mv x86_32on64-unix_tmp/libwine.1.dylib x86_32on64-unix

	rm -r x86_32on64-unix_tmp
	
	cd ../..
	
	echo ""
elif [ -d "lib32on64/wine" ]; then
	echo "Trimming lib32on64/wine:" #WS11WineCX64Bit21.2.0-1 and below
	
	cd lib32on64
	
	mv wine wine_tmp
	mkdir wine

	mv wine_tmp/*.dll wine

	mv wine_tmp/dnsapi.so wine
	mv wine_tmp/ntdll.so wine
	mv wine_tmp/opengl32.so wine
	mv wine_tmp/ws2_32.so wine
	mv wine_tmp/user32.so wine
	mv wine_tmp/bcrypt.so wine
	mv wine_tmp/crypt32.so wine
	mv wine_tmp/netapi32.so wine
	mv wine_tmp/secur32.so wine

	mv wine_tmp/dnsapi.dll.so wine
	mv wine_tmp/ntdll.dll.so wine
	mv wine_tmp/opengl32.dll.so wine
	mv wine_tmp/ws2_32.dll.so wine
	mv wine_tmp/user32.dll.so wine
	mv wine_tmp/bcrypt.dll.so wine
	mv wine_tmp/crypt32.dll.so wine
	mv wine_tmp/netapi32.dll.so wine
	mv wine_tmp/secur32.dll.so wine
	
	mv wine_tmp/mountmgr.sys.so wine
	mv wine_tmp/winebus.sys.so wine
	
	mv wine_tmp/winspool.drv.so wine
	mv wine_tmp/winecoreaudio.drv.so wine
	mv wine_tmp/winemac.drv.so wine
	mv wine_tmp/winejoystick.drv.so wine
	
	mv wine_tmp/hidclass.sys wine
	mv wine_tmp/ndis.sys wine
	mv wine_tmp/winehid.sys wine
	
	mv wine_tmp/kernel32.so wine
	mv wine_tmp/msvcrt.so wine
	mv wine_tmp/advapi32.so wine
	mv wine_tmp/iphlpapi.so wine
	mv wine_tmp/shell32.so wine
	mv wine_tmp/gdi32.so wine
	mv wine_tmp/wow64cpu.so wine
	mv wine_tmp/crtdll.so wine
	mv wine_tmp/ucrtbase.so wine
	mv wine_tmp/dbghelp.so wine
	mv wine_tmp/wldap32.so wine
	mv wine_tmp/dinput.so wine
	mv wine_tmp/dinput8.so wine
	
	mv wine_tmp/kernel32.dll.so wine
	mv wine_tmp/msvcrt.dll.so wine
	mv wine_tmp/advapi32.dll.so wine
	mv wine_tmp/iphlpapi.dll.so wine
	mv wine_tmp/shell32.dll.so wine
	mv wine_tmp/gdi32.dll.so wine
	mv wine_tmp/wow64cpu.dll.so wine
	mv wine_tmp/crtdll.dll.so wine
	mv wine_tmp/ucrtbase.dll.so wine
	mv wine_tmp/dbghelp.dll.so wine
	mv wine_tmp/wldap32.dll.so wine
	mv wine_tmp/dinput.dll.so wine
	mv wine_tmp/dinput8.dll.so wine
	
	rm -r wine_tmp
	
	cd wine
	
	ln -s ../../lib/wine/*.exe .
	
	cd ../..
	
	echo ""
else
	echo "Directory lib/wine/x86_32on64-unix not found"
	echo ""
fi


if [ -d "lib/wine/x86_64-unix" ]; then
	echo "Trimming lib/wine/x86_64-unix:" #WS11WineCX64Bit22.1.1-8
	
	cd lib/wine

	mv x86_64-unix x86_64-unix_tmp
	mkdir x86_64-unix

	mv x86_64-unix_tmp/dnsapi.so x86_64-unix
	mv x86_64-unix_tmp/libwine.1.0.dylib x86_64-unix
	mv x86_64-unix_tmp/libwine.1.dylib x86_64-unix
	mv x86_64-unix_tmp/mountmgr.so x86_64-unix
	mv x86_64-unix_tmp/nsiproxy.so x86_64-unix
	mv x86_64-unix_tmp/ntdll.so x86_64-unix
	mv x86_64-unix_tmp/win32u.dll.so x86_64-unix
	mv x86_64-unix_tmp/winebus.so x86_64-unix
	mv x86_64-unix_tmp/winemac.drv.so x86_64-unix
	mv x86_64-unix_tmp/ws2_32.so x86_64-unix

	rm -r x86_64-unix_tmp
	
	cd ../..
	
	echo ""
else
	echo "Directory lib/wine/x86_64-unix not found"
	echo ""
fi


if [ -d "lib/wine/x86_64-windows" ]; then
	echo "Trimming lib/wine/x86_64-windows:" #WS11WineCX64Bit22.1.1-8
	
	cd lib/wine
	
	mv x86_64-windows x86_64-windows_tmp
	mkdir x86_64-windows
	
	mv x86_64-windows_tmp/ndis.sys x86_64-windows
	mv x86_64-windows_tmp/winehid.sys x86_64-windows
	mv x86_64-windows_tmp/hidclass.sys x86_64-windows
	mv x86_64-windows_tmp/mountmgr.sys x86_64-windows
	mv x86_64-windows_tmp/winebus.sys x86_64-windows
	mv x86_64-windows_tmp/hidparse.sys x86_64-windows
	mv x86_64-windows_tmp/nsiproxy.sys x86_64-windows
	
	rm -r x86_64-windows_tmp
	
	cd x86_64-windows
	
	ln -s ../../../../../../drive_c/windows/system32/* .
	
	cd ../../..
	
	echo ""
elif [ -d "lib64/wine" ]; then
	echo "Trimming lib64/wine:" #WS11WineCX64Bit21.2.0-1 and below
	
	cd lib64

	mv wine wine_tmp
	mkdir wine

	mv wine_tmp/ndis.sys wine
	mv wine_tmp/winehid.sys wine
	mv wine_tmp/hidclass.sys wine
	mv wine_tmp/mountmgr.sys.so wine
	mv wine_tmp/winebus.sys.so wine
	
	mv wine_tmp/ntdll.so wine
	mv wine_tmp/ntdll.dll.so wine
	mv wine_tmp/winemac.drv.so wine
	mv wine_tmp/ws2_32.dll.so wine
	mv wine_tmp/iphlpapi.dll.so wine
	mv wine_tmp/shell32.dll.so wine
	mv wine_tmp/ucrtbase.so wine
	mv wine_tmp/user32.so wine
	mv wine_tmp/kernel32.dll.so wine
	
	mv wine_tmp/msvcrt.so wine
	mv wine_tmp/gdi32.so wine
	
	mv wine_tmp/wow64cpu.dll.so wine
	mv wine_tmp/advapi32.dll.so wine
	mv wine_tmp/gdi32.dll.so wine
	mv wine_tmp/msvcrt.dll.so wine
	mv wine_tmp/user32.dll.so wine
	
	rm -r wine_tmp
	
	cd wine
	
	ln -s ../../../../../drive_c/windows/system32/* .
	
	cd ../..
	
	echo ""
else
	echo "Directory lib/wine/x86_64-windows not found"
	echo ""
fi
