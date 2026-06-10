hl.on("hyprland.start", function()
	-- Apps.
	hl.exec_cmd("spotify")
	-- Terminal Apps.
	hl.exec_cmd("kitty --class btop btop")
	hl.exec_cmd("kitty --class nvtop nvtop")
end)
