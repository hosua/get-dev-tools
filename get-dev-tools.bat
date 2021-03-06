@echo off
@echo Press enter to start getting dev-tools
@echo Before running, make sure winget (app installer) is installed from the Microsoft store.
@echo Make sure you're running this in administrator mode, or paths won't be added.
pause

@echo Installing Firefox
cmd /c winget install -e --id Mozilla.Firefox
@echo Opening firefox plugin URLs

"C:\Program Files\Mozilla Firefox\firefox" "https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/"
"C:\Program Files\Mozilla Firefox\firefox" "https://addons.mozilla.org/en-US/firefox/addon/dark-theme-for-firefox/"
"C:\Program Files\Mozilla Firefox\firefox" "https://addons.mozilla.org/en-US/firefox/addon/darkreader/"
"C:\Program Files\Mozilla Firefox\firefox" "https://addons.mozilla.org/en-US/firefox/addon/return-youtube-dislikes/"

:: Maybe add a yes/no prompt for each program being installed? Batch is kinda shitty and makes it annoying to do
:: though so fuck that.
   
echo Installing Git
cmd /c winget install --id Git.Git -e --source winget
@echo Installing wget
cmd /c winget install -e --id GnuWin32.Wget
@echo Installing VSCode
cmd /c winget install -e --id Microsoft.VisualStudioCode
@echo Installing Python
cmd /c winget install -e --id Python.Python.3
@echo Installing msys2 
cmd /c winget install -e --id msys2.msys2
@echo Installing vim
cmd /c winget install -e --id vim.vim

@echo Adding vim, vscode and msys2 to PATH
cmd /c setx /M path "%path%;C:\msys64\mingw64\bin;C:\Program Files\Vim\vim82;C:\Program Files (x86)\Vim\vim82;%USERPROFILE%\AppData\Local\Programs\Microsoft VS Code;"

@echo Deleting unwanted shortcuts
del %PUBLIC%\Desktop\*Edge*
del %PUBLIC%\Desktop\*gVim*
del %USERPROFILE%\Desktop\*gVim*

C:\msys64\msys2.exe

@echo If msys2 msys didn't open by itself, open it now.
@echo Enter the command below into the msys2 terminal.
@echo pacman -S --needed base-devel mingw-w64-x86_64-toolchain
@echo After this is complete, you are finished. Reopen a cmd/powershell and confirm g++ --version and vim --version both work
pause

