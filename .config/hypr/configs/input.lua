hl.config({
    input = {
        kb_layout  = "br, us",
        kb_variant = " , dvorak",
        kb_model   = "",
        kb_options = "compose:rctrl, level3:ralt_switch, grp:win_space_toggle",
        kb_rules   = "",

        follow_mouse = 1,
        numlock_by_default = true,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
        natural_scroll = true,
        disable_while_typing = true,
        scroll_factor = 0.5,
        },
    },
    
    cursor = {
        inactive_timeout = 3
    }
})
