local t = Def.ActorFrame {
    Name = "ProfileTab",
    InitCommand = function(self)
        self:visible(false)
    end,
    TabChangedMessageCommand = function(self, params)
        self:visible(params.name == self:GetName())
        if self:IsVisible() then
            self:GetChild("TilDeathProfileDisplay"):queuecommand("On")
        else
            self:GetChild("TilDeathProfileDisplay"):queuecommand("Off")
        end
    end,
}

t[#t + 1] = LoadActor("../tabdecorations/tab_background") .. {
    InitCommand = function(self)
        self:xy(SCREEN_CENTER_X - 185, SCREEN_CENTER_Y + 15)
        self:zoomx(0.75):zoomy(0.45)
    end,
}

t[#t + 1] = LoadActor("profile") .. {
    Name = "TilDeathProfileDisplay",
}

return t
