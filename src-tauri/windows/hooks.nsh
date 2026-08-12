; Startup + icloud-calendar:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Calendar" '"$INSTDIR\iCloud Calendar.exe"'
  WriteRegStr HKCU "Software\Classes\icloud-calendar" "" "URL:iCloud Calendar"
  WriteRegStr HKCU "Software\Classes\icloud-calendar" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-calendar\shell\open\command" "" '"$INSTDIR\iCloud Calendar.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Calendar"
  DeleteRegKey HKCU "Software\Classes\icloud-calendar"
!macroend
