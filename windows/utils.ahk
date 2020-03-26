Capslock::Control
+Capslock::Capslock
return

SetWinDelay, 0

Capslock & Tab:: 
{
  DetectHiddenWindows, Off
  WinGet, WinArray, List

  i := WinArray
  Loop, %i% {
    WinID := WinArray%A_Index%
    SwapMon(WinID)
  }
  return
}

SwapMon(WinID) {
  SysGet, Mon1, Monitor, 1
  Mon1Width := Mon1Right - Mon1Left
  Mon1Height := Mon1Bottom - Mon1Top

  SysGet, Mon2, Monitor, 2
  Mon2Width := Mon2Right - Mon2Left
  Mon2Height := Mon2Bottom - Mon2Top

  WinGetPos, WinX, WinY, WinWidth, WinHeight, ahk_id %WinID%
  WinCenter := WinX + (WinWidth / 2)
  if (WinCenter >= Mon1Left and WinCenter <= Mon1Right) {
    NewX := (WinX - Mon1Left) / Mon1Width
    NewX := Mon2Left + (Mon2Width * NewX)

    NewWidth := WinWidth / Mon1Width
    NewWidth := Mon2Width * NewWidth

    NewY := (WinY - Mon1Top) / Mon1Height
    NewY := Mon2Top + (Mon2Height * NewY)

    NewHeight := WinHeight / Mon1Height
    NewHeight := Mon2Height * NewHeight
  } else {
    NewX := (WinX - Mon2Left) / Mon2Width
    NewX := Mon1Left + (Mon1Width * NewX)

    NewWidth := WinWidth / Mon2Width
    NewWidth := Mon1Width * NewWidth

    NewY := (WinY - Mon2Top) / Mon2Height
    NewY := Mon1Top + (Mon1Height * NewY)

    NewHeight := WinHeight / Mon2Height
    NewHeight := Mon1Height * NewHeight
  }

  WinMove, ahk_id %WinID%, , %NewX%, %NewY%, %NewWidth%, %NewHeight%
  return
}