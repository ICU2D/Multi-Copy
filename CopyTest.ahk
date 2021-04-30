#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%
^k::ExitApp
^!1::
IniRead, FirstInput, settings.ini, Inputs, FirstInput, %A_Space%
Send, %FirstInput%
return
^!2::
IniRead, SecondInput, settings.ini, Inputs, SecondInput, %A_Space%
Send, %SecondInput%
return
^!3::
IniRead, ThirdInput, settings.ini, Inputs, ThirdInput, %A_Space%
Send, %ThirdInput%
return
^!4::Run Settings.ahk