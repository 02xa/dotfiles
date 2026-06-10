-- Launcher.
local launcher = "rofi -show drun"

-- Bar.
local bar        = "waybar"
local bar_toggle = "killall -SIGUSR1 bar"
local bar_reload = "killall bar; bar"

-- Notifications.
local notifications_menu         = "swaync-client"
local notifications_menu_read    = "notifications_menu -C"
local notifications_menu_toggle  = "notifications_menu -T"
local notifications_menu_reload  = "notifications_menu -R && notifications_menu -rs"
local notifications_menu_disturb = "notifications_menu -d"

-- Terminal.
local terminal         = "kitty"

-- Apps.
local browser            = "zen-browser"
local editor             = "nvim"
local alter_editor       = "vscodium"
local notetaking_app     = "obsidian"
local file_manager       = "kitty yazi"
local alter_file_manager = "nemo"

-- Variables.
local mainMod = "SUPER"
local scripts      = os.getenv("HOME") .. "/.config/hypr/scripts"
local rofi_scripts = os.getenv("HOME") .. "/.config/rofi/scripts"

-- ─── Applications ────────────────────────────────────────────────────────────

hl.bind(mainMod .. " + W",           hl.dsp.exec_cmd(scripts .. "/launch_app " .. browser))
hl.bind(mainMod .. " + O",           hl.dsp.exec_cmd(scripts .. "/launch_app " .. notetaking_app))
hl.bind(mainMod .. " + SHIFT + E",   hl.dsp.exec_cmd(scripts .. "/launch_app " .. alter_file_manager))
hl.bind(mainMod .. " + Return",      hl.dsp.exec_cmd(scripts .. "/launch_app " .. terminal))
hl.bind(mainMod .. " + SHIFT + Return", hl.dsp.exec_cmd(terminal .. " --class=center-float-large"))
hl.bind(mainMod .. " + CTRL + Return",  hl.dsp.exec_cmd(terminal .. " --class=center-float"))
hl.bind(mainMod .. " + ALT + Return",   hl.dsp.exec_cmd(terminal .. " --class=center-float-mini"))
hl.bind(mainMod .. " + BackSpace",      hl.dsp.exec_cmd(scripts .. "/launch_app " .. editor))
hl.bind(mainMod .. " + SHIFT + BackSpace", hl.dsp.exec_cmd(scripts .. "/launch_app " .. alter_editor))

-- Notifications Menu.
hl.bind(mainMod .. " + N",           hl.dsp.exec_cmd(notifications_menu))
hl.bind(mainMod .. " + SHIFT + R",   hl.dsp.exec_cmd(notifications_menu_reload))
hl.bind(mainMod .. " + SHIFT + N",   hl.dsp.exec_cmd(notifications_menu_read))
hl.bind(mainMod .. " + CTRL + N",    hl.dsp.exec_cmd(notifications_menu_disturb))

-- Bar.
hl.bind(mainMod .. " + CTRL + R",    hl.dsp.exec_cmd("killall " .. bar .. "; " .. bar))
hl.bind(mainMod .. " + CTRL + T",    hl.dsp.exec_cmd("killall -SIGUSR1 " .. bar))

-- Pickers / Launchers.
hl.bind(mainMod .. " + Tab",         hl.dsp.exec_cmd(launcher)) -- keycode 23 = Tab
hl.bind(mainMod .. " + Insert",      hl.dsp.exec_cmd(scripts .. "/color_picker"))
hl.bind(mainMod .. " + SHIFT + W",   hl.dsp.exec_cmd(rofi_scripts .. "/wallpaper/wallpaper"))
hl.bind(mainMod .. " + slash",       hl.dsp.exec_cmd(rofi_scripts .. "/keybindings/keybindings")) -- keycode 61 = /
hl.bind(mainMod .. " + SHIFT + G",   hl.dsp.exec_cmd("rofi -modi games -show games -theme " .. rofi_scripts .. "/game-launcher/style"))
hl.bind(mainMod .. " + SHIFT + V",   hl.dsp.exec_cmd(rofi_scripts .. "/wireguard/wireguard_selection menu"))
hl.bind(mainMod .. " + Escape",      hl.dsp.exec_cmd(rofi_scripts .. "/powermenu/powermenu"))
hl.bind(mainMod .. " + Y",           hl.dsp.exec_cmd("cliphist list | rofi -dmenu | cliphist decode | wl-copy"))

