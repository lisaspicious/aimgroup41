@echo off

title Configure X2go client
mode con cols=78 lines=32
color 17

echo Add X2go session definition to registry
regedit "%userprofile%\Desktop\aimpm41\aimpm41.reg"

echo Add path to private key file to x2go session definition
reg add "HKEY_CURRENT_USER\Software\Obviously Nice\x2goclient\sessions\20230501000000041" /f /v "sshproxykeyfile" /d "%userprofile%\Desktop\aimpm41\aimpm41.key"

