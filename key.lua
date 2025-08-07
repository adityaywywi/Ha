-- YoxanXHub | Custom Key System UI
local KEY = "YOXANXHUB_Ep9vXa3NtLjQwZ"
local LOAD_URL = "https://raw.githubusercontent.com/adityaywywi/Ha/main/imtrying.lua"

-- Destroy existing GUI (prevent duplicates)
pcall(function()
    game.CoreGui:FindFirstChild("YoxanXKeyUI"):Destroy()
end)

-- Create ScreenGui
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "YoxanXKeyUI"
gui.ResetOnSpawn = false

-- Frame
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 320, 0, 180)
frame.Position = UDim2.new(0.5, -160, 0.5, -90)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0
frame.Name = "MainFrame"
frame.BackgroundTransparency = 0.05

-- UICorner
local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 12)

-- Title
local title = Instance.new("TextLabel", frame)
title.Text = "YoxanXHub | Key System"
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0, 35)
title.Position = UDim2.new(0, 0, 0, 8)

-- InputBox
local box = Instance.new("TextBox", frame)
box.PlaceholderText = "Enter your key..."
box.Font = Enum.Font.Gotham
box.TextSize = 16
box.TextColor3 = Color3.fromRGB(255, 255, 255)
box.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
box.Size = UDim2.new(0.85, 0, 0, 35)
box.Position = UDim2.new(0.075, 0, 0, 60)
box.ClearTextOnFocus = false

local boxCorner = Instance.new("UICorner", box)
boxCorner.CornerRadius = UDim.new(0, 8)

-- Button
local button = Instance.new("TextButton", frame)
button.Text = "Submit"
button.Font = Enum.Font.GothamBold
button.TextSize = 16
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundColor3 = Color3.fromRGB(0, 170, 90)
button.Size = UDim2.new(0.85, 0, 0, 35)
button.Position = UDim2.new(0.075, 0, 0, 110)

local btnCorner = Instance.new("UICorner", button)
btnCorner.CornerRadius = UDim.new(0, 8)

-- Notification Label
local notif = Instance.new("TextLabel", frame)
notif.Text = ""
notif.Font = Enum.Font.Gotham
notif.TextSize = 14
notif.TextColor3 = Color3.fromRGB(255, 255, 255)
notif.BackgroundTransparency = 1
notif.Size = UDim2.new(1, -20, 0, 20)
notif.Position = UDim2.new(0, 10, 1, -25)
notif.TextWrapped = true

-- Logic
button.MouseButton1Click:Connect(function()
    if box.Text == KEY then
        notif.Text = "✅ Key correct! Loading script..."
        wait(1)
        gui:Destroy()
        loadstring(game:HttpGet(LOAD_URL))()
    else
        notif.Text = "❌ Invalid key. Try again."
    end
end)
