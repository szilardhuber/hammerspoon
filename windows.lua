gridSize = 6

left = function(width)
  if width > gridSize then width = gridSize end
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
  if width > gridSize then width = gridSize end
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
hs.hotkey.bind({"cmd", "alt"}, "7", function()
  left(7)
end)
hs.hotkey.bind({"cmd", "alt"}, "8", function()
  left(8)
end)
hs.hotkey.bind({"cmd", "alt"}, "9", function()
  left(9)
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
hs.hotkey.bind({"cmd", "alt", "shift"}, "7", function()
  right(7)
end)
hs.hotkey.bind({"cmd", "alt", "shift"}, "8", function()
  right(8)
end)
hs.hotkey.bind({"cmd", "alt", "shift"}, "9", function()
  right(9)
end)

