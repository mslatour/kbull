kbull
=====

Kickstarter for Bash scripts in the Unsupervised Language Learning course. Intended to help writing bash scripts that automate a large set of processing steps without losing sight of what it is doing.

No guarantees whatsoever, I just wrote it for myself because I wanted to. It might be improved over time, it might not.

Usage
-----

    source init.sh

    log "INFO" "You can set a timer using 'begin'" "blue"
    begin

    log "INFO" "You can have multiple nested timers by naming them" "blue"

    begin "Subproc1"

    log "INFO" "You can print a command and run it at the same time" "yellow"
    run "echo \"Hello World\""
    log "INFO" "You can let run only execute a command, if some result file does not exist yet" "green"
    run\_safe "cat file1 > file2" "file2"

    fgcolor "red"

    log "OUCH" "You can adjust colors more easily"
    log "INFO" "End reset the color" "blue"

    end "Subproc1"

    end

    resetcolor # At the end, reset the colors
