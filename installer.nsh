!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Calendar" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\icloud-calendar" "" "URL:iCloud Calendar"
  WriteRegStr HKCU "Software\Classes\icloud-calendar" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-calendar\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Calendar"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\icloud-calendar"
!macroend
