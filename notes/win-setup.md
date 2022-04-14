# Windows Setup

## Create deamon script

```batch
rem Sets HOME for current shell
set HOME=%APPDATA%

rem Clean previous server file info first
del /q ""%HOME%\\.emacs.d\\server\\*""
%PATH_TO_EMACS_BIN%\runemacs.exe --daemon -c ""(setq default-directory "~/")""
```

## Create shortcut

```batch
%PATH_TO_EMACS_BIN%\emacsclientw.exe -n -c -a %PATH_TO_EMACS_BIN%runemacs.exe
```



