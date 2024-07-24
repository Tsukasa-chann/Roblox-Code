--rawr

if game.PlaceId == 18153052081 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Rawr", HidePremium = false, SaveConfig = true, ConfigFolder = "rawrConfig"})
    
    --value
    _G.autoTap = true
    _G.autoFight1 = true
    _G.autoAttack = true
    _G.autoRebirth = true

    --function
    
    function autoTap()
        while _G.autoTap == true do
        local args = {
            [1] = 0,
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").Events.ClickEvent:FireServer(unpack(args))
        wait(0.00000000000000000000000001)
    end
    end

    function autoFight1()
        while _G.autoFight1 == true do
            local args = {
                [1] = workspace.enemy.scene0.enemy1,
                [2] = false
            }
            
            game:GetService("ReplicatedStorage").Events.Action.CombatStartEvent:FireServer(unpack(args))
            wait(0.3)
    end 
    end

    function autoAttack()
        while _G.autoAttack == true do
            local args = {
                [1] = 9999999999
            }
            
            game:GetService("ReplicatedStorage").Events.Fight.RefreshEnemyHpEvent:FireServer(unpack(args))
            wait(0.1)
    end
    end

    function autoRebirth()
        while _G.autoRebirth == true do
            game:GetService("ReplicatedStorage").Events.Rebirth.RebirthEvent:FireServer()
            wait(1)
    end
    end

    

    --tab
    local Ftab = Window:MakeTab({
        Name = "AutoFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local Fighttab = Window:MakeTab({
        Name = "Fight Farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    --toggle

    Ftab:AddToggle({
        Name = "Auto Tap",
        Default = false,
        Callback = function(Value)
            _G.autoTap = (Value)
            autoTap()
        end    
    })

    Fighttab:AddToggle({
        Name = "Auto Fight1",
        Default = false,
        Callback = function(Value)
            _G.autoFight1 = (Value)
            autoFight1()
        end    
    })
    
    Ftab:AddToggle({
        Name = "Auto Attack",
        Default = false,
        Callback = function(Value)
            _G.autoAttack = (Value)
            autoAttack()
        end    
    })
    Ftab:AddToggle({
        Name = "Auto Rebirth",
        Default = false,
        Callback = function(Value)
            _G.autoRebirth = (Value)
            autoRebirth()
        end    
    })



    end 
    OrionLib:Init()