-- Screenshots
hl.bind("CTRL + Escape",  hl.dsp.exec_cmd("hyprshade off && " .. rofi_scripts .. "/screenshot/screenshot output && hyprshade on vibrance"))
hl.bind("SHIFT + Escape", hl.dsp.exec_cmd("hyprshade off && " .. rofi_scripts .. "/screenshot/screenshot --freeze output && hyprshade on vibrance"))

-- Pyprland.
-- Scratchpads.
hl.bind(mainMod .. " + V",           hl.dsp.exec_cmd("pypr toggle volume"))
hl.bind(mainMod .. " + T",           hl.dsp.exec_cmd("pypr toggle btop"))
hl.bind(mainMod .. " + SHIFT + T",   hl.dsp.exec_cmd("pypr toggle nvtop"))
hl.bind(mainMod .. " + SHIFT + I",   hl.dsp.exec_cmd("pypr toggle gpt"))
hl.bind(mainMod .. " + SHIFT + B",   hl.dsp.exec_cmd("pypr toggle bluetooth"))
hl.bind(mainMod .. " + D",           hl.dsp.exec_cmd("pypr toggle dots"))
hl.bind(mainMod .. " + E",           hl.dsp.exec_cmd("pypr toggle yazi"))

-- Other Modules.
hl.bind(mainMod .. " + Z",           hl.dsp.exec_cmd("pypr zoom"))
hl.bind(mainMod .. " + CTRL + W",    hl.dsp.exec_cmd(scripts .. "/random_wallpaper"))

-- Windows.
-- Basic Operations.
hl.bind(mainMod .. " + Q",           hl.dsp.window.close())
hl.bind(mainMod .. " + A",           hl.dsp.exec_cmd(scripts .. "/toggle_floating"))
hl.bind(mainMod .. " + F",           hl.dsp.window.fullscreen({ mode = "fullscreen" }))

-- Mouse.
hl.bind(mainMod .. " + mouse:272",   hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + R",           hl.dsp.window.resize(), { mouse = true })

-- Focusing.
hl.bind(mainMod .. " + Left",        hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + Right",       hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + Up",          hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + Down",        hl.dsp.focus({ direction = "d" }))
-- Vim-keybinds.
hl.bind(mainMod .. " + H",           hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + L",           hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + K",           hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + J",           hl.dsp.focus({ direction = "d" }))

-- Moving.
hl.bind(mainMod .. " + SHIFT + Left",  hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + Right", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + SHIFT + Up",    hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + Down",  hl.dsp.window.move({ direction = "d" }))
hl.bind(mainMod .. " + SHIFT + backslash", hl.dsp.exec_cmd(scripts .. "/move_by_rules"))  -- keycode 51 = backslash
-- Vim-keybinds.
hl.bind(mainMod .. " + SHIFT + H",  hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + L",  hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + SHIFT + K",  hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + J",  hl.dsp.window.move({ direction = "d" }))

-- Center and Split.
hl.bind(mainMod .. " + S",          hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + C",          hl.dsp.window.center())

-- Group Control.
hl.bind(mainMod .. " + G",          hl.dsp.group.toggle())
hl.bind(mainMod .. " + CTRL + G",   hl.dsp.group.lock({ action = "toggle" }))
hl.bind("ALT + Tab",          hl.dsp.group.next())

-- Resize Submap.
hl.bind(mainMod .. " + R", hl.dsp.window.resize())

hl.define_submap("resize", function()
    hl.bind("Right", hl.dsp.window.resize({ x =  40, y =   0, relative = true }), { repeating = true })
    hl.bind("Left",  hl.dsp.window.resize({ x = -40, y =   0, relative = true }), { repeating = true })
    hl.bind("Up",    hl.dsp.window.resize({ x =   0, y = -40, relative = true }), { repeating = true })
    hl.bind("Down",  hl.dsp.window.resize({ x =   0, y =  40, relative = true }), { repeating = true })
    -- Vim-keybinds
    hl.bind("L",     hl.dsp.window.resize({ x =  40, y =   0, relative = true }), { repeating = true })
    hl.bind("H",     hl.dsp.window.resize({ x = -40, y =   0, relative = true }), { repeating = true })
    hl.bind("K",     hl.dsp.window.resize({ x =   0, y = -40, relative = true }), { repeating = true })
    hl.bind("J",     hl.dsp.window.resize({ x =   0, y =  40, relative = true }), { repeating = true })
    hl.bind("Escape", hl.dsp.submap("reset"))
end)

-- Workspaces.
-- Focus workspaces. (relative per-monitor: r~N)
for i = 1, 7 do
    local key = i
    hl.bind(mainMod .. " + " .. key,               hl.dsp.focus({ workspace =  i }))
    hl.bind(mainMod .. " + SHIFT + " .. key,       hl.dsp.window.move({ workspace = i }))
    hl.bind(mainMod .. " + ALT + " .. key,         hl.dsp.window.move({ workspace = i, silent = true }))
end

-- Move between workspaces with mouse scroll.
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "m-1" }), { mouse = true })
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "m+1" }), { mouse = true })

-- Move between workspaces with keyboard.
hl.bind(mainMod .. " + CTRL + Left",  hl.dsp.focus({ workspace = "m-1" }))
hl.bind(mainMod .. " + CTRL + Right", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + CTRL + H",     hl.dsp.focus({ workspace = "m-1" }))
hl.bind(mainMod .. " + CTRL + L",     hl.dsp.focus({ workspace = "m+1" }))

-- Audio.
hl.bind(mainMod .. " + CTRL + V",    hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/restartAudio"))

hl.bind(mainMod .. " + CTRL + mouse:280",  hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true })
hl.bind("XF86AudioMute",             hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true })
hl.bind(mainMod .. " + CTRL + mouse:281",  hl.dsp.exec_cmd("swayosd-client --input-volume mute-toggle"),  { locked = true })
hl.bind("XF86AudioMicMute",          hl.dsp.exec_cmd("swayosd-client --input-volume mute-toggle"),  { locked = true })

-- Playback.
hl.bind("XF86AudioPlay",              hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause",             hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind(mainMod .. " + CTRL + mouse:282",   hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",              hl.dsp.exec_cmd("playerctl previous"),    { locked = true })
hl.bind(mainMod .. " + CTRL + mouse:275",   hl.dsp.exec_cmd("playerctl previous"),    { locked = true })
hl.bind("XF86AudioNext",              hl.dsp.exec_cmd("playerctl next"),         { locked = true })
hl.bind(mainMod .. " + CTRL + mouse:276",   hl.dsp.exec_cmd("playerctl next"),         { locked = true })

-- Volume.
hl.bind("XF86AudioRaiseVolume",       hl.dsp.exec_cmd("swayosd-client --output-volume +10"), { locked = true, repeating = true })
hl.bind(mainMod .. " + CTRL + equal",       hl.dsp.exec_cmd("swayosd-client --output-volume raise"), { repeating = true })  -- keycode 21 = =
hl.bind("XF86AudioLowerVolume",       hl.dsp.exec_cmd("swayosd-client --output-volume -10"),  { locked = true, repeating = true })
hl.bind(mainMod .. " + CTRL + minus",       hl.dsp.exec_cmd("swayosd-client --output-volume lower"), { repeating = true })  -- keycode 20 = -

-- Brightness.
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("swayosd-client --brightness +10"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("swayosd-client --brightness -10"), { locked = true, repeating = true })

-- Other.
-- Toggle performance mode. (disable anim, blur)
hl.bind(mainMod .. " + F12",           hl.dsp.exec_cmd(scripts .. "/performance"))

-- Freeze active window.
hl.bind(mainMod .. " + SHIFT + Escape", hl.dsp.exec_cmd(scripts .. "/hyprfreeze -a"))

-- Open Hyprland wiki.
hl.bind(mainMod .. " + F1",            hl.dsp.exec_cmd("xdg-open https://wiki.hyprland.org/"))
