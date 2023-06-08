

UseSQLiteDatabase()






;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Enumeration
      #PageWO
      #listWOARCH
      #listNote2
      #listNote3
      #listNote4
      #job
      #listNote
      #listjob
      #list
      #mysql = 0
      #close
      #File
EndEnumeration


Procedure RELOADWOLIST()
    Debug "editor window saved"
   
 RunProgram("WO.exe")
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
  

   
     Procedure newnotebuttonHandler()
    Debug "editor gadget reload!"
   EditorGadget(117, 425, 220, 600, 300)
  
 EndProcedure
 
 Procedure GETDESCA()
    If OpenDatabase(0, "Mech-Logia.sqlite", "", "")
      Debug "Connecté à Mech-Logia.sqlite"
   DatabaseQuery (0, "SELECT * FROM Workorder WHERE ID=1")
     
               
    Debug "editor gadget reload!"
 

 
  

    SetDatabaseString(0, 0, GetGadgetText(524))  
  While NextDatabaseRow(0) ; Enumération des enregistrements
    
      ; Mise à jour du champ 'checked'  pour chaque enregistrement, en assumant  que le champ 'id'
      ; est le premier de la table 'employee'
      ;
      DatabaseUpdate(0, "UPDATE Workorder SET JobAtext=? WHERE ID=1")
    Wend


  FinishDatabaseQuery(0)
  
 MessageRequester("Job # A Sauvegardée", "Les entrée 'Job # A' sont sauvegardée",  #PB_MessageRequester_Info)
  
  EndIf
  EndProcedure

Procedure closewindowHandler()
    Debug "End program WO"
    
      End
    EndProcedure
    
    Procedure reloadwindowHandler()
    Debug "reload WO"
    
    RunProgram("WO.exe")
    End
EndProcedure
    
Procedure aWOordertHandler()
    ;//////////////////////<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    If OpenDatabase(0, "Mech-Logia.sqlite", "", "")
      Debug "Connecté à Mech-Logia.sqlite"
      
   SmartWindowRefresh(1, #True)

    
      DatabaseQuery (0, "SELECT * FROM Workorder")
   ; For i = 0 To 65000
      ;AddGadgetItem(#list, i, "Ancien élément "+Str(i))
     ; SetGadgetItemData(#list, i, i)
    ;Next i
      Debug ("Ouverture du work order " + GetGadgetText(#list))
       
   HideGadget(#list, #True)
           ButtonGadget(900, 0, 300, 215, 40, "Reload WO List")
         
        EndIf
  
         ButtonGadget(401, 0, 0, 215, 20,"Liste Historique WO par *VIN*")
           ListViewGadget(#listWOARCH, 0, 20, 215, 200)
           If DatabaseQuery (0, "SELECT * FROM Workorder")
              While NextDatabaseRow(#mySql)       
                   AddGadgetItem(#listWOARCH, -1, "Wo No: " + GetDatabaseString(#mySql, 0))
                   
              Wend 
              FinishDatabaseQuery(#mySql)
   
              success = #True
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
      
      ;ButtonGadget(219, 225, 520, 800, 80,"JOB A ~ Z")
      ButtonGadget(625, 550, 520, 230, 20, "Sauvegarder les JOB")
      ;TextGadget(216, 1035, 0, 800, 20, "Liste des travaux", #PB_Text_Border | #PB_Text_Center)
     
     If ScrollAreaGadget(#PageWO, 225, 540, 800, 400, 800, 2600, 150) 
        
        
               
                DatabaseQuery (0, "SELECT * FROM Workorder WHERE ID=1")
                NextDatabaseRow(0) 
                EditorGadget(524, 0, 20, 780, 60)
                AddGadgetItem(524, -1, GetDatabaseString(0, 1))
                EditorGadget(525, 0, 80, 780, 100)
                 AddGadgetItem(525, -1, GetDatabaseString(0, 2))
                TextGadget(725, 0, 0, 550, 20, "Job #A ")
                
                
                
              ; EditorGadget(125, 0, 20, 800, 100)
             ;  TextGadget(126, 1035 , 120, 800, 20, "Travaux B")
              ; EditorGadget(127, 1035, 140, 800, 100)
              ; TextGadget(128, 1035 , 240, 800, 20, "Travaux C")
              ; EditorGadget(129, 1035, 260, 800, 100)
              ; TextGadget(130, 1035 , 360, 800, 20, "Travaux D")
              ; EditorGadget(131, 1035, 380, 800, 100)
              ; TextGadget(132, 1035 , 480, 800, 20, "Travaux E")
              ; EditorGadget(133, 1035, 500, 800, 100)
              ; TextGadget(134, 1035 , 600, 800, 20, "Travaux F")
              ; EditorGadget(135, 1035, 620, 800, 100)
             ;  TextGadget(136, 1035 , 720, 800, 20, "Travaux G")
              ; EditorGadget(137, 1035, 740, 800, 100)
                  
                   
              
        
        
        
     ; StringGadget(124, 0 , 0, 800, 80, "Travaux A")
      ;StringGadget(125, 0 , 100, 800, 100, "Travaux B")
      ;StringGadget(126, 0 , 200, 800, 100, "Travaux C")
     ; StringGadget(127, 0 , 300, 800, 100, "Travaux D")
     ; StringGadget(128, 0 , 400, 800, 100, "Travaux E")
     ; StringGadget(129, 0 , 500, 800, 100, "Travaux F")
     ; StringGadget(130, 0 , 600, 800, 100, "Travaux G")
     ; StringGadget(131, 0 , 700, 800, 100, "Travaux H")
     ; StringGadget(132, 0 , 800, 800, 100, "Travaux I")
     ;StringGadget(133, 0 , 900, 800, 100, "Travaux J")
     ; StringGadget(134, 0 , 1000, 800, 100, "Travaux K")
     ; StringGadget(135, 0 , 1100, 800, 100, "Travaux L")
     ; StringGadget(136, 0 , 1200, 800, 100, "Travaux M")
     ; StringGadget(137, 0 , 1300, 800, 100, "Travaux N")
     ; StringGadget(138, 0 , 1400, 800, 100, "Travaux O")
     ; StringGadget(139, 0 , 1500, 800, 100, "Travaux P")
     ; StringGadget(140, 0 , 1600, 800, 100, "Travaux Q")
     ; StringGadget(141, 0 , 1700, 800, 100, "Travaux R")
     ; StringGadget(142, 0 , 1800, 800, 100, "Travaux S")
     ; StringGadget(143, 0 , 1900, 800, 100, "Travaux T")
     ; StringGadget(144, 0 , 2000, 800, 100, "Travaux U")
     ; StringGadget(145, 0 , 2100, 800, 100, "Travaux V")
     ; StringGadget(146, 0 , 2200, 800, 100, "Travaux W")
      ;StringGadget(147, 0 , 2300, 800, 100, "Travaux X")
     ; StringGadget(148, 0 , 2400, 800, 100, "Travaux Y")
     ; StringGadget(149, 0 , 2500, 800, 100, "Travaux Z")
      
   

   EndIf
    
    
 
    ;BindMenuEvent(2, 200, @closewindowjobHandler())
 BindGadgetEvent(900, @RELOADWOLIST())
 BindGadgetEvent(625, @GETDESCA())
 BindGadgetEvent(221, @savenotebuttonHandler())
 BindGadgetEvent(220, @newnotebuttonHandler())
 ;BindGadgetEvent(219, @openwindowjobHandler())
 BindMenuEvent(1, 200, @closewindowHandler())
 BindGadgetEvent(#list, @aWOordertHandler(), #PB_EventType_LeftClick)


   ; ///////////////////////
  EndProcedure

























;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Icone$ = "icon.ico"
ResultatA$ = "Job A"


 
    



















       Debug "Evènement : Menu -Test-"
       
        If OpenDatabase(0, "Mech-Logia.sqlite", "", "")
    Debug "Connecté à Mech-Logia.sqlite"
   
      
       
      ; ///////////
       


   If OpenWindow(1, 0, 0, 1035, 1080, "Workorder",#PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu | #PB_Window_ScreenCentered)
        
    AddSysTrayIcon(1, WindowID(1), LoadImage(0, Icone$))
    
   
     
CreateMenu(1, WindowID(1))  ; la création du menu commence ici....
      MenuTitle("Menu")
                   MenuItem(201, "Reload")      
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



EndIf
EndIf
BindGadgetEvent(#list, @aWOordertHandler(), #PB_EventType_LeftClick)
BindMenuEvent(1, 200, @closewindowHandler())
BindMenuEvent(1, 201, @reloadwindowHandler())
  
    CloseDatabase(#mySql)
 ;BindMenuEvent(2, 4, @Quit2Handler())
    Repeat : Until WaitWindowEvent()=#PB_Event_CloseWindow
  
      

; IDE Options = PureBasic 6.02 LTS (Windows - x64)
; CursorPosition = 227
; FirstLine = 198
; Folding = --
; EnableXP
; DPIAware
; UseMainFile = wo.pb
; Executable = WO.exe