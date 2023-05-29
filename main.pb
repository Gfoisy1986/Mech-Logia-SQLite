UseSQLiteDatabase()


      Enumeration
      #list
      #mysql = 0
      EndEnumeration


  
   If OpenDatabase(0, "Mech-Logia.sqlite", "", "")
    Debug "Connecté à Mech-Logia.sqlite"
   EndIf
   

  Procedure GfoisyHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
    Procedure GitHandler()
    Debug "Evènement : Menu -github-"
    RunProgram("https://github.com/Gfoisy1986?tab=repositories")
  EndProcedure
  
    Procedure DonateHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
  Procedure QuitHandler()
    Debug "Evènement : Menu -Quitter-"
    End
  EndProcedure
  
  Procedure Quit2Handler()
    Debug "Evènement : Menu -Quitter-"
    CloseWindow(2)
    
  EndProcedure
  
  Procedure aWOordertHandler()
    ;//////////////////////
    If OpenDatabase(0, "Mech-Logia.sqlite", "", "")
    Debug "Connecté à Mech-Logia.sqlite"
   
      DatabaseQuery (0, "SELECT * FROM Workorder")
    For i = 0 To 65000
      ;AddGadgetItem(#list, i, "Ancien élément "+Str(i))
      SetGadgetItemData(#list, i, i)
    Next i
    Debug ("Ouverture du work order" + GetGadgetText(#list))
    If OpenWindow(3, 205, 50, 595, 600, "Workorder 'IDE'", 0)
     
          
      
  EndIf
  EndIf
   ; ///////////////////////
  EndProcedure
  ;///////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
     Procedure GWOHandler()
       Debug "Evènement : Menu -Test-"
       
       
       
      ; ///////////
       
       
       
   



   If OpenWindow(2, 0, 50, 200, 600, "# Workorder", 0)
     ListViewGadget(#list, 0, 0, 200, 600) 
     
  If DatabaseQuery (0, "SELECT * FROM Workorder")
  
    While NextDatabaseRow(#mySql)       
      AddGadgetItem(#list, -1, "WO No: " + GetDatabaseString(#mySql, 0))
      AddGadgetItem(#list, -1, "")
    Wend 
   
    FinishDatabaseQuery(#mySql)
   
    success = #True

  EndIf
 
  CloseDatabase(#mySql)
 
EndIf

If Not success
 
  AddGadgetItem(#list, -1, "MySQL Error: " + DatabaseError())
 
EndIf

BindGadgetEvent(#list, @aWOordertHandler(), #PB_EventType_LeftClick)

	
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
   ;  ///////////  
       
   


    
   

 
   
  
  

     
     
   
 ;BindMenuEvent(2, 4, @Quit2Handler())
    
  EndProcedure
  
     Procedure HGWOHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure CGWOHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure CGMHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure HGPHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure IGPHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure IGEHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure IGCHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure IGFHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure DGFHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure IGHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure EXFHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure WOHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure BOSMHandler()
    Debug "Evènement : Menu -Test-"
    RunProgram ("https://www.google.com/maps/")
  EndProcedure
  
     Procedure BOCOMPTAHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  ;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     Procedure BOCALCUHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
  ;//////////////////////////////////////////////////////
  
  
     Procedure BOCONVHandler()
       Debug "Evènement : Menu -Test-"
       
  
   

     EndProcedure
  
  
  
  ;//////////////////////////////////////////////////////
  
     Procedure BOEDITHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure BOGRIHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure BOTODOHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure BOCARNHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
     Procedure CONTACTHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
   Procedure FAQHandler()
    Debug "Evènement : Menu -Test-"
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
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
    WebGadget (3, 0, 0, 800, 600, "https://www.google.ca")
  EndProcedure
  
  ;///////////////////////////////////////////////////////////////

     
  #FenetrePrincipale = 0
  #FenetreFille = 1
  If OpenWindow(#FenetrePrincipale, 0, 0, 800, 20, "Mech-Logia", #PB_Window_SystemMenu, 0)
    
      CreateMenu(0, WindowID(0))  ; la création du menu commence ici....
      MenuTitle("Menu *Externe*")
      MenuItem(1, "GuillaumeFoisy.ca")
      MenuItem(2, "GFoisy1986 Github")
      MenuItem(3, "Donation $$")
      MenuBar()                 ; la barre de séparation sera insérée ici
      MenuBar()                 ; la barre de séparation sera insérée ici
      MenuBar()                 ; la barre de séparation sera insérée ici
      
        MenuItem(4, "Fermer")
        
        ;//////////////////////////////////////////
        
        MenuTitle("Administration")
        
      MenuItem(5, "Bon de travail")
     
   
      MenuItem(6, "Historique Bon de Travail")
      MenuItem(7, "Calendrier Bon de travail")
      MenuItem(8, "Calendrier Maintenance")
      MenuItem(9, "Historique Poinçon")
      MenuItem(10, "Information Employer")
      MenuItem(11, "Information Client")
      MenuItem(12, "Information Flotte")
      MenuItem(13, "Dossier Facture")
      MenuItem(14, "Inventaire")
      MenuItem(28, "Explorateur de fichier")
      MenuItem(23, "To Do List")
        
        
        ;//////////////////////////////////////////
         
      MenuTitle("Mécanicien")
      
      MenuItem(16, "Bon de Travail")
      MenuItem(19, "Calculatrice")
      MenuItem(20, "Convertion Unité")
      MenuItem(23, "To Do List")
        
         
        ;/////////////////////////////////////////
        
        
      MenuTitle("Boite à Outils *Externe*")
      
      MenuItem(18, "Google MAPS")
      MenuItem(17, "Sage *Comptabilité*")
      
      MenuItem(21, "Libreoffice")
      MenuItem(22, "Krita *Dessins*")
      
      MenuItem(24, "libreCAD // FreeCAD  *2D/3D*")
      MenuItem(28, "Navigateur Internet")
      MenuItem(29, "Cummins Filtration")
      MenuItem(30, "Diesel Shop Essential Links")
        ;/////////////////////////////////////////
        
      MenuTitle("Support Technique *Externe*")
      
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
        BindMenuEvent(0, 6, @HGWOHandler())
        BindMenuEvent(0, 7, @CGWOHandler())
        BindMenuEvent(0, 8, @CGMHandler())
        BindMenuEvent(0, 9, @HGPHandler())
        BindMenuEvent(0, 10, @IGPHandler())
        BindMenuEvent(0, 11, @IGEHandler())
        BindMenuEvent(0, 12, @IGCHandler())
        BindMenuEvent(0, 13, @IGFHandler())
        BindMenuEvent(0, 14, @DGFHandler())
        BindMenuEvent(0, 15, @IGHandler())
        BindMenuEvent(0, 16, @EXFHandler())
        BindMenuEvent(0, 17, @WOHandler())
        BindMenuEvent(0, 18, @BOSMHandler())
        BindMenuEvent(0, 19, @BOCOMPTAHandler())
        BindMenuEvent(0, 20, @BOCALCUHandler())
        BindMenuEvent(0, 21, @BOCONVHandler())
        BindMenuEvent(0, 22, @BOEDITHandler())
        BindMenuEvent(0, 23, @BOGRIHandler())
        BindMenuEvent(0, 24, @BOTODOHandler())
        BindMenuEvent(0, 25, @BOCARNHandler())
        BindMenuEvent(0, 26, @CONTACTHandler())
        BindMenuEvent(0, 27, @FAQHandler())
        BindMenuEvent(0, 28, @NIHandler())
        BindMenuEvent(0, 29, @CFHandler())
        BindMenuEvent(0, 30, @DLHandler())
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
; CursorPosition = 51
; FirstLine = 37
; Folding = ------
; EnableXP