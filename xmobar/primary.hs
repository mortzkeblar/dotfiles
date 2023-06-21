-- http://projects.haskell.org/xmobar/

Config { 
    font = "xft:Iosevka Nerd Font -Medium-14",
    bgColor = "#292d3e",
    fgColor = "#f07178",
    position = Static { xpos = 1920 , ypos = 57, width = 1920, height = 23 },
    lowerOnStart = True,
    hideOnStart = False,
    allDesktops = True,
    persistent = True,
    commands = [ 
        Run Date "  %d %b %Y %H:%M " "date" 600,
        Run Com "volume" [] "volume" 1,
        -- Run Com "battery" [] "battery" 600,
        Run Com "brightness" [] "brightness" 10,
        Run Com "bash" ["-c", "checkupdates | wc -l"] "updates" 3000,
        Run Com "/home/mortzkeblar/.config/xmobar/trayer-padding-icon.sh" [] "trayerpad" 600,
        Run UnsafeStdinReader
    ],
    alignSep = "}{",
    template = "<fc=#b303ff>   </fc>%UnsafeStdinReader% }{ \
        \<fc=#e1acff> %updates% </fc>\
        \<fc=#FFB86C> %brightness%</fc>\
        \<fc=#82AAFF> %volume% </fc>\
        \<fc=#8BE9FD> %date% </fc>\
        \%trayerpad%"
}
