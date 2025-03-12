-- Load library
local library = loadstring(game:HttpGet("https://pastebin.com/raw/WME4s0kY", true))()

-- Create Windows
local lib = library:CreateWindow({text = "Example"})

-- Simple Toggle Inside The GUi
lib:AddToggle("Toggle Example", function(state)
    _G.toggle = state
    while _G.togle do
        wait(2)
      print("Toggle Enabled!")
    end
end)

-- Button Example Inside The Gui
lib:AddButton("Button Example", function()
   print('Button Clicked!!')
end)

-- A Destory Button To Destroy The Gui
lib:AddDestroy("Destroy GUI", function()
    library.gui:Destroy()
end)
