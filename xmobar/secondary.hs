-- http://projects.haskell.org/xmobar/

Config { 
    font = "xft:Iosevka Nerd Font -Medium-14",
    bgColor = "#292d3e",
    fgColor = "#f07178",
    position = Static { xpos = 0 , ypos = 0, width = 1920, height = 23 },
    lowerOnStart = True,
    hideOnStart = False,
    allDesktops = True,
    persistent = True,
    commands = [ 
        Run Date "  %d %b %Y %H:%M " "date" 600,
        Run Network "enp6s0" ["-t", " <tx>kb  <rx>kb"] 60,
        Run Cpu ["-t", " (<total>%)","-H","50","--high","red"] 80,
        Run Memory ["-t", "  <used>M (<usedratio>%)"] 80,
        Run Com "volume" [] "volume" 1,
        Run Com "bash" ["-c", "checkupdates | wc -l"] "updates" 3000,
        Run UnsafeStdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "<fc=#b303ff>   </fc> %UnsafeStdinReader% }{ \
        \<fc=#e1acff> %updates% </fc>\
        \<fc=#FFB86C> %cpu% </fc>\
        \<fc=#FF5555> %memory% </fc>\
        \<fc=#c3e88d> %enp6s0% </fc>\
        \<fc=#82AAFF> %volume% </fc>\
        \<fc=#8BE9FD> %date% </fc>"
}
