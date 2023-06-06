UseSQLiteDatabase()



 If OpenDatabase(0, "Mech-Logia.sqlite", "", "")
    Debug "Connecté à Mech-Logia.sqlite"
   EndIf


Procedure closewindow2Handler()
    Debug "Close window 2"
    
End  
  EndProcedure



Debug "Evènement : Menu -Test-"
OpenWindow(2, 0, 0, 800, 600, "Calendrier WO", #PB_Window_MinimizeGadget | #PB_Window_ScreenCentered | #PB_Window_BorderLess)

   
   r=GetMenuItemCount_(GetSystemMenu_(WindowID(2),#False)) ; Get number of menu items.
RemoveMenu_(GetSystemMenu_(WindowID(2),0),r-1,#MF_BYPOSITION) ; Disable "X" button.
RemoveMenu_(GetSystemMenu_(WindowID(2),0),r-2,#MF_BYPOSITION) ; Remove separator.
DrawMenuBar_(WindowID(2)) ; Redraw the window's menu bar to reflect the changes.
CreateMenu(3, WindowID(2))  ; la création du menu commence ici....
      MenuTitle("Menu")
                       
        MenuItem(200, "Fermer")
   CalendarGadget(960, 0, 0, 600, 600)

   BindMenuEvent(3, 200, @closewindow2Handler())
   
   
   Repeat : Until WaitWindowEvent()=#PB_Event_CloseWindow
; IDE Options = PureBasic 6.02 LTS (Windows - x64)
; CursorPosition = 2
; Folding = -
; EnableXP
; DPIAware
; Executable = Mech-Logia.exe