hl.config({
    animations = {
        enabled = true,
    },
})

-- Bezier.
hl.curve("default", { type = "bezier", points = { {0.05, 0.9},    {0.1, 1.02}    } })
hl.curve("wind", { type = "bezier", points = { {0.05, 0.9},    {0.1, 1.02}    } })
hl.curve("overshot", { type = "bezier", points = { {0.13, 0.99},       {0.29, 1.02}       } })
hl.curve("liner", { type = "bezier", points = { {1, 1},    {1, 1}     } })
hl.curve("easeOutQuint", { type = "bezier", points = { {0.23, 1},    {0.32, 1.03}     } })

-- Animations.
hl.animation({ leaf = "windows", enabled = true,  speed = 1, bezier = "easeOutQuint", style = "popin" })
hl.animation({ leaf = "windowsIn", enabled = true,  speed = 1, bezier = "easeOutQuint", style = "popin" })
hl.animation({ leaf = "windowsOut", enabled = true,  speed = 1, bezier = "overshot", style = "popin" })
hl.animation({ leaf = "windowsMove", enabled = true,  speed = 1, bezier = "overshot", style = "slide" })
hl.animation({ leaf = "layers", enabled = true,  speed = 1, bezier = "default", style = "slide" })
hl.animation({ leaf = "fadeIn", enabled = true,  speed = 1, bezier = "default" })
hl.animation({ leaf = "fadeOut", enabled = true,  speed = 1, bezier = "default" })
hl.animation({ leaf = "fadeSwitch", enabled = true,  speed = 1, bezier = "default" })
hl.animation({ leaf = "fadeShadow", enabled = true,  speed = 1, bezier = "default" })
hl.animation({ leaf = "fadeDim", enabled = true,  speed = 1, bezier = "default" })
hl.animation({ leaf = "fadeLayers", enabled = true,  speed = 1, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true,  speed = 1, bezier = "wind", style = "slide" })
hl.animation({ leaf = "border", enabled = true,  speed = 1, bezier = "liner" })
