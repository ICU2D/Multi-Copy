#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
IniRead, FirstStart, settings.ini, Data, FirstStart, 0
If(FirstStart = 0)
{
MsgBox, Thanks for using this program!`nYou can the key to open the GUI settings.ini`nDefault keybinds:`nCTRL+K Stops this program`nCTRL+ALT+o Opens the GUI`nCTRL+ALT+1-3 Pastes`nCTRL+ALT+Q-W-E Copies
IniWrite, 1, settings.ini, Data, FirstStart
}
IniRead, OpenGUI, settings.ini, Hotkeys, OpenGUI, ^!o
MsgBox, To open the GUI press %OpenGUI%
Hotkey, %OpenGUI%, Button
Return
Button:
Run Settings.ahk
Return
^k::ExitApp
^!1::
IniRead, FirstInput, settings.ini, Inputs, FirstInput, %A_Space%
Send, %FirstInput%
Return
^!2::
IniRead, SecondInput, settings.ini, Inputs, SecondInput, %A_Space%
Send, %SecondInput%
Return
^!3::
IniRead, ThirdInput, settings.ini, Inputs, ThirdInput, %A_Space%
Send, %ThirdInput%
Return