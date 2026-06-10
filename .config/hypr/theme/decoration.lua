require("theme.colors")

hl.config({
    general = {
        border_size = 1,
        gaps_in = 2,
        gaps_out = 2,

        col = {
            active_border = "rgba(b7bdf8b0)" ,
            inactive_border= "rgba(cad3f540)",
        }
    },

    decoration = {
        rounding = 4,
    
        active_opacity = 1.0, -- 0.92 default 
        inactive_opacity = 1.0, -- 0.90 default
    
        blur = {
            enabled = false,
            size = 5,
            passes = 4,
            ignore_opacity = true,
            new_optimizations = true,
            xray = false,
            noise = 0.0,
            popups = true
        },
    
        shadow = {
          enabled = false,
          range = 10,
          scale = 2,
          render_power = 5,
          color = "#363a4f",
          color_inactive = "#181926",
        },
    
        dim_inactive = false,
        dim_strength = 0.05
    },

    group = {
        
        col = {
            border_inactive = "rgba(b7bdf869)",
            border_active = { colors = { "rgba(cad3f5ee)", "rgba(b7bdf869)", "rgba(cad3f5ee)", "rgba(b7bdf869)" }, angle = 45 }
        },

        groupbar = {
          gradients = true,
          gradient_rounding = 7,
          indicator_height = 0,
          gradient_round_only_edges = true,

          col = {
            active = "rgba(b7bdf8CC)",
            inactive = "rgba(b8c0e099)",
            locked_active = "rgba(ee99a0CC)",
            locked_inactive = "rgba(b0c0e099)",
          },
          
          font_family = "JetBrainsMono Nerd Font",
          font_size = 14,
          text_color = "rgb(181926)",
          height = 16
        }
    }

})
