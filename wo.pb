

UseSQLiteDatabase()


Enumeration
      #PageWO
      #listWOARCH
      #listNote2
      #listNote3
      #listNote4
      #job
      #listNote
      #list
      #mysql = 0
      #close
      #File
EndEnumeration

 Procedure closewindowHandler()
    Debug "End program WO"
    
      End
EndProcedure


  Procedure savenotebuttonHandler()
    Debug "editor window saved"
     text1$ = GetGadgetText(#listNote3) + ".txt"
    OpenFile(0, text1$)    ; Ouvre un fichier existant ou en crée un nouveau s'il n'existait pas
    FileSeek(0, Lof(0))
    WriteString(0, "" + GetGadgetText(117))
    CloseFile(0)

  
  EndProcedure

  Procedure closewindowjobHandler()
    Debug "job window closed"
   CloseWindow(#job)
  
  EndProcedure
   
    Procedure openwindowjobHandler()
    Debug "editor gadget reload!"
   OpenWindow(#job, 0, 0, 800, 600, "Job A ~ Z", #PB_Window_MinimizeGadget | #PB_Window_ScreenCentered | #PB_Window_BorderLess)
   r=GetMenuItemCount_(GetSystemMenu_(WindowID(#job),#False)) ; Get number of menu items.
RemoveMenu_(GetSystemMenu_(WindowID(#job),0),r-1,#MF_BYPOSITION) ; Disable "X" button.
RemoveMenu_(GetSystemMenu_(WindowID(#job),0),r-2,#MF_BYPOSITION) ; Remove separator.
DrawMenuBar_(WindowID(#job)) ; Redraw the window's menu bar to reflect the changes.
CreateMenu(2, WindowID(#job))  ; la création du menu commence ici....
      MenuTitle("Menu")
                       
        MenuItem(200, "Fermer")

   ;///////////////////////////////////////////Wo job space///////////
      TextGadget(216, 0, 280, 800, 20, "Liste des travaux", #PB_Text_Border | #PB_Text_Center)
     
      If ScrollAreaGadget(#PageWO, 0, 300, 800, 300, 800, 2600, 150) 
        
      StringGadget(124, 0 , 0, 800, 100, "Travaux A")
      StringGadget(125, 0 , 100, 800, 100, "Travaux B")
      StringGadget(126, 0 , 200, 800, 100, "Travaux C")
      StringGadget(127, 0 , 300, 800, 100, "Travaux D")
      StringGadget(128, 0 , 400, 800, 100, "Travaux E")
      StringGadget(129, 0 , 500, 800, 100, "Travaux F")
      StringGadget(130, 0 , 600, 800, 100, "Travaux G")
      StringGadget(131, 0 , 700, 800, 100, "Travaux H")
      StringGadget(132, 0 , 800, 800, 100, "Travaux I")
      StringGadget(133, 0 , 900, 800, 100, "Travaux J")
      StringGadget(134, 0 , 1000, 800, 100, "Travaux K")
      StringGadget(135, 0 , 1100, 800, 100, "Travaux L")
      StringGadget(136, 0 , 1200, 800, 100, "Travaux M")
      StringGadget(137, 0 , 1300, 800, 100, "Travaux N")
      StringGadget(138, 0 , 1400, 800, 100, "Travaux O")
      StringGadget(139, 0 , 1500, 800, 100, "Travaux P")
      StringGadget(140, 0 , 1600, 800, 100, "Travaux Q")
      StringGadget(141, 0 , 1700, 800, 100, "Travaux R")
      StringGadget(142, 0 , 1800, 800, 100, "Travaux S")
      StringGadget(143, 0 , 1900, 800, 100, "Travaux T")
      StringGadget(144, 0 , 2000, 800, 100, "Travaux U")
      StringGadget(145, 0 , 2100, 800, 100, "Travaux V")
      StringGadget(146, 0 , 2200, 800, 100, "Travaux W")
      StringGadget(147, 0 , 2300, 800, 100, "Travaux X")
      StringGadget(148, 0 , 2400, 800, 100, "Travaux Y")
      StringGadget(149, 0 , 2500, 800, 100, "Travaux Z")
      
    
     EndIf
    
    
 
    BindMenuEvent(2, 200, @closewindowjobHandler())
  
  EndProcedure
   
     Procedure newnotebuttonHandler()
    Debug "editor gadget reload!"
   EditorGadget(117, 425, 220, 600, 300)
  
  EndProcedure






Procedure aWOordertHandler()
    ;//////////////////////<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    If OpenDatabase(0, "Mech-Logia.sqlite", "", "")
      Debug "Connecté à Mech-Logia.sqlite"
      
   
    
      DatabaseQuery (0, "SELECT * FROM Workorder")
   ; For i = 0 To 65000
      ;AddGadgetItem(#list, i, "Ancien élément "+Str(i))
     ; SetGadgetItemData(#list, i, i)
    ;Next i
      Debug ("Ouverture du work order " + GetGadgetText(#list))
        
      SetActiveWindow(1)
      
           ButtonGadget(401, 0, 0, 215, 20,"Liste Historique WO par *VIN*")
           ListViewGadget(#listWOARCH, 0, 20, 215, 200)
           If DatabaseQuery (0, "SELECT * FROM Workorder")
              While NextDatabaseRow(#mySql)       
                   AddGadgetItem(#listWOARCH, -1, "Wo No: " + GetDatabaseString(#mySql, 0))
                   
              Wend 
              FinishDatabaseQuery(#mySql)
   
              success = #True
           EndIf
           
         
        EndIf
  
         
    
         
      
                                   
       
      
      TextGadget(200, 225 , 0, 200, 20, "Bon de Travail #", #PB_Text_Border | #PB_Text_Center)
      TextGadget(100, 225   , 20, 200, 30, "" + GetGadgetText(#list), #PB_Text_Border | #PB_Text_Center)
      
      
      TextGadget(201, 425 , 0, 200, 20, "# Série (VIN)", #PB_Text_Border | #PB_Text_Center)
      StringGadget(101, 425 , 20, 200, 30, "")
      
      TextGadget(202, 625 , 0, 200, 20, "Year", #PB_Text_Border | #PB_Text_Center)
      StringGadget(102, 625 , 20, 200, 30, "")
      
      TextGadget(203, 825 , 0, 200, 20, "Make", #PB_Text_Border | #PB_Text_Center)
      StringGadget(103, 825 , 20, 200, 30, "")
      
      TextGadget(204, 225 , 50, 200, 20, "# Unité", #PB_Text_Border | #PB_Text_Center)
      StringGadget(104, 225   , 70, 200, 30, "")
      
      TextGadget(205, 425 , 50, 200, 20, "Kilométrages", #PB_Text_Border | #PB_Text_Center)
      StringGadget(105, 425 , 70, 200, 30, "")
      
      TextGadget(206, 625 ,50, 200, 20, "Heures", #PB_Text_Border | #PB_Text_Center)
      StringGadget(106, 625 , 70, 200, 30, "")
      
      TextGadget(207, 825 , 50, 200, 20, "Date", #PB_Text_Border | #PB_Text_Center)
      StringGadget(107, 825 , 70, 200, 30, "")
      
      TextGadget(208, 225 , 100, 200, 20, "Prochaine Maintenance", #PB_Text_Border | #PB_Text_Center)
      StringGadget(108, 225   , 120, 200, 30, "")
      
      TextGadget(209, 425 , 100, 200, 20, "Date Prochaine INSP. SAAQ // P.E.P", #PB_Text_Border | #PB_Text_Center)
      StringGadget(109, 425 , 120, 200, 30, "")
      
      TextGadget(210, 625 , 100, 200, 20, "Date Fin Garantie", #PB_Text_Border | #PB_Text_Center)
      StringGadget(110, 625 , 120, 200, 30, "")
      
      TextGadget(211, 825 , 100, 200, 20, "Imatriculation", #PB_Text_Border | #PB_Text_Center)
      StringGadget(111, 825 , 120, 200, 30, "")
      
      TextGadget(212, 225 , 150, 200, 20, "Nom Propriétaire", #PB_Text_Border | #PB_Text_Center)
      StringGadget(112, 225   , 170, 200, 30, "")
      
      TextGadget(213, 425 , 150, 200, 20, "Addresse Propriétaire", #PB_Text_Border | #PB_Text_Center)
      StringGadget(113, 425 , 170, 200, 30, "")
      
      TextGadget(214, 625 , 150, 200, 20, "Addresse du Vehicule (Home)", #PB_Text_Border | #PB_Text_Center)
      StringGadget(114, 625 , 170, 200, 30, "")
      
      TextGadget(215, 825, 150, 200, 20, "Mot de passe 'ECM'", #PB_Text_Border | #PB_Text_Center)
      StringGadget(115, 825 , 170, 200, 30, "")
      
      TextGadget(218, 225, 200, 200, 20, "Menu de Notes", #PB_Text_Border | #PB_Text_Center)
      ButtonGadget(220, 225, 220, 200, 20,"Nouvelle note")
      ButtonGadget(221, 225, 240, 200, 20,"Sauvegardé")
      ButtonGadget(222, 225, 260, 200, 20,"Téléchargé")
      ButtonGadget(223, 225, 280, 200, 20,"Supprimé")
      
      TextGadget(224, 225, 300, 200, 20, "Liste des Notes", #PB_Text_Border | #PB_Text_Center)
      ListViewGadget(#listNote3, 225, 320, 200, 200)
             If DatabaseQuery (0, "SELECT * FROM Workorder")
             While NextDatabaseRow(#mySql) 
               
               
               AddGadgetItem(#listNote3, -1, "Note # " + GetDatabaseString(#mySql, 0))
               
                  
                   
              Wend 
              FinishDatabaseQuery(#mySql)
   
              success = #True
            EndIf
      
   
      TextGadget(217, 425, 200, 600, 20, "Editeur de Note", #PB_Text_Border | #PB_Text_Center)
      EditorGadget(117, 425, 220, 600, 300)
      
      ButtonGadget(219, 225, 520, 800, 80,"JOB A ~ Z")
    
      
 BindGadgetEvent(221, @savenotebuttonHandler())
 BindGadgetEvent(220, @newnotebuttonHandler())
 BindGadgetEvent(219, @openwindowjobHandler())
 BindMenuEvent(1, 200, @closewindowHandler())
  ;EndIf
   ; ///////////////////////
  EndProcedure












       Debug "Evènement : Menu -Test-"
       
        If OpenDatabase(0, "Mech-Logia.sqlite", "", "")
    Debug "Connecté à Mech-Logia.sqlite"
   
      
       
      ; ///////////
       


   If OpenWindow(1, 0, 0, 1025, 620, "",#PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu | #PB_Window_ScreenCentered, 0)
      
    
   
       r=GetMenuItemCount_(GetSystemMenu_(WindowID(1),#False)) ; Get number of menu items.
RemoveMenu_(GetSystemMenu_(WindowID(1),0),r-1,#MF_BYPOSITION) ; Disable "X" button.
RemoveMenu_(GetSystemMenu_(WindowID(1),0),r-2,#MF_BYPOSITION) ; Remove separator.
DrawMenuBar_(WindowID(1))                                     ; Redraw the window's menu bar to reflect the changes.
CreateMenu(1, WindowID(1))  ; la création du menu commence ici....
      MenuTitle("Menu")
                       
        MenuItem(200, "Fermer")
       ButtonGadget(402, 0, 220, 215, 20," Liste Bon de travail")
     ListViewGadget(#list, 0, 240, 215, 360) 
     
  If DatabaseQuery (0, "SELECT * FROM Workorder")
  
    While NextDatabaseRow(#mySql)       
      AddGadgetItem(#list, -1, "WO No: " + GetDatabaseString(#mySql, 0))
      
    Wend 
   
    FinishDatabaseQuery(#mySql)
   
    success = #True

  EndIf
 
  CloseDatabase(#mySql)
 


If Not success
 
  AddGadgetItem(#list, -1, "MySQL Error: " + DatabaseError())
 
EndIf
EndIf
EndIf
BindGadgetEvent(#list, @aWOordertHandler(), #PB_EventType_LeftClick)
BindMenuEvent(1, 200, @closewindowHandler())
  
   
 ;BindMenuEvent(2, 4, @Quit2Handler())
    Repeat : Until WaitWindowEvent()=#PB_Event_CloseWindow
  
      

; IDE Options = PureBasic 6.02 LTS (Windows - x64)
; CursorPosition = 4
; Folding = --
; EnableXP
; DPIAware
; UseMainFile = wo.pb
; Executable = WO.exe