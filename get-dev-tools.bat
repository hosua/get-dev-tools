@echo Press enter to start getting dev-tools
@echo Before running, make sure winget (app installer) is installed from the Microsoft store.
@echo Please also make sure you're running this in administrator mode, or PATHs won't be added!
pause
@echo Installing Firefox
cmd /c winget install -e --id Mozilla.Firefox
@echo Installing Git
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

@echo Adding vim and msys2 to PATH
cmd /c setx /M path "%path%;C:\msys64\mingw64\bin;C:\Program Files (x86)\Vim\vim82"
@echo All done!
pause

