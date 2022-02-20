--[[ Credits to Hidden#4642 I made this. :) ]]--
--[[ Set the AC = true if you want to turn off the autoclicker like disable it within the keybinds too. ]]--
--[[ Cool Auto Clicker Script ]]--

local AC = false
local Key = Enum.KeyCode.F

game:GetService("UserInputService").InputBegan:Connect(function(k,g)
	if not g and k.KeyCode == Key then
		AC = not AC
	end
end)

while wait() do
	if AC then
		pcall(function()
			local OP = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Tool'
			OP:Activate()
			OP:Activate()
		end)
	end
end
