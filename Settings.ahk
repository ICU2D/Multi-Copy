#NoEnv
; #Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

Gui, Add, Tab2,, ^!1|^!2|^!3
Gui, Add, Edit, vFirstInput r1
Gui, Tab, 2
Gui, Add, Edit, vSecondInput r1
Gui, Tab, 3
Gui, Add, Edit, vThirdInput r3 
Gui, Tab  ; i.e. subsequently-added controls will not belong to the tab control.
Gui, Add, Button, default xm, OK  ; xm puts it at the bottom left corner.
Gui, Show
Return
ButtonOK:
GuiClose:
GuiEscape:
Gui, Submit
MsgBox, 4,, You entered:`n1: %FirstInput%`n2: %SecondInput%`n3: %ThirdInput%`nSave these settings?
IfMsgBox Yes
    SaveMessage = Saved
    If(FirstInput != ""){
        IniWrite, %FirstInput%, settings.ini, Inputs, FirstInput
        SaveMessage = %SaveMessage% 1. "%FirstInput%"
    }
    If(SecondInput != ""){
        IniWrite, %SecondInput%, settings.ini, Inputs, SecondInput
        SaveMessage = %SaveMessage% 2. "%SecondInput%"
    }
    If(ThirdInput != ""){
        IniWrite, %ThirdInput%, settings.ini, Inputs, ThirdInput
        SaveMessage = %SaveMessage% 3. "%ThirdInput%"
    }
    If(SaveMessage = "Saved")
        MsgBox Nothing Saved.
    Else IfMsgBox Yes
        MsgBox Test 3 %SaveMessage%
IfMsgBox No
    MsgBox Nothing saved.
ExitApp
