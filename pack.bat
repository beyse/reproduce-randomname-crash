python -m PyInstaller --noconfirm ^
--hidden-import randomname ^
--name RandomNameGenerator ^
main.py

:: copy the wordlists to the expected location relative to the exe
set source=.\thirdparty\wordlists
set destination=.\dist\RandomNameGenerator\randomname\wordlists
mkdir %destination%
xcopy %source% %destination% /E /y