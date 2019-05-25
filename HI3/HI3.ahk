#IfWinActive Honkai Impact 3rd - MuMu App Player    
    space::suspend
    
    character =
    
    $F1::
        ; LMB normal atk spam RMB charge/combo atk
        character = universal
    return
    
    $F2::
        ; LMB dmg combo RMB mark combo
        character = sakitama
    return
    
    $F3::
        ; LMB normal combo RMB ult combo
        character = miko
    return
    
    $LButton::
        if (character == "universal") {
            allCharaNormal()
        } else if (character == "sakitama") {
            sakitamaNormal()
        } else if (character == "miko") {
            mikoNormal()
        }
    return
    
    $RButton::
        if (character == "universal") {
            allCharaCharge()
        } else if (character == "sakitama") {
            sakitamaCharge()
        } else if (character == "miko") {
            moikoUlt()
        }
    return 
    
    sakitamaNormal() {
        loop
        {
            if not getkeystate("LButton","p")
                break
            
            Send, {1 down}
            Sleep, 50
            Send, {1 up}
            Sleep, 50
            
            if not getkeystate("LButton","p")
                break
            
            Send, {1 down}
            Sleep, 50
            Send, {1 up}
            Sleep, 50
            
            if not getkeystate("LButton","p")
                break
            
            Send, {1 down}
            Sleep, 50
            Send, {1 up}
            Sleep, 50
            
            if not getkeystate("LButton","p")
                break
            
            Send, {1 down}
            Sleep, 50
            Send, {1 up}
            Sleep, 50
            
            if not getkeystate("LButton","p")
                break
            
            Sleep 600
            Send, {1 down}
            Sleep, 50
            Send, {1 up}
            Sleep 50
        }
    }
    
    sakitamaCharge() {
        loop
        {
            if not getkeystate("RButton","p")
                break
            
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep, 75
            
            if not getkeystate("RButton","p")
                break
            
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep, 75
            
            if not getkeystate("RButton","p")
                break
            
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep, 75
            
            if not getkeystate("RButton","p")
                break
            
            Send, {1 down}
            Sleep, 600
            Send, {1 up}
            
            if not getkeystate("RButton","p")
                break
            
            Sleep 750
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep 75
        }
    }
    allCharaNormal() {
        loop {
            if not getkeystate("LButton","p")
                break
            
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep, 75
        }
    }
    allCharaCharge() {
        Send, {1 down}
        Sleep, 900
        Send, {1 up}
        Sleep, 75
    }
    mikoNormal() {
        loop {
            if not getkeystate("LButton","p")
                break
            Send, {1 down}
            Sleep, 900
            Send, {1 up}
            Sleep, 75
            
            if not getkeystate("LButton","p")
                break
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep, 75
            
            if not getkeystate("LButton","p")
                break
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep, 75
            
            if not getkeystate("LButton","p")
                break
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep, 75
            
            if not getkeystate("LButton","p")
                break
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep, 75
        }
    }
    moikoUlt() {
        loop 3 {
            Send, {1 down}
            Sleep, 900
            Send, {1 up}
            Sleep, 75
            
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep, 75
            
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep, 75
            
            Send, {1 down}
            Sleep, 75
            Send, {1 up}
            Sleep, 75
            
            Send, {1 down}
            Sleep, 900
            Send, {1 up}
            Sleep, 75   
        }
    }