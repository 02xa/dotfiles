hl.on("hyprland.start", function()
	-- Services.
	-- Wallpaper engine.
	hl.exec_cmd("awww-daemon --format xrgb")
	-- Automounter for Devices.
	hl.exec_cmd("udiskie")
	-- Pyprland Daemon.
	hl.exec_cmd("pypr --debug /tmp/pypr.log")
	-- Bar.
	hl.exec_cmd("waybar")
	-- Notification Daemon.
	hl.exec_cmd("swaync")
	-- OSD Window.
	hl.exec_cmd("swayosd-server")
	-- Idle daemon to screen lock.
	hl.exec_cmd("hypridle")
	-- Polkit authentication.
	hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
	-- Audio.
	hl.exec_cmd("easyeffects --gapplication-service")
	-- Screen sharing and portals.
	hl.exec_cmd("$HOME/.config/hypr/scripts/portal")

	-- xwaylandvideobridge & # Off when using Vesktop instead of Discord

	-- Hyprshade with vibrance.
	hl.exec_cmd("hyprshade on vibrance")
end)
