#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^k::ExitApp
^!1::
IniRead, FirstInput, settings.ini, Inputs, FirstInput, %A_Space%
Send, %FirstInput%
return
^!2::Run Settings.ahk
^!f::
MsgBox, 4,, Would you like to continue? (press Yes or No)
IfMsgBox Yes
    MsgBox You pressed Yes.
IfMsgBox No
    MsgBox You pressed No.
return
