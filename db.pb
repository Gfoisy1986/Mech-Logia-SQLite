; Open the database connection
UsePostgreSQLDatabase()

If OpenDatabase(0, "host=localhost port=5432 dbname=Mech-Logia", "Mech", "Athene")

Debug "Connected to PostgreSQL"
  Else
    Debug "Connection failed: "+DatabaseError()
  EndIf







; IDE Options = PureBasic 6.01 LTS (Windows - x64)
; CursorPosition = 3
; Optimizer
; EnableXP
; DPIAware
; UseMainFile = test.pbf