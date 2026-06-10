-- Base Rules.
hl.window_rule({
	match = { class = "center-float-large" },
	float = true,
	center = true,
	size = { "(monitor_w*0.7)", "(monitor_h*0.7)" },
})
hl.window_rule({
	match = { class = "center-float" },
	float = true,
	center = true,
	size = { "(monitor_w*0.6)", "(monitor_wor_h*0.6)" },
})
hl.window_rule({
	match = { class = "center-float-mini" },
	float = true,
	center = true,
	size = { "(monitor_w*0.3)", "(monitor_h*0.4)" },
})

-- Overskride and Nm-connection + Pyprland (scratchpad) config float on rule
hl.window_rule({ match = { class = "io.github.kaii_lb.Overskride" }, float = true })
hl.window_rule({ match = { class = "nm-connection-editor" }, float = true })
hl.window_rule({ match = { class = "org.pulseaudio.pavucontrol" }, float = true })

-- Workspace rules.
hl.window_rule({
	name = "dev-workspace",
	workspace = "2",
	match = {
		class = "^(Code)|(codium)$|(VSCodium)$|(neovide)$|(zed)$",
	},
})

hl.window_rule({
	name = "media-workspace",
	workspace = "4",
	match = {
		class = "^(obsproject)$",
	},
})

hl.window_rule({
	name = "chat-workspace",
	workspace = "7 silent",
	match = {
		class = "^(discord)|(vesktop)$",
	},
})

hl.window_rule({
	name = "chat-workspace",
	workspace = "12 silent",
	match = {
		class = "^([Ss]potify)$",
	},
})

-- Scratchpads.
hl.window_rule({
	name = "large-scratchpads",
	match = {
		class = "scratchpad-large",
	},
	float = true,
	center = true,
	size = { "(monitor_w*0.7)", "(monitor_h*0.7)" },
	animation = "slide",
})

hl.window_rule({
	name = "normal-scratchpads",
	match = {
		class = "scratchpad",
	},
	float = true,
	center = true,
	size = { "(monitor_w*0.5)", "(monitor_h*0.5)" },
	animation = "slide",
})

hl.window_rule({
	name = "mini-scratchpads",
	match = {
		class = "scratchpad-mini",
	},
	float = true,
	center = true,
	size = { "(monitor_w*0.3)", "(monitor_h*0.4)" },
	animation = "slide",
})

-- Specific App Rules.

hl.window_rule({
	name = "xwaylandvideobridge",
	match = {
		class = "videobridge",
	},
	opacity = "0.0 override 0.0 override",
	no_anim = true,
	no_blur = true,
	no_initial_focus = true,
	max_size = { 800, 600 },
})

hl.window_rule({
	name = "music-app-not-lock",
	idle_inhibit = "focus",
	match = {
		class = "^([Ss]potify)$",
	},
})

hl.window_rule({
	name = "apps-fullscreen",
	idle_inhibit = "fullscreen",
	match = {
		class = "^(LibreWolf)|floorp|Brave|firefox|chromium|zen-alpha|celluloid|mpv|vlc)$",
	},
})

-- Layer Rules.

hl.layer_rule({
	match = { namespace = "swaync-notification-window" },
	ignore_alpha = 0,
	animation = "slide",
})

hl.layer_rule({
	match = { namespace = "swaync-control-center" },
	ignore_alpha = 0,
	animation = "slide",
})

hl.layer_rule({
	match = { namespace = "rofi", class = "^(wleave)$" },
	ignore_alpha = 0,
	animation = "popin",
	blur = true,
})

hl.layer_rule({
	match = { namespace = "swayosd" },
	animation = "fade",
})

hl.layer_rule({
	match = { namespace = "selection" },
	animation = "fade",
})

hl.layer_rule({
	match = { namespace = "hyprlock" },
	animation = "fade",
})

hl.layer_rule({
	match = { namespace = "hyprpicker" },
	no_anim = true,
})
