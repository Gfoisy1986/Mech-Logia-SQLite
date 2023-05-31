UseSQLiteDatabase()


Enumeration
      #PageWO
      #listpunch
      #listNote2
      #listNote3
      #listNote
      #list
      #mysql = 0
EndEnumeration


  
   If OpenDatabase(0, "Mech-Logia.sqlite", "", "")
    Debug "Connecté à Mech-Logia.sqlite"
   EndIf
   

  Procedure GfoisyHandler()
    Debug "Evènement : Menu -Test-"
  If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
    Procedure GitHandler()
    Debug "Evènement : Menu -github-"
    RunProgram("https://github.com/Gfoisy1986?tab=repositories")
  EndProcedure
  
    Procedure DonateHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
  Procedure QuitHandler()
    Debug "Evènement : Menu -Quitter-"
    End
  EndProcedure
  
   Procedure ReadFileTest()
     Debug "Evènement : Menu -Quitter-"
      OpenFile(1, "test.txt")
      While Eof(1) = 0 
        ReadString(1)
      Wend
    End
  EndProcedure
  
  Procedure Quit2Handler()
    Debug "Evènement : Menu -Quitter-"
    CloseWindow(2)
    
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
      
      If OpenWindow(5, 1035, 50, 220, 600, "ARCHIVE de Notes", 0)
        
        TextGadget(302, 0, 0, 220, 20,"Recherche", #PB_Text_Center | #PB_Text_Border)
        StringGadget(303, 0, 20, 220, 20,"***Tapez Ici!***")
            
            ListViewGadget(#listNote3, 0, 40, 220, 520)
           If DatabaseQuery (0, "SELECT * FROM Workorder")
             While NextDatabaseRow(#mySql) 
               
               AddGadgetItem(#listNote3, -1,"Note # " + GetDatabaseString(#mySql, 0))
               AddGadgetItem(#listNote3, -1, "Name : " + GetDatabaseString(#mySql, 0))
               AddGadgetItem(#listNote3, -1, "Date = " + GetDatabaseString(#mySql, 0))
                   AddGadgetItem(#listNote3, -1, "")
                   
              Wend 
              FinishDatabaseQuery(#mySql)
   
              success = #True
            EndIf
            ButtonGadget(300, 0, 560, 220, 20,"Download")
            ButtonGadget(301, 0, 580, 220, 20,"Delete")
            
         EndIf
         
         
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
      
                                   
       
      
      TextGadget(200, 0 , 0, 200, 20, "Bon de Travail #", #PB_Text_Border | #PB_Text_Center)
      TextGadget(100, 0   , 20, 200, 30, "" + GetGadgetText(#list), #PB_Text_Border | #PB_Text_Center)
      
      
      TextGadget(201, 200 , 0, 200, 20, "# Série (VIN)", #PB_Text_Border | #PB_Text_Center)
      StringGadget(101, 200 , 20, 200, 30, "")
      
      TextGadget(202, 400 , 0, 200, 20, "Year", #PB_Text_Border | #PB_Text_Center)
      StringGadget(102, 400 , 20, 200, 30, "")
      
      TextGadget(203, 600 , 0, 200, 20, "Make", #PB_Text_Border | #PB_Text_Center)
      StringGadget(103, 600 , 20, 200, 30, "")
      
      TextGadget(204, 0 , 50, 200, 20, "# Unité", #PB_Text_Border | #PB_Text_Center)
      StringGadget(104, 0   , 70, 200, 30, "")
      
      TextGadget(205, 200 , 50, 200, 20, "Kilométrages", #PB_Text_Border | #PB_Text_Center)
      StringGadget(105, 200 , 70, 200, 30, "")
      
      TextGadget(206, 400 ,50, 200, 20, "Heures", #PB_Text_Border | #PB_Text_Center)
      StringGadget(106, 400 , 70, 200, 30, "")
      
      TextGadget(207, 600 , 50, 200, 20, "Date", #PB_Text_Border | #PB_Text_Center)
      StringGadget(107, 600 , 70, 200, 30, "")
      
      TextGadget(208, 0 , 100, 200, 20, "Prochaine Maintenance", #PB_Text_Border | #PB_Text_Center)
      StringGadget(108, 0   , 120, 200, 30, "")
      
      TextGadget(209, 200 , 100, 200, 20, "Date Prochaine INSP. SAAQ // P.E.P", #PB_Text_Border | #PB_Text_Center)
      StringGadget(109, 200 , 120, 200, 30, "")
      
      TextGadget(210, 400 , 100, 200, 20, "Date Fin Garantie", #PB_Text_Border | #PB_Text_Center)
      StringGadget(110, 400 , 120, 200, 30, "")
      
      TextGadget(211, 600 , 100, 200, 20, "Imatriculation", #PB_Text_Border | #PB_Text_Center)
      StringGadget(111, 600 , 120, 200, 30, "")
      
      TextGadget(212, 0 , 150, 200, 20, "Nom Propriétaire", #PB_Text_Border | #PB_Text_Center)
      StringGadget(112, 0   , 170, 200, 30, "")
      
      TextGadget(213, 200 , 150, 200, 20, "Addresse Propriétaire", #PB_Text_Border | #PB_Text_Center)
      StringGadget(113, 200 , 170, 200, 30, "")
      
      TextGadget(214, 400 , 150, 200, 20, "Addresse du Vehicule (Home)", #PB_Text_Border | #PB_Text_Center)
      StringGadget(114, 400 , 170, 200, 30, "")
      
      TextGadget(215, 600, 150, 200, 20, "Mot de passe 'ECM'", #PB_Text_Border | #PB_Text_Center)
      StringGadget(115, 600 , 170, 200, 30, "")
      
      TextGadget(218, 0, 200, 200, 20, "Liste de Notes", #PB_Text_Border | #PB_Text_Center)
      
        ListViewGadget(#listNote2, 0, 220, 200, 300)
           If DatabaseQuery (0, "SELECT * FROM Workorder")
              While NextDatabaseRow(#mySql)       
                   AddGadgetItem(#listNote2, -1, "Note # " + GetDatabaseString(#mySql, 0))
                   AddGadgetItem(#listNote2, -1, "Name : " + GetDatabaseString(#mySql, 0))
                   AddGadgetItem(#listNote2, -1, "Date = " + GetDatabaseString(#mySql, 0))
                   AddGadgetItem(#listNote2, -1, "")
              Wend 
              FinishDatabaseQuery(#mySql)
   
              success = #True
           EndIf
        
   
      TextGadget(217, 200, 200, 600, 20, "Editeur de Note", #PB_Text_Border | #PB_Text_Center)
      EditorGadget(117, 200, 220, 600, 300)
      
      ButtonGadget(219, 0, 520, 800, 80,"JOB A ~ Z")
      ;///////////////////////////////////////////Wo job space///////////
      ;TextGadget(216, 0, 280, 800, 20, "Liste des travaux", #PB_Text_Border | #PB_Text_Center)
      
     ; If ScrollAreaGadget(#PageWO, 0, 300, 800, 300, 800, 2600, 150) 
        
      ;StringGadget(124, 0 , 0, 800, 100, "Travaux A")
      ;StringGadget(125, 0 , 100, 800, 100, "Travaux B")
      ;StringGadget(126, 0 , 200, 800, 100, "Travaux C")
      ;StringGadget(127, 0 , 300, 800, 100, "Travaux D")
     ; StringGadget(128, 0 , 400, 800, 100, "Travaux E")
     ; StringGadget(129, 0 , 500, 800, 100, "Travaux F")
     ; StringGadget(130, 0 , 600, 800, 100, "Travaux G")
     ; StringGadget(131, 0 , 700, 800, 100, "Travaux H")
     ; StringGadget(132, 0 , 800, 800, 100, "Travaux I")
     ; StringGadget(133, 0 , 900, 800, 100, "Travaux J")
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
      ;StringGadget(145, 0 , 2100, 800, 100, "Travaux V")
      ;StringGadget(146, 0 , 2200, 800, 100, "Travaux W")
     ; StringGadget(147, 0 , 2300, 800, 100, "Travaux X")
     ; StringGadget(148, 0 , 2400, 800, 100, "Travaux Y")
      ;StringGadget(149, 0 , 2500, 800, 100, "Travaux Z")
      
 EndIf
 
  EndIf
  ;EndIf
   ; ///////////////////////
  EndProcedure
  ;///////////////////////////////////////////////////////////////////////////////////////////////////////////////<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  
     Procedure GWOHandler()
       Debug "Evènement : Menu -Test-"
       
        If OpenDatabase(0, "Mech-Logia.sqlite", "", "")
    Debug "Connecté à Mech-Logia.sqlite"
   
      
       
      ; ///////////
       
       
       If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
       EndIf
      
;///////////////////////////////////////////////////////////////////////>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
         If OpenWindow(4, 0, 50, 220, 200, "Gestion", 0)
           
           ListViewGadget(#listpunch, 0, 0, 220, 200)
           If DatabaseQuery (0, "SELECT * FROM Workorder")
              While NextDatabaseRow(#mySql)       
                   AddGadgetItem(#listpunch, -1, "Punch " + GetDatabaseString(#mySql, 0))
                   AddGadgetItem(#listpunch, -1, "")
              Wend 
              FinishDatabaseQuery(#mySql)
   
              success = #True
           EndIf
           
           
           
           
           
           
       EndIf
       ;////////////////////////////////////////////////////////////////////////////////ùùùùù>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
       If OpenWindow(2, 0, 280, 220, 370, "Sélection", 0)
         
     ListViewGadget(#list, 0, 0, 220, 370) 
     
  If DatabaseQuery (0, "SELECT * FROM Workorder")
  
    While NextDatabaseRow(#mySql)       
      AddGadgetItem(#list, -1, "WO No: " + GetDatabaseString(#mySql, 0))
      
    Wend 
   
    FinishDatabaseQuery(#mySql)
   
    success = #True

  EndIf
 
  CloseDatabase(#mySql)
 
EndIf

If Not success
 
  AddGadgetItem(#list, -1, "MySQL Error: " + DatabaseError())
 
EndIf
EndIf

BindGadgetEvent(#list, @aWOordertHandler(), #PB_EventType_LeftClick)

  
   
 ;BindMenuEvent(2, 4, @Quit2Handler())
    
  EndProcedure
  
    
  
     Procedure CGWOHandler()
    Debug "Evènement : Menu -Test-"
   If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure CGMHandler()
    Debug "Evènement : Menu -Test-"
   If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure HBTHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
  
 
  
  Procedure CGHNHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure IGPHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure IGEHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure IGCHandler()
    Debug "Evènement : Menu -Test-"
   If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure IGFHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure DGFHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure IGHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure EXFHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure WOHandler()
    Debug "Evènement : Menu -Test-"
   If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure BOSMHandler()
    Debug "Evènement : Menu -Test-"
    RunProgram ("https://www.google.com/maps/")
  EndProcedure
  
     Procedure BOCOMPTAHandler()
    Debug "Evènement : Menu -Test-"
   
        RunProgram("https://www.sage.com/fr-ca/")
       
  EndProcedure
  ;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     Procedure BOCALCUHandler()
       Debug "Evènement : Menu -Test-"
       If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
       
    
  EndProcedure
  
  ;//////////////////////////////////////////////////////
  
  
     Procedure BOCONVHandler()
       Debug "Evènement : Menu -Test-"
       If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  
   

     EndProcedure
  
  
  
  ;//////////////////////////////////////////////////////
  
     Procedure BOEDITHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.libreoffice.org/")
       EndIf
  EndProcedure
  
     Procedure BOGRIHandler()
    Debug "Evènement : Menu -Test-"
   If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://krita.org/")
       EndIf
  EndProcedure
  
     Procedure BOTODOHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure BOCARNHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://librecad.org/")
       EndIf
  EndProcedure
  
     Procedure CONTACTHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
   Procedure FAQHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
   Procedure NIHandler()
    Debug "open navigator google.ca"
    RunProgram("https://www.google.ca/")
  EndProcedure
  
  Procedure CFHandler()
    Debug "Evènement : Menu -Test-"
    
         RunProgram("https://www.fleetguard.com/s/?language=fr_CA#popup1-0")
      
  EndProcedure
  
  Procedure DLHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.diesellaptops.com/")
       EndIf
  EndProcedure
  
   Procedure FreecadHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", 0)
         WebGadget (3, 0, 0, 800, 600, "https://freecad.org/")
       EndIf
     EndProcedure
     
  Procedure ChangeIcon(Image$)  
hIco=LoadImage(0,Image$)  
SetClassLong_(WindowID(0),#GCL_HICON,hIco)
EndProcedure 
  ;///////////////////////////////////////////////////////////////

     
  #FenetrePrincipale = 0
  #FenetreFille = 1
  If OpenWindow(#FenetrePrincipale, 0, 0, 1255, 20, "Mech-Logia", #PB_Window_TitleBar)
    ChangeIcon("icon.ico")
    
    
   
    
      CreateMenu(0, WindowID(0))  ; la création du menu commence ici....
      MenuTitle("  Menu  ")
      MenuItem(1, "GuillaumeFoisy.ca")
      MenuItem(2, "GFoisy1986 Github")
      MenuItem(3, "Donation $$")
      MenuBar()                 ; la barre de séparation sera insérée ici
      MenuBar()                 ; la barre de séparation sera insérée ici
      MenuBar()                 ; la barre de séparation sera insérée ici
      
        MenuItem(4, "Fermer")
        
        ;//////////////////////////////////////////
        
        MenuTitle("  Administration  ")
        
      MenuItem(5, "Bon de travail")
     
   
      MenuItem(6, "Historique Bon de Travail")
      MenuItem(8, "Historique des Notes")
      MenuItem(7, "Calendrier Bon de Travail")
      MenuItem(9, "Calendrier Maintenance")
      MenuItem(10, "Information Employer")
      MenuItem(11, "Information Client")
      MenuItem(12, "Information Flotte")
      MenuItem(13, "Dossier Facture")
      MenuItem(14, "Inventaire")
      MenuItem(28, "Explorateur de Fichier")
      MenuItem(23, "To Do List")
        
        
        
         
      
      
      
     
        
         
        ;/////////////////////////////////////////
      MenuTitle("  Boîte à Outils  ")
      
      
      MenuItem(19, "Calculatrice")
      MenuItem(20, "Convertion Unité")
      MenuItem(23, "To Do List")
      MenuItem(18, "Google MAPS")
      MenuItem(17, "Sage *Comptabilité*")
      MenuItem(21, "Libreoffice")
      MenuItem(22, "Krita *Dessins*")
      MenuItem(24, "LibreCAD")
      MenuItem(31, "FreeCAD")
      MenuItem(28, "Navigateur Internet")
      MenuItem(29, "Cummins Filtration")
      MenuItem(30, "Diesel Shop Essential Links")
        ;/////////////////////////////////////////
        
      MenuTitle("  Support Technique  ")
      
      MenuItem(3, "Donation $$")
      MenuItem(25, "Contact")
      MenuItem(26, "F.A.Q")
        
      ;//////////////////////////////////////////
      ; WebGadget (100, 0, 0, 800, 600, "https://www.google.ca")
      ;//////////////////////////////////////////////
        BindMenuEvent(0, 1, @GfoisyHandler())
        BindMenuEvent(0, 2, @GitHandler())
        BindMenuEvent(0, 3, @DonateHandler())
        BindMenuEvent(0, 4, @QuitHandler())
         
        BindMenuEvent(0, 5, @GWOHandler())
        BindMenuEvent(0, 8, @CGHNHandler())
        BindMenuEvent(0, 7, @CGWOHandler())
        BindMenuEvent(0, 9, @CGMHandler())
        BindMenuEvent(0, 6, @HBTHandler())
        BindMenuEvent(0, 10, @IGPHandler())
        BindMenuEvent(0, 11, @IGEHandler())
        BindMenuEvent(0, 12, @IGCHandler())
        BindMenuEvent(0, 13, @IGFHandler())
        BindMenuEvent(0, 14, @DGFHandler())
        BindMenuEvent(0, 15, @IGHandler())
        BindMenuEvent(0, 16, @EXFHandler())
        
        BindMenuEvent(0, 18, @BOSMHandler())
        BindMenuEvent(0, 17, @BOCOMPTAHandler())
        BindMenuEvent(0, 19, @BOCALCUHandler())
        BindMenuEvent(0, 20, @BOCONVHandler())
        BindMenuEvent(0, 21, @BOEDITHandler())
        BindMenuEvent(0, 22, @BOGRIHandler())
        BindMenuEvent(0, 23, @BOTODOHandler())
        BindMenuEvent(0, 24, @BOCARNHandler())
        BindMenuEvent(0, 25, @CONTACTHandler())
        BindMenuEvent(0, 26, @FAQHandler())
        BindMenuEvent(0, 28, @NIHandler())
        BindMenuEvent(0, 29, @CFHandler())
        BindMenuEvent(0, 30, @DLHandler())
        BindMenuEvent(0, 31, @freecadHandler())
        ;/////////////////////////////////////////
        
      
        
        
        
      
    EndIf
    Repeat : Until WaitWindowEvent()=#PB_Event_CloseWindow
  
      
      
      
 
        
   
    
    
    
    
 
  
  
  
  ;DatabaseQuery (0, "SELECT * FROM Workorder WHERE id=1")
  
 ; While NextDatabaseRow(0) ; Enumeration des enregistrements
   ;   ButtonGadget (7, 10, 500, 185, 30, GetDatabaseString(0, 0)) ; Affichage du contenu du premier champ
   ; Wend
  
  
   
   Repeat
     Event = WaitWindowEvent()
     
     Select Event
     
       Case #PB_Event_Gadget
         Select EventGadget()
           Case 8 
              CloseWindow(0)
              End  
          EndSelect
            
            
     EndSelect
   Until Event = #PB_Event_CloseWindow
   
   
   
   
   
   
   
   
   
   
  ; /////////////////////////////////////////////////////////////////////////////////
   ;
  ; enumerate a column from databse
  ; ///////////////////////////////////////////////////////////////////////////////
  ; ///////////////////////////////////////////////////////////////////////////////
  ; Enumeration
  ;    #list
   ;   #mysql = 0
   ;   EndEnumeration
  ; If OpenWindow(2, 0, 0, 800, 600, "", 0)
  ;      ListViewGadget(#list, 10, 10, 780, 380)
  ;If DatabaseQuery (0, "SELECT * FROM Workorder LIMIT 2")
   
  ;  While NextDatabaseRow(#mySql)       
   ;   AddGadgetItem(#list, -1, "A/c No: " + GetDatabaseString(#mySql, 0))
      
   ;   AddGadgetItem(#list, -1, "")
   ; Wend 
   
   ; FinishDatabaseQuery(#mySql)
   
   ; success = #True

  ;EndIf
 
 ; CloseDatabase(#mySql)
 
;EndIf

;If Not success
 
 ; AddGadgetItem(#list, -1, "MySQL Error: " + DatabaseError())
 
;EndIf
;
; IDE Options = PureBasic 6.02 LTS (Windows - x64)
; CursorPosition = 92
; FirstLine = 60
; Folding = ------
; EnableXP