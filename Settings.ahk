#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
Gui, Add, Tab2,, 1|2|3|Config
IniRead, FirstInput, settings.ini, Inputs, FirstInput, %A_Space%
Gui, Add, Text,, Currently set to:`n%FirstInput%
Gui, Add, Edit, vFirstInput r1
Gui, Tab, 2
IniRead, SecondInput, settings.ini, Inputs, SecondInput, %A_Space%
Gui, Add, Text,, Currently set to:`n%SecondInput%
Gui, Add, Edit, vSecondInput r2
Gui, Tab, 3
IniRead, ThirdInput, settings.ini, Inputs, ThirdInput, %A_Space%
Gui, Add, Text,, Currently set to:`n%ThirdInput%
Gui, Add, Edit, vThirdInput r7
Gui, Tab, Config
Gui, Add, Text,, Open GUI Hotkey`n^ CTRL`n! ALT`n+ SHIFT
IniRead, OpenGUI, settings.ini, Hotkeys, OpenGUI, ^!o
Gui, Add, Text,, Currently set to:`n%OpenGUI%
Gui, Add, Hotkey, vHotkey
Gui, Tab
Gui, Add, Button, default xm, Ok
Gui, Show
Return
ButtonOK:
GuiClose:
GuiEscape:
Gui, Submit
MsgBox, 4,, You entered:`n1: %FirstInput%`n2: %SecondInput%`n3: %ThirdInput%`nHotkey: %Hotkey%`nSave these settings?
IfMsgBox Yes
    SaveMessage = Saved
    If(FirstInput != ""){
        IniWrite, %FirstInput%, settings.ini, Inputs, FirstInput
        SaveMessage = %SaveMessage%`n1. "%FirstInput%"
    }
    If(SecondInput != ""){
        IniWrite, %SecondInput%, settings.ini, Inputs, SecondInput
        SaveMessage = %SaveMessage%`n2. "%SecondInput%"
    }
    If(ThirdInput != ""){
        IniWrite, %ThirdInput%, settings.ini, Inputs, ThirdInput
        SaveMessage = %SaveMessage%`n3. "%ThirdInput%"
    }
    If(Hotkey != ""){
        IniWrite, %Hotkey%, settings.ini, Hotkeys, OpenGUI
        SaveMessage = %SaveMessage%`nGUI Hotkey: %Hotkey%
    }
    If(SaveMessage = "Saved")
        MsgBox Nothing Saved.
    Else IfMsgBox Yes
        MsgBox %SaveMessage%
IfMsgBox No
    MsgBox Nothing saved.
ExitApp