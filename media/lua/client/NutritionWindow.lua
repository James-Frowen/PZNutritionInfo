function ISCharacterScreen:render_NutritionInfo()
    local cal = string.format("%0.2f", self.char:getNutrition():getCalories());
    local carb = string.format("%0.2f", self.char:getNutrition():getCarbohydrates());
    local lip = string.format("%0.2f", self.char:getNutrition():getLipids());
    local prot = string.format("%0.2f", self.char:getNutrition():getProteins());

    -- local x = self.xOffset;
    local x = self.width - 60;
    local z = self.height - 70;

    self:drawTextRight("Cal", x, z, 1, 1, 1, 1, UIFont.Small);
    self:drawText(cal, x + 10, z, 1, 1, 1, 0.5, UIFont.Small);
    z = z + 14
    self:drawTextRight("Carb", x, z, 1, 1, 1, 1, UIFont.Small);
    self:drawText(carb, x + 10, z, 1, 1, 1, 0.5, UIFont.Small);
    z = z + 14
    self:drawTextRight("Lip", x, z, 1, 1, 1, 1, UIFont.Small);
    self:drawText(lip, x + 10, z, 1, 1, 1, 0.5, UIFont.Small);
    z = z + 14
    self:drawTextRight("Prot", x, z, 1, 1, 1, 1, UIFont.Small);
    self:drawText(prot, x + 10, z, 1, 1, 1, 0.5, UIFont.Small);
end
