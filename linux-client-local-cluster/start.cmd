@echo off

:: change directory
pushd %~dp0

:: set peer IP
IF [%1] == [] (
    set KUBERNETES_PUBLIC_IP=192.168.108.230
) ELSE (
    set KUBERNETES_PUBLIC_IP=%1
)

:: start RTI shapes demo
cmd.exe /c "C:\Users\Andreas\Downloads\Development\rti-connext-dds-pro-6.0.0.0\bin\rtishapesdemo.bat" -workspaceFile KUBERNETES_WORKSPACE.xml

:: restore directory
popd
