#Requires AutoHotkey v2.0
Esc::ExitApp

; GLOBALS
; Keybinds
pata := "a" ; Keybind for `pata`
pon := "d" ; Keybind for `pon`
chaka := "w" ; Keybind for `chaka`
don := "s" ; Keybind for `don`

; Delays
release_delay := 120 ; Delay between button press and release
button_delay := 360 ; Delay before pressing next button
command_delay := 2410 ; Delay before executing next command

; Commands
; Advance
#MaxThreadsPerHotkey 3
Alt & a::
{
    static toggle := false
    if(toggle) {
        toggle := false
        return
    }
    toggle := true

    ; 1 = delay, 2 = key
    inputs := [[2, "{" . pata . " down}"], [1, release_delay], [2, "{" . pata . " up}"], [1, 360], [2, "{" . pata . " down}"], [1, release_delay], [2, "{" . pata . " up}"], [1, 360],
               [2, "{" . pata . " down}"], [1, release_delay], [2, "{" . pata . " up}"], [1, 360], [2, "{" . pon . " down}"], [1, release_delay], [2, "{" . pon . " up}"],
               [1, command_delay]]

    i := 1
    Loop {
        if(i > inputs.Length) {
            i := 1
        }

        if(inputs[i][1] == 1) {
            sleep inputs[i][2]
        } else if(inputs[i][1] == 2) {
            SendInput inputs[i][2]
        }

        i++

        if not toggle
            break
    }

    toggle := false
}
#MaxThreadsPerHotkey 1

; Attack
#MaxThreadsPerHotkey 3
Alt & s::
{
    static toggle := false
    if(toggle) {
        toggle := false
        return
    }
    toggle := true

    ; 1 = delay, 2 = key
    inputs := [[2, "{" . pon . " down}"], [1, release_delay], [2, "{" . pon . " up}"], [1, 360], [2, "{" . pon . " down}"], [1, release_delay], [2, "{" . pon . " up}"], [1, 360],
               [2, "{" . pata . " down}"], [1, release_delay], [2, "{" . pata . " up}"], [1, 360], [2, "{" . pon . " down}"], [1, release_delay], [2, "{" . pon . " up}"],
               [1, command_delay]]

    i := 1
    Loop {
        if(i > inputs.Length) {
            i := 1
        }

        if(inputs[i][1] == 1) {
            sleep inputs[i][2]
        } else if(inputs[i][1] == 2) {
            SendInput inputs[i][2]
        }

        i++

        if not toggle
            break
    }

    toggle := false
}
#MaxThreadsPerHotkey 1

; Defend
#MaxThreadsPerHotkey 3
Alt & d::
{
    static toggle := false
    if(toggle) {
        toggle := false
        return
    }
    toggle := true

    ; 1 = delay, 2 = key
    inputs := [[2, "{" . chaka . " down}"], [1, release_delay], [2, "{" . chaka . " up}"], [1, 360], [2, "{" . chaka . " down}"], [1, release_delay], [2, "{" . chaka . " up}"], [1, 360],
               [2, "{" . pata . " down}"], [1, release_delay], [2, "{" . pata . " up}"], [1, 360], [2, "{" . pon . " down}"], [1, release_delay], [2, "{" . pon . " up}"],
               [1, command_delay]]

    i := 1
    Loop {
        if(i > inputs.Length) {
            i := 1
        }

        if(inputs[i][1] == 1) {
            sleep inputs[i][2]
        } else if(inputs[i][1] == 2) {
            SendInput inputs[i][2]
        }

        i++

        if not toggle
            break
    }

    toggle := false
}
#MaxThreadsPerHotkey 1