' Copyright (c) 2021 hyoromo
' Released under the MIT license
' https://opensource.org/licenses/mit-license.php

' サブアカウント作成件数を指定。0を指定すると作成しない
Dim subAccountCount
subAccountCount = 2

Dim laundherFolderName
launcherFolderName = "LauncherScripts\"

' 全サブアカウントのVRChat起動スクリプト作成
Set objFile = CreateObject("Scripting.FileSystemObject")
Set openRunAllFile = objFile.OpenTextFile(launcherFolderName & "AllSubAccount.vbs", 2, True)
openRunAllFile.WriteLine "Set objShell = CreateObject(""WScript.Shell"")"

Dim folderPath
folderPath = objFile.getParentFolderName(WScript.ScriptFullName) & "\\LauncherScripts"

' アカウント毎の起動スクリプト作成
Dim index
index = 1
Do While index <= subAccountCount
    Set openFile = objFile.OpenTextFile(launcherFolderName & "SubAccount" & index & ".vbs", 2, True)
    openFile.WriteLine "Set objShell = CreateObject(""WScript.Shell"")"
    openFile.WriteLine "Set objExec = objShell.Exec("""""""" & objShell.RegRead(""HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 438100\InstallLocation"") & ""\VRChat.exe""""""" & " & "" " & Wscript.Arguments(0) & """ & "" --no-vr --enable-debug-gui --enable-sdk-log-levels --enable-udon-debug-logging --profile=" & index & """)"
    openFile.Close
    
    openRunAllFile.WriteLine "objShell.Run """ & folderPath & "\\SubAccount" & index & ".vbs"""
    
    Set openFile = Nothing
    index = index + 1
Loop


openRunAllFile.Close
Set openRunAllFile = Nothing
Set objFile = Nothing

' 起動オプションの設定
Dim opt
Dim argIndex
argIndex = 0
Do While argIndex < Wscript.Arguments.Count
    opt = opt & " " & Wscript.Arguments(argIndex)
    argIndex = argIndex + 1
Loop

' メインアカウントでVRChatクライアント起動
Set objShell = CreateObject("WScript.Shell")
Set objExec = objShell.Exec("""" & objShell.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 438100\InstallLocation") & "\VRChat.exe" & """ " & opt)
