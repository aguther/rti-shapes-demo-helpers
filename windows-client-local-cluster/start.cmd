@echo off

:: change directory
pushd %~dp0

:: set peer IP
IF [%1] == [] (
    set AZURE_PUBLIC_IP=192.168.8.210
) ELSE (
    set AZURE_PUBLIC_IP=%1
)

:: start routing service
start /min "RTI Routing Service" "C:\Users\Andreas\Downloads\Development\dds\rti-connext-dds-pro-6.0.0.0\bin\rtiroutingservice.bat" -cfgName rti-shapes-demo -verbosity 3

:: start RTI shapes demo
cmd.exe /c "C:\Users\Andreas\Downloads\Development\dds\rti-connext-dds-pro-6.0.0.0\bin\rtishapesdemo.bat" -domainId 0

:: restore directory
popd
