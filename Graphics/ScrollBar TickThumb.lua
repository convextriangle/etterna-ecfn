return Def.ActorFrame {
	LoadActor("_tick.png")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add')
		end;
	},
	LoadActor("_tick.png")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffuseshift():effectclock('bgm'):effectperiod(3):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0)
		end;
	},
}