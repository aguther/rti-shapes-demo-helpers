@echo off

:: change directory
pushd %~dp0

:: set peer IP
set AZURE_PUBLIC_IP=172.30.0.11

:: start routing service
start /min "RTI Routing Service" "C:\Program Files\rti_connext_dds-5.3.1\bin\rtiroutingservice.bat" -cfgName rti-shapes-demo -verbosity 3

:: start RTI shapes demo
cmd.exe /c "C:\Program Files\rti_connext_dds-5.3.1\bin\rtishapesdemo.bat" -domainId 0

:: restore directory
popd
