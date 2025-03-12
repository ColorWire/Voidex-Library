# Voidex Hub Library Usage

## Overview
This is an example script to demonstrate how to create a basic GUI using Voidex Hub in Roblox with Lua. The script includes features such as toggles, buttons, and a destroy option for the GUI.

## Features
- **🔘 Toggle Example**: A simple toggle that prints a message when enabled.
- **🔲 Button Example**: A button that prints a message when clicked.
- **🛑 Destroy GUI**: A button to destroy the GUI.

## Installation

1. Download the Voidex Hub library from the provided [Library](https://github.com/ColorWire/Voidex-Library/blob/main/example.lua).
2. Copy the following Lua code into your Roblox script editor.

![Alt text](https://share.creavite.co/67d169f189908441e5524cf5.gif)


```lua
-- Load library
local library = loadstring(game:HttpGet("https://pastebin.com/raw/WME4s0kY", true))()

-- Create Windows
local lib = library:CreateWindow({text = "Example"})

-- Simple Toggle Inside The GUI
lib:AddToggle("Toggle Example", function(state)
    _G.toggle = state
    while _G.toggle do
        wait(2)
        print("Toggle Enabled!")
    end
end)

-- Button Example Inside The GUI
lib:AddButton("Button Example", function()
    print('Button Clicked!!')
end)

-- A Destroy Button To Destroy The GUI
lib:AddDestroy("Destroy GUI", function()
    library.gui:Destroy()
end)
