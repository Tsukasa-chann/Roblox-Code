--rawr

if game.PlaceId == 18153052081 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Rawr", HidePremium = false, SaveConfig = true, ConfigFolder = "rawrConfig"})
    
    --value
    _G.autoTap = true
    _G.autoBoss1 = true
    _G.autoAttack = true
    _G.autoRebirth = true
    _G.autoBWeapon = true
    _G.autoBPet = true

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

    function autoBoss1()
        while _G.autoBoss1 == true do
            local args = {
                [1] = 1
            }
            
            game:GetService("ReplicatedStorage").Events.MapBoss.HurtEnemyEvent:FireServer(unpack(args))
            local args = {
                [1] = 2
            }
            
            game:GetService("ReplicatedStorage").Events.MapBoss.HurtEnemyEvent:FireServer(unpack(args))
            local args = {
                [1] = 3
            }
            
            game:GetService("ReplicatedStorage").Events.MapBoss.HurtEnemyEvent:FireServer(unpack(args))
            local args = {
                [1] = 4
            }
            
            game:GetService("ReplicatedStorage").Events.MapBoss.HurtEnemyEvent:FireServer(unpack(args))
            local args = {
                [1] = 5
            }

            game:GetService("ReplicatedStorage").Events.MapBoss.HurtEnemyEvent:FireServer(unpack(args))
            local args = {
                [1] = 6
            }
            
            game:GetService("ReplicatedStorage").Events.MapBoss.HurtEnemyEvent:FireServer(unpack(args))
            local args = {
                [1] = 7
            }
            
            game:GetService("ReplicatedStorage").Events.MapBoss.HurtEnemyEvent:FireServer(unpack(args))
            local args = {
                [1] = 8
            }
            
            game:GetService("ReplicatedStorage").Events.MapBoss.HurtEnemyEvent:FireServer(unpack(args))
            local args = {
                [1] = 9
            }
            
            game:GetService("ReplicatedStorage").Events.MapBoss.HurtEnemyEvent:FireServer(unpack(args))
            local args = {
                [1] = 10
            }

            game:GetService("ReplicatedStorage").Events.MapBoss.HurtEnemyEvent:FireServer(unpack(args))
            local args = {
                [1] = 11
            }

            game:GetService("ReplicatedStorage").Events.MapBoss.HurtEnemyEvent:FireServer(unpack(args))
            wait(0.00000000000000000000000001)
    end 
    end

    function autoAttack()
        while _G.autoAttack == true do
            local args = {
                [1] = 9999999999
            }
            
            game:GetService("ReplicatedStorage").Events.Fight.RefreshEnemyHpEvent:FireServer(unpack(args))
            wait(0.05)
    end
    end

    function autoRebirth()
        while _G.autoRebirth == true do
            game:GetService("ReplicatedStorage").Events.Rebirth.RebirthEvent:FireServer()
            wait(1)
    end
    end

    function autoBPet()
        while _G.autoBPet == true do
            game:GetService("ReplicatedStorage").Events.Pets.EquipBestEvent:FireServer()
            wait(1)
        end
    end

    function autoBWeapon()
        while _G.autoBWeapon == true do
            local args = {
                [1] = 1
            }
            
            game:GetService("ReplicatedStorage").Events.Equip.EquipBestEvent:FireServer(unpack(args))
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
        Name = "White Bear Monster",
        Default = false,
        Callback = function(Value)
            _G.autoBoss1 = (Value)
            autoBoss1()
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
    Ftab:AddToggle({
        Name = "Auto Best Pet",
        Default = false,
        Callback = function(Value)
            _G.autoBPet = (Value)
            autoBPet()
        end    
    })
    Ftab:AddToggle({
        Name = "Auto Best Weapon",
        Default = false,
        Callback = function(Value)
            _G.autoBWeapon = (Value)
            autoBWeapon()
        end    
    })



    end 
    OrionLib:Init()
