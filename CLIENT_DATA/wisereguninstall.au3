#RequireAdmin
#AutoIt3Wrapper_UseX64=N
if $CmdLine[0] > 0 Then
   run($CmdLine[1])
Else
   run('C:\Program Files (x86)\Wise\Wise Registry Cleaner\unins000.exe' & ' /sp- /verysilent /norestart /nocancel /suppressmsgboxes','C:\Program Files (x86)\Wise\Wise Registry Cleaner')
EndIf

AutoItSetOption('MouseCoordMode',0)

sleep(300)
WinWait('Uninstall')
WinActivate('Uninstall')
sleep(10000)
; press the  "Yes" button
ControlClick('Uninstall', 'Do you want to remove config informatio', 'Button1')





