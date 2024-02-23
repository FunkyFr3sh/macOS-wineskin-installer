#!/bin/sh

# The following script will reduce the filesize of a clean wineskin wrapper
# This script is similar to trimWrapper.sh, only that it tries to be a bit more universal and works with newer applications too


echo ""

WORKINGDIR=$(cd "$(dirname "$BASH_SOURCE")"; cd -P "$(dirname "$(readlink "$BASH_SOURCE" || echo .)")"; pwd)
cd "$WORKINGDIR"
[ ! -d "drive_c/windows/system32" ] && echo "Error: Script must be placed inside of a wineskin wrapped app, aborting..." && exit 1


if [ -d "Contents/Frameworks" ]; then
	echo "Trimming Contents/Frameworks:"
	
	cd Contents

	rm Frameworks/libicu*.dylib
    rm Frameworks/libMoltenVK*.dylib
	
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

cd "$WORKINGDIR"
[ ! -d "Contents/SharedSupport/wine" ] && echo "Error: Directory Contents/SharedSupport/wine not found, aborting..." && exit 1
cd Contents/SharedSupport/wine/


echo "Removing gecko and mono:"

rm -r share/wine/gecko/*
rm -r share/wine/mono/*

echo ""


if [ -d "lib/wine/i386-windows" ]; then
	echo "Trimming lib/wine/i386-windows:" #WS11WineCX64Bit22.1.1-8
	
	cd lib/wine/i386-windows

	if [ -f "../../../../../../drive_c/windows/syswow64/ntdll.dll" ]; then
		ln -sf ../../../../../../drive_c/windows/syswow64/* .
	elif [ -f "../../../../../../drive_c/windows/system32/ntdll.dll" ]; then
		ln -sf ../../../../../../drive_c/windows/system32/* .
	fi
	
	cd ../../..
	
	echo ""
elif [[ -f "lib/wine/ntdll.dll" || -f "lib/wine/kernelbase.dll" ]]; then	
	echo "Trimming lib/wine:" #WS11WineCX64Bit21.2.0-1 and below
	
	cd lib/wine

	if [ -f "../../../../../drive_c/windows/syswow64/ntdll.dll" ]; then
		ln -sf ../../../../../drive_c/windows/syswow64/* .
	elif [ -f "../../../../../drive_c/windows/system32/ntdll.dll" ]; then
		ln -sf ../../../../../drive_c/windows/system32/* .
	fi
	
	cd ../..
	
	echo ""
else
	echo "Directory lib/wine/i386-windows not found"
	echo ""
fi


if [ -d "lib/wine/x86_64-windows" ]; then
	echo "Trimming lib/wine/x86_64-windows:" #WS11WineCX64Bit22.1.1-8
	
	cd lib/wine/x86_64-windows

	ln -sf ../../../../../../drive_c/windows/system32/* .
	
	cd ../../..
	
	echo ""
elif [ -d "lib64/wine" ]; then
	echo "Trimming lib64/wine:" #WS11WineCX64Bit21.2.0-1 and below
	
	cd lib64/wine
	
	ln -sf ../../../../../drive_c/windows/system32/* .
	
	cd ../..
	
	echo ""
else
	echo "Directory lib/wine/x86_64-windows not found"
	echo ""
fi
