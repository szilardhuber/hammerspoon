gridSize = 6

left = function(width)
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / gridSize * width
  f.h = max.h
  win:setFrame(f)
end

right = function(width)
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / gridSize) * (gridSize - width)
  f.y = max.y
  f.w = max.w / gridSize * width
  f.h = max.h
  win:setFrame(f)
end

hs.hotkey.bind({"cmd", "alt"}, "1", function()
  left(1)
end)
hs.hotkey.bind({"cmd", "alt"}, "2", function()
  left(2)
end)
hs.hotkey.bind({"cmd", "alt"}, "3", function()
  left(3)
end)
hs.hotkey.bind({"cmd", "alt"}, "4", function()
  left(4)
end)
hs.hotkey.bind({"cmd", "alt"}, "5", function()
  left(5)
end)
hs.hotkey.bind({"cmd", "alt"}, "6", function()
  left(6)
end)

hs.hotkey.bind({"cmd", "alt", "shift"}, "1", function()
  right(1)
end)
hs.hotkey.bind({"cmd", "alt", "shift"}, "2", function()
  right(2)
end)
hs.hotkey.bind({"cmd", "alt", "shift"}, "3", function()
  right(3)
end)
hs.hotkey.bind({"cmd", "alt", "shift"}, "4", function()
  right(4)
end)
hs.hotkey.bind({"cmd", "alt", "shift"}, "5", function()
  right(5)
end)
hs.hotkey.bind({"cmd", "alt", "shift"}, "6", function()
  right(6)
end)

