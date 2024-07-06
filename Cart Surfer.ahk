Pause

Loop
{
    ; Check if left or right key is being held down
    if (GetKeyState("Left", "P") or GetKeyState("Right", "P"))
    {
        ; Pause the script until both keys are released
        while (GetKeyState("Left", "P") or GetKeyState("Right", "P"))
        {
            Sleep, 100  ; Sleep for a short time to prevent high CPU usage
        }
    }

    ; Save the current key delay
    CurrentKeyDelay := A_KeyDelay
    
    ; Set a new key delay and send events
    SetKeyDelay, 100
    SendEvent, {Down}{Space}
    
    ; Restore the original key delay
    SetKeyDelay, %CurrentKeyDelay%

    ; Sleep for 1000 milliseconds
    Sleep, 900

    ; Check if left or right key is being held down
    if (GetKeyState("Left", "P") or GetKeyState("Right", "P"))
    {
        ; Pause the script until both keys are released
        while (GetKeyState("Left", "P") or GetKeyState("Right", "P"))
        {
            Sleep, 100  ; Sleep for a short time to prevent high CPU usage
        }
    }

    ; Save the current key delay again
    CurrentKeyDelay := A_KeyDelay
    
    ; Set a new key delay and send events
    SetKeyDelay, 100
    SendEvent, {Down}{Down}
    
    ; Restore the original key delay
    SetKeyDelay, %CurrentKeyDelay%
    
    ; Sleep for 1000 milliseconds
    Sleep, 800
}
Return

; F7 to start/pause the script
F7::Pause
