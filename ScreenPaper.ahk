#NoTrayIcon
Global Flags := {RawFlags:[]}
If WinExist("AHK_Class Progman", "FolderView")
  SendMessage,0x052C
hWorkerW := WinExist("AHK_Class WorkerW", "FolderView")
hWallpaper := DllCall("User32.dll\FindWindowEx","Ptr",0,"Ptr",hWorkerW,"Str","WorkerW","Ptr",0,"Ptr")
Run,"%1%" /p %hWallpaper%
ExitApp