-- VIP SYSTEM BY THEODOR
-- CHANGE THE GAMEPASS ID UNDER THIS

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local VIP_GAMEPASS_ID = 12345678 -- CHANGE THIS

Players.PlayerAdded:Connect(function(player)

	-- Create GUI
	local gui = Instance.new("ScreenGui")
	gui.Name = "VIPGui"
	gui.ResetOnSpawn = false
	gui.Parent = player:WaitForChild("PlayerGui")

	local button = Instance.new("TextButton")
	button.Size = UDim2.new(0, 200, 0, 60)
	button.Position = UDim2.new(0.5, -100, 0.8, 0)
	button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.Font = Enum.Font.GothamBold
	button.TextSize = 22
	button.Text = "BUY VIP"
	button.Parent = gui

	-- Button click = open gamepass
	button.MouseButton1Click:Connect(function()
		MarketplaceService:PromptGamePassPurchase(player, VIP_GAMEPASS_ID)
	end)
end)
