local settings = {
    Check_Twitter_Codes = true,
    Delete_Effects = false,
    Sell_Energy = true,
    Do_Lifts = true,
    Punching = true
}

if settings.Delete_Effects == true then do
    pcall(function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Frame.FrameYY.FrameXY.Effect:Destroy()
    end)
end
end

if settings.Check_Twitter_Codes == true then do
    for _,v in pairs(game:GetService("ReplicatedStorage").Codes:GetChildren()) do
        game:GetService("ReplicatedStorage").Network.Port1:FireServer("Code", v)
    end
end
end

for i,v in pairs(getgc()) do
    if type(v) == "function" and not is_synapse_function(v) and islclosure(v) then
        if #debug.getupvalues(v) == 5 and #debug.getconstants(v) == 12 and debug.getconstants(v)[1] == [[InVitalityTrainingRange]] and debug.getconstants(v)[2] == [[tick]] and debug.getconstants(v)[4] == [[Game]] and debug.getconstants(v)[5] == [[PvP]] and debug.getconstants(v)[6] == [[Value]] and debug.getconstants(v)[7] == [[PvPBoss]] and debug.getconstants(v)[8] == [[Port1]] and debug.getconstants(v)[9] == [[Click]] and debug.getconstants(v)[10] == [[FireServer]] and debug.getconstants(v)[11] == [[AutoClick]] then
            debug.setupvalue(v, 4, 0)
        end
    end
end

while wait() do
    if settings.Punching == true then do 
        game:GetService("ReplicatedStorage").Network.Port1:FireServer("Punching", game:GetService("Workspace").PowerTrainingFolder.Model)
    end
    if settings.Do_Lifts == true then do
        game:GetService("ReplicatedStorage").Network.Port1:FireServer("Click")
    end
    if settings.Sell_Energy == true then do
        game:GetService("ReplicatedStorage").Network.Port1:FireServer("SellEnergy")
    end
end
end
end
end
