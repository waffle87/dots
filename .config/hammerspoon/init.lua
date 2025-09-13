local wf = hs.window.filter.new():setCurrentSpace(true):setDefaultFilter()

hs.hotkey.bind({ "cmd" }, "h", function()
	wf:focusWindowWest(nil, true, true)
end)

hs.hotkey.bind({ "cmd" }, "l", function()
	wf:focusWindowEast(nil, true, true)
end)

hs.hotkey.bind({ "cmd" }, "k", function()
	wf:focusWindowNorth(nil, true, true)
end)

hs.hotkey.bind({ "cmd" }, "j", function()
	wf:focusWindowSouth(nil, true, true)
end)
