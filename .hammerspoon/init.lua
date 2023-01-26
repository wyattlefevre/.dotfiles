local appKeys = {
  ["J"] = "alacritty",
  ["K"] = "Google Chrome",
  [";"] = "Spotify",
  ["0"] = "Slack",
  ["8"] = "Obsidian",
  ["9"] = "Notion",
  ["-"] = "Clickup",
}

for k, app in pairs(appKeys) do
  hs.hotkey.bind({ "cmd" }, k, function()
    hs.application.open(app)
  end)
end

hs.hotkey.bind({ "cmd" }, "L", function()
  local win = hs.window.focusedWindow()
  local uuid = win:screen():getUUID()
  local spaces = hs.spaces.spacesForScreen(uuid)
  hs.spaces.gotoSpace(spaces[2])
end)
