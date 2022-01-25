#NoEnv
SetKeyDelay, 0
; v0.4.2-beta

if (%7%)
  SoundPlay, reset.wav

; Stop resetting
FileAppend,,%9%
ControlSend, ahk_parent, {Blind}{Shift down}{Tab}{Shift up}{Enter}, ahk_pid %1%
while (True) {
  numLines := 0
  Loop, Read, %2%
  {
    numLines += 1
  }
  preview := False
  Loop, Read, %2%
  {
    if ((numLines - A_Index) < 5)
    {
      if (InStr(A_LoopReadLine, "[WorldPreview] Starting Preview")) {
        preview := True
        break
      }
    }
  }
  if (preview)
    break
}
;ControlSend, ahk_parent, {Blind}{F3 down}{Esc}{F3 up}, ahk_pid %1%
FileDelete,%9%
while (True) {
  WinGetTitle, title, ahk_pid %1%
  if (InStr(title, " - "))
    break
}
; We can reset here
while (True) {
  FileDelete, %8%
  if (ErrorLevel == 0)
    ExitApp
  numLines := 0
  Loop, Read, %2%
  {
    numLines += 1
  }
  saved := False
  Loop, Read, %2%
  {
    if ((numLines - A_Index) < 5)
    {
      if (InStr(A_LoopReadLine, "Loaded 0") || (InStr(A_LoopReadLine, "Saving chunks for level 'ServerLevel") && InStr(A_LoopReadLine, "minecraft:the_end"))) {
        saved := True
        break
      }
    }
  }
  if (saved || A_Index > %3%)
    break
}
FileAppend,,%9%
sleep, %6%
WinGet, activePID, PID, A
if activePID != %1%
  ControlSend, ahk_parent, {Blind}{F3 Down}{Esc}{F3 Up}, ahk_pid %1%
FileDelete,%9%
sleep, %4%
FileAppend,, %5%
ExitApp
