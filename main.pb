IncludeFile "db.pb"

Enumeration
  #Window_0
  #Window_1
EndEnumeration

Enumeration
  #String_0
  #String_1
  #Button_0
  #Button_1
  #Text_0
  #Text_1
EndEnumeration

Procedure CreateWindow(x, y, ParentID = 0, Flag = #PB_Window_SystemMenu | #PB_Window_SizeGadget | #PB_Window_ScreenCentered | #PB_Window_NoActivate)
  OpenWindow(#Window_0, x, y, 800, 600, "Mech-logia_Login", Flag)
  Button_0 = ButtonGadget(#Button_0, 30, 180, 100, 25, "Connect")
  Button_1 = ButtonGadget(#Button_1, 180, 180, 100, 25, "Cancel")
  Text_0 = TextGadget(#Text_0, 40, 40, 100, 30, "Username:")
  Text_1 = TextGadget(#Text_1, 40, 90, 100, 30, "Password:")
  SetWindowTitle(#Window_0, "Mech-logia_Login")
  String_0 = StringGadget(#String_0, 150, 40, 130, 25, "")
  String_1 = StringGadget(#String_1, 150, 90, 130, 25, "")
  ProcedureReturn #Window_0
EndProcedure

Window_0 = CreateWindow(300, 300)

Repeat
  Select WaitWindowEvent()
    Case #PB_Event_Gadget
      Select EventGadget()
        Case #Button_0
          SetGadgetText(#String_0, "BUTTON 1 PRESSED!!!")
        Case #Button_1
          CreateWindow(#Window_1, 800, 600, #PB_Window_SystemMenu | #PB_Window_ScreenCentered)
          Panel_0 = PanelGadget(#PB_Any, 0, 0, 600, 400)
          AddGadgetItem(Panel_0, -1, "Tab 1")
          WebView_0 = WebGadget(#PB_Any, 0, -2, 600, 380, "http://localhost/")
          AddGadgetItem(Panel_0, -1, "dfg")
          AddGadgetItem(Panel_0, -1, "dfghj")
          AddGadgetItem(Panel_0, -1, "kh,hs")
          CloseGadgetList()
      EndSelect
      
      
    Case #PB_Event_CloseWindow
      Select EventWindow()
        Case #Window_0
          CloseWindow(#Window_0)
          End
        Case #Window_1
          CloseWindow(#Window_1)
      EndSelect
  EndSelect
Until False

; IDE Options = PureBasic 6.01 LTS (Windows - x64)
; CursorPosition = 47
; FirstLine = 30
; Folding = -
; Optimizer
; EnableAsm
; EnableThread
; EnableXP
; Executable = Testing.exe
; EnablePurifier