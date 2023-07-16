## macOS Installer
**macOS 10.13 (High Sierra) or later**

<details>
  <summary>(TODO) How to wrap the Windows .exe into a Mac .app with WineSkin</summary>

>
> **Prerequisites**
> 
> 1. *[Download & Install]* Wineskin Wrapper ([https://github.com/Gcenx/WineskinServer](https://github.com/Gcenx/WineskinServer))
> 
>
> **Step By Step**
>
> - TODO
>
</details>

<details>
  <summary>Building the PKG Installer into a DMG</summary>

>
> **Prerequisites**
> 
> 1. *[Download & Install]* Mac "Packages" app ([http://s.sudre.free.fr/Software/Packages/about.html](http://s.sudre.free.fr/Software/Packages/about.html))
> 2. *[Download & Install]* Homebrew, The Missing Package Manager for macOS ([https://brew.sh](https://brew.sh))
> 3. `brew install create-dmg` ([https://github.com/create-dmg/create-dmg](https://github.com/create-dmg/create-dmg))
> 
> 
> **Step By Step**
>
> 1. Clone/Download this Github Repo
>
> 2. Place the built Wineskin wrapper .app here: "./Mac/_builds/app/MyCoolWrapper.app"
>
> 3. Open `./Mac/buildPackageDMG.sh` and set APP_NAME to the filename of your wrapper
>
> 4. Run the `./Mac/buildPackageDMG.sh` script in the terminal and it will build a .pkg installer file here: `./Mac/_builds/pkg/` and a distributable dmg file here: `./Mac/_builds/dmg/`
>
</details>

<details>
  <summary>Installing the app </summary>

>
> 1. Open the **DMG Volume Icon** on your desktop
> 
>
> 2. Open the **.pkg** file by Control-Click and choosing "Open" in the contextual menu
> 
>
</details>


## Thanks to Spiff for creating the original scripts
