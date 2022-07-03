-- seperate class to set up extra renderer
-- this allow the render_NutritionInfo function to be reloaded at runtime
local NutritionInfo_HasSetup = false

local function NutritionInfo_Setup()
    if not NutritionInfo_HasSetup then
        NutritionInfo_HasSetup = true

        local old_render = ISCharacterScreen.render
        function ISCharacterScreen:render()
            local result = old_render(self)
            self:render_NutritionInfo()
            return result
        end

    end
end

Events.OnGameStart.Add(NutritionInfo_Setup);
