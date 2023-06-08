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

  
   If OpenDatabase(0, "Mech-Logia.sqlite", "", "")
    Debug "Connecté à Mech-Logia.sqlite"
   EndIf
 
Icone$ = "icon.ico"


Procedure GWOHandler()
     Debug "Evènement : Menu -Test-"
   
    RunProgram("WO.exe")
  EndProcedure
  
   
  Procedure GfoisyHandler()
    Debug "Evènement : Menu -Test-"
    If FrameGadget(3, 225, 50, 800, 600, "Fenêtre Principale", WindowID(0))
    
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
    Procedure GitHandler()
    Debug "Evènement : Menu -github-"
    RunProgram("https://github.com/Gfoisy1986?tab=repositories")
  EndProcedure
  
    Procedure DonateHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
  Procedure QuitHandler()
    Debug "Evènement : Menu -Quitter-"
    End
  EndProcedure
  
 
  
  Procedure Quit2Handler()
    Debug "Evènement : Menu -Quitter-"
    CloseWindow(2)
    
  EndProcedure
  
     Procedure CGWOHandler()
      RunProgram("CalendarWO.exe")
  EndProcedure

     Procedure CGMHandler()
    Debug "Evènement : Menu -Test-"
  CalendarGadget(860, 0, 0, 600, 600)
  EndProcedure
  
     Procedure HBTHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
  
 
  
  Procedure CGHNHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure IGPHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure IGEHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure IGCHandler()
    Debug "Evènement : Menu -Test-"
   If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure IGFHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure DGFHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure IGHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure EXFHandler()
    Debug "Explorateur de fichier ouvert!"
     ExplorerListGadget(0, 0, 0, 1025, 600, GetHomeDirectory(), #PB_Explorer_Editable)
   
  EndProcedure
  
     Procedure WOHandler()
    Debug "Evènement : Menu -Test-"
   If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
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
       If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
       
    
  EndProcedure
  
  ;//////////////////////////////////////////////////////
  
  
     Procedure BOCONVHandler()
       Debug "Evènement : Menu -Test-"
       If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  
   

     EndProcedure
  
  
  
  ;//////////////////////////////////////////////////////
  
     Procedure BOEDITHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.libreoffice.org/")
       EndIf
  EndProcedure
  
     Procedure BOGRIHandler()
    Debug "Evènement : Menu -Test-"
   If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://krita.org/")
       EndIf
  EndProcedure
  
     Procedure BOTODOHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
     Procedure BOCARNHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://librecad.org/")
       EndIf
  EndProcedure
  
     Procedure CONTACTHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
       EndIf
  EndProcedure
  
   Procedure FAQHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
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
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
         WebGadget (3, 0, 0, 800, 600, "https://www.diesellaptops.com/")
       EndIf
  EndProcedure
  
   Procedure FreecadHandler()
    Debug "Evènement : Menu -Test-"
    If OpenWindow(3, 225, 50, 800, 600, "Fenêtre Principale", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu, 0)
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
  If OpenWindow(#FenetrePrincipale, 0, 0, 400, 20, "Mech-Logia", #PB_Window_TitleBar |  #PB_Window_MinimizeGadget | #PB_Window_SystemMenu)
    ChangeIcon(Icone$)
    AddSysTrayIcon(0, WindowID(0), LoadImage(0, Icone$))
    
   
    
    
   
    
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
     
   
     ; MenuItem(6, "Historique Bon de Travail")
     ; MenuItem(8, "Historique des Notes")
      MenuItem(7, "Calendrier Bon de Travail")
     ; MenuItem(9, "Calendrier Maintenance")
     ; MenuItem(10, "Information Employer")
     ; MenuItem(11, "Information Client")
     ; MenuItem(12, "Information Flotte")
     ; MenuItem(13, "Dossier Facture")
     ; MenuItem(14, "Inventaire")
     ; MenuItem(16, "Explorateur de Fichier")
     ; MenuItem(23, "To Do List")
        
        
        
         
      
      
      
     
        
         
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
      MenuItem(30, "Diesel Laptop")
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
; CursorPosition = 26
; FirstLine = 246
; Folding = ------
; EnableXP