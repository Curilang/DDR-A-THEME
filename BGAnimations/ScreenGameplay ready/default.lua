local t = Def.ActorFrame{};


t[#t+1] = Def.ActorFrame {
	LoadActor( "scene_choice_stage_ready" )..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoom(1):blend(('BlendMode_Add'));
		end;
		OnCommand=function(self)
			self:diffusealpha(0):zoom(2):linear(0.264):diffusealpha(1):zoom(1)
			self:sleep(1.032)
			self:linear(0.04):zoomy(0):diffusealpha(0)
		end;
	};
	
	--Left
	LoadActor( "scene_choice_ready" )..{
		OnCommand=function(self)
		self:zoom(1):x(SCREEN_LEFT-556):y(SCREEN_CENTER_Y+5)
		self:sleep(0.116)
		self:linear(0.217):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+5):linear(0.2):zoom(1)
		self:sleep(0.76)
		self:linear(0.04):diffusealpha(0):zoomy(0);
		end;
	};
	--Right
	LoadActor( "scene_choice_ready" )..{
		OnCommand=function(self)
		self:zoom(1):x(SCREEN_RIGHT+556):y(SCREEN_CENTER_Y+5)
		self:sleep(0.116):linear(0.217)
		self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+5):linear(0.2)
		self:zoom(1)
		self:sleep(0.76):linear(0.04):diffusealpha(0):zoomy(0);
		end;
	};
	
	--Glow
	LoadActor( "scene_choice_ready" )..{
		OnCommand=function(self)
		self:diffusealpha(0):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+5):sleep(0.283):diffusealpha(0.5)
		self:zoom(1.15):linear(0.017):diffusealpha(1):linear(0.133):diffusealpha(0):zoom(1.1);
		end;
	};
};

return t
