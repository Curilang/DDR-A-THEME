local t = Def.ActorFrame{};
local song = GAMESTATE:GetCurrentSong();
--local numA = math.random(1,15); REAL RANDOMMOVIES IN "DDR A- A20 PLUS"
local numA = math.random(1,14); 
--local num2014 = math.random(1,13); REAL RANDOMMOVIES IN "DDR 2014"
local numX = math.random(1,6); --REAL RandomMovies
--local numSN = math.random(1,20); REAL RANDOMMOVIES IN "DDR SN AND SN2" AND THIS LINK HAS THE 20 STAGES https://zenius-i-vanisher.com/v5.2/thread?threadid=10714
local numSN = math.random(1,5); -- ONLY 5 RANDOMMOVIES IN THIS LINK https://zenius-i-vanisher.com/v5.2/viewthread.php?threadid=5614
--local numSN = math.random(1,--); I DON'T KNOW HOW MANY RANDOMMOVIES ARE IN THIS LINK https://www.youtube.com/watch?v=5RXWfVTG4VI&ab_channel=Dr.Pando7w7
--local numYUNI = math.random(1,9); THE NUMBER OF "YUNI'S" IN DDR IN THE STAGE DANCING RAYS (YUNI SN 1, YUNI SN 2, YUNI X VERSION 1, YUNI X VERSION 2, YUNI DDR X2-2014 IN DANCING RAYS X2-2014, YUNI DDR A, YUNI KAC, YUNI DDR A20, YUNI DDR A20 PLUS, YUNI DDR X2 IN DANCING RAYS DDR A-A20 PLUS)   
--This local means the folder RandomMovies in Stepmania folder
local rootPath = "/RandomMovies/"
--To make it works correctly you will need a few characters videos, check the videos to have an idea:
--BOOM BOOM BLUE 		https://www.youtube.com/watch?v=mKq8v1TPVZg&ab_channel=ZEROWOLF
--BOOM BOOM DARK 		https://www.youtube.com/watch?v=YGlbO_daUHY&ab_channel=ZEROWOLF
--BOOM BOOM GREEN 		https://www.youtube.com/watch?v=YsZ_CdmJDOw&t=12s&ab_channel=ZEROWOLF
--BOOM BOOM LIGHT 		https://www.youtube.com/watch?v=GlhUwT7Yo4k&ab_channel=ZEROWOLF
--BOOM BOOM RED  		https://www.youtube.com/watch?v=kpCKp9u4ZLg&ab_channel=ZEROWOLF
--BOOM BOOM WHITE 		https://www.youtube.com/watch?v=UlF2CVXsizc&ab_channel=ZEROWOLF
--BOOM BOOM YELLOW 		https://www.youtube.com/watch?v=_zSdZ2osLbA&ab_channel=ZEROWOLF
--BOOM BOOM 			https://www.youtube.com/watch?v=ZPjTWTUrx2I&ab_channel=ZEROWOLF
--CLUB 					https://www.youtube.com/watch?v=NbS86A_XKPU&ab_channel=ZEROWOLF
--CRYSTALSTADIUM		https://www.youtube.com/watch?v=a-ok7zG3yTM&ab_channel=ZEROWOLF
--CYBER					https://www.youtube.com/watch?v=ogWyY-oMd7E&ab_channel=ZEROWOLF
--DANCING RAYS			https://www.youtube.com/watch?v=IfKp7CGa4r8&t=14s&ab_channel=ZEROWOLF
--DAWN STREET			https://www.youtube.com/watch?v=5459MDI69tA&ab_channel=ZEROWOLF
--LOVE SWEETS			https://www.youtube.com/watch?v=i2fMOIhrpgo&ab_channel=ZEROWOLF
--YUNI					https://www.youtube.com/watch?v=6q0aKVgFHTc&t=6s&ab_channel=ZEROWOLF
--ACE FOR ACES_encore 	https://www.youtube.com/watch?v=hnbWuHN4vM8&ab_channel=%E3%82%B3%E3%82%A6%E3%82%B8P%2FDDR-KOJI
--And those character videos will be called
--JUST IN CASE THAT YOU HAVE THESE DIFFERENT RANDOMMOVIES, CALL IT LIKE THE VERSION

--THESE ONES CAN SELECT IF YOU WANT RANDOMMOVIES LIKE DDR A OR DDR 2014 
--CALL IT LIKE "DDR A" IF YOU DON'T HAVE THE "DDR 2014" ANIMATIONS OR CALL IT LIKE "DDR 2014" IF YOU DON'T HAVE THE "DDR A" ANIMATIONS
--AT THE MOMENT, THIS FILE IS CODIFING TO "DDR A" RANDOMMOVIES

--BOOM BOOM BLUE 		STAGE_A_1 OR STAGE_2014_1
--BOOM BOOM DARK 		STAGE_A_2 OR STAGE_2014_2
--BOOM BOOM GREEN 		STAGE_A_3 OR STAGE_2014_3
--BOOM BOOM LIGHT 		STAGE_A_4 OR STAGE_2014_4
--BOOM BOOM RED  		STAGE_A_5 OR STAGE_2014_5
--BOOM BOOM WHITE 		STAGE_A_6 OR STAGE_2014_6
--BOOM BOOM YELLOW 		STAGE_A_7 OR STAGE_2014_7

--THIS ONE CAN SELECT IF YOU WANT "DDR A" OR "DDR 2014" OR "DDR X"
--CALL IT LIKE "DDR A" IF YOU DON'T HAVE THE "DDR 2014" ANIMATIONS OR CALL IT LIKE "DDR 2014" IF YOU DON'T HAVE THE "DDR A" ANIMATIONS
--AT THE MOMENT, THIS FILE IS CODIFING TO "DDR A" RANDOMMOVIES

--BOOM BOOM 			STAGE_A_8 OR STAGE_2014_8 OR STAGE_X_1

--THIS ONE HAVE TO BE CALLED EXACTLY LIKE THIS

--CLUB 					STAGE_A_9

--THESE ONE CAN SELECT IF YOU WANT "DDR A" OR "DDR 2014" OR "DDR X"
--SOME OF THESE COULD BE THE SAME VIDEO IN "DDR A" AND "DDR 2014"
--CALL IT LIKE "DDR A" IF YOU DON'T HAVE THE "DDR 2014" ANIMATIONS OR CALL IT LIKE "DDR 2014" IF YOU DON'T HAVE THE "DDR A" ANIMATIONS
--AT THE MOMENT, THIS FILE IS CODIFING TO "DDR A" RANDOMMOVIES

--CRYSTALSTADIUM		STAGE_A_10 OR STAGE_2014_9 OR STAGE_X_3
--CYBER					STAGE_A_11 OR STAGE_2014_10
--DAWN STREET			STAGE_A_13 OR STAGE_2014_12 OR STAGE_X_5
--LOVE SWEETS			STAGE_A_14 OR STAGE_2014_13 OR STAGE_X_6

--THIS ONE HAS DIFFERENT ANIMATIONS IN "DDR A" AND "DDR 2014"
--CALL IT LIKE "DDR A" IF YOU DON'T HAVE THE "DDR 2014" ANIMATIONS OR CALL IT LIKE "DDR 2014" IF YOU DON'T HAVE THE "DDR A" ANIMATIONS
--AT THE MOMENT, THIS FILE IS CODIFING TO "DDR A" RANDOMMOVIES

--DANCING RAYS			STAGE_A_12 OR STAGE_2014_11 OR STAGE_X_4



local BGChanges = GAMESTATE:GetCurrentSong():HasBGChanges() == false

if  BGChanges then
--BOOM BOOM BLUE

	if		
	--DDR 2014
		song:GetDisplayFullTitle() == "chaos eater" or 
	--DDR A
		song:GetDisplayFullTitle() == "Neutrino" or 
		song:GetDisplayFullTitle() == "POSSESSION (20th Anniversary Mix)" or 
	--DDR A20 
		song:GetDisplayFullTitle() == "ナイト・オブ・ナイツ (Ryu☆Remix)" or
		song:GetDisplayFullTitle() == "ALPACORE" or 
		song:GetDisplayFullTitle() == "Avenger" or
	--DDR A20 PLUS		
		song:GetDisplayFullTitle() == "Evans" or 
		song:GetDisplayFullTitle() == "Next Phase" 
		then
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_1.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_1.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_"..numX)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
--BOOM BOOM DARK
	elseif 
	--DDR 2ndMIX
		song:GetDisplayFullTitle() == "PARANOiA MAX~DIRTY MIX~" or
	--DDR 3rdMIX
		song:GetDisplayFullTitle() == "DEAD END" or
	--DDR SuperNOVA 2
		song:GetDisplayFullTitle() == "DEAD END (GROOVE RADAR Special)" or
	--DDR A20
		song:GetDisplayFullTitle() == "Drop The Bounce" or
		song:GetDisplayFullTitle() == "Splash Gold" or
	--DDR A20 PLUS
		song:GetDisplayFullTitle() == "PANIC HOLIC"		
		then 
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_2.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_2.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_"..numX)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
--BOOM BOOM GREEN
	elseif	
	--DDR 2014
		song:GetDisplayFullTitle() == "Destination" or
	--DDR A		
		song:GetDisplayFullTitle() == "Emera" or 
		song:GetDisplayFullTitle() == "New Century" or 
		song:GetDisplayFullTitle() == "out of focus" 
		then
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_3.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_3.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_"..numX)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
--BOOM BOOM LIGHT
	elseif 	
	--DDR 2ndMIX
		song:GetDisplayFullTitle() == "HERO" or
		song:GetDisplayFullTitle() == "EL RITMO TROPICAL" or
	--DDR 3rdMIX
		song:GetDisplayFullTitle() == "BUMBLE BEE" or
		song:GetDisplayFullTitle() == "FOLLOW THE SUN (90 IN THE SHADE MIX)" or
		song:GetDisplayFullTitle() == "HOLIDAY" or	
		song:GetDisplayFullTitle() == "KEEP ON MOVIN'" or
		song:GetDisplayFullTitle() == "La Señorita" or
		song:GetDisplayFullTitle() == "MR. WONDERFUL" or
		song:GetDisplayFullTitle() == "OPERATOR" or
	--DDR A
		song:GetDisplayFullTitle() == "春風ブローインウィンド" or
		song:GetDisplayFullTitle() == "Be a Hero!" or
		song:GetDisplayFullTitle() == "Eternal Summer" or
		song:GetDisplayFullTitle() == "High School Love" or
		song:GetDisplayFullTitle() == "#OurMemories" or
	--DDR A20
		song:GetDisplayFullTitle() == "Afterimage d'automne" or
		song:GetDisplayFullTitle() == "BUTTERFLY (20th Anniversary Mix)" or
		song:GetDisplayFullTitle() == "CARTOON HEROES (20th Anniversary Mix)" or
		song:GetDisplayFullTitle() == "HAVE YOU NEVER BEEN MELLOW (20th Anniversary Mix)" or
		song:GetDisplayFullTitle() == "I Love You"	or
		song:GetDisplayFullTitle() == "Neverland"	or
		song:GetDisplayFullTitle() == "Right Time Right Way"	or
		song:GetDisplayFullTitle() == "SKY HIGH (20th Anniversary Mix)"	or
	--DDR A20 PLUS
		song:GetDisplayFullTitle() == "彼方のリフレシア" or
		song:GetDisplayFullTitle() == "追憶のアリア" or
		song:GetDisplayFullTitle() == "take me higher"
		then
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_4.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_4.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_"..numX)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
--BOOM BOOM RED
	elseif	
	--DDR 2014
		song:GetDisplayFullTitle() == "Samurai Shogun vs. Master Ninja" or 
	--DDR A
		song:GetDisplayFullTitle() == "Come to Life" or 
		song:GetDisplayFullTitle() == "Ishtar" or 
		song:GetDisplayFullTitle() == "Love You More" or 
		song:GetDisplayFullTitle() == "MAX 360" or 
		song:GetDisplayFullTitle() == "Pursuer" or 
		song:GetDisplayFullTitle() == "RISING FIRE HAWK" or 
	--DDR A20
		song:GetDisplayFullTitle() == "ORCA" or 
		song:GetDisplayFullTitle() == "Rampage Hero" or
		song:GetDisplayFullTitle() == "SWEET HOME PARTY" or
	--DDR A20 PLUS
		song:GetDisplayFullTitle() == "DIGITALIZER" or
		song:GetDisplayFullTitle() == "DEADLOCK -Out Of Reach-" or
		song:GetDisplayFullTitle() == "MUTEKI BUFFALO" 
		then		
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_5.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_5.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_"..numX)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
--BOOM BOOM WHITE
	elseif	
	--DDR 2014
		song:GetDisplayFullTitle() == "HAPPY☆LUCKY☆YEAPPY" or
	--DDR A 
		song:GetDisplayFullTitle() == "Astrogazer" or 
		song:GetDisplayFullTitle() == "Cosy Catastrophe" or 
		song:GetDisplayFullTitle() == "Start a New Day" or 
		song:GetDisplayFullTitle() == "Vanquish The Ghost" or 
	--DDR A20
		song:GetDisplayFullTitle() == "Glitch Angel" or 
		song:GetDisplayFullTitle() == "Lachryma《Re\:Queen’M》" or 
		song:GetDisplayFullTitle() == "The World Ends Now" or 
	--DDR A20 PLUS
		song:GetDisplayFullTitle() == "Going Hypersonic" or
		song:GetDisplayFullTitle() == "Last Card" 
		then 
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_6.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_6.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_"..numX)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
--BOOM BOOM YELLOW
	elseif	
	--DDR 2014
		song:GetDisplayFullTitle() == "Sand Blow" or 
	--DDR A
		song:GetDisplayFullTitle() == "CHAOS Terror-Tech Mix" or 
	--DDR A20
		song:GetDisplayFullTitle() == "未完成ノ蒸氣驅動乙女 (DDR Edition)" or
		song:GetDisplayFullTitle() == "ランカーキラーガール" or
		song:GetDisplayFullTitle() == "Ace out" or 
		song:GetDisplayFullTitle() == "Firestorm" or 
		song:GetDisplayFullTitle() == "New Era" or 
	--DDR A20 PLUS
		song:GetDisplayFullTitle() == "世界の果てに約束の凱歌を -DDR Extended Megamix-" or 
		song:GetDisplayFullTitle() == "Lightspeed" 
		then 
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_7.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_7.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_"..numX)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
--BOOM BOOM
	elseif 	
	--DDR 2ndMIX
		song:GetDisplayFullTitle() == "PUT YOUR FAITH IN ME" or
	--DDR 3rdMIX
		song:GetDisplayFullTitle() == "AFRONOVA" or
		song:GetDisplayFullTitle() == "VOL.4" or
	--DDR A20
		song:GetDisplayFullTitle() == "CROSS" or
		song:GetDisplayFullTitle() == "Dead Heat" or
		song:GetDisplayFullTitle() == "Hunny Bunny" or
		song:GetDisplayFullTitle() == "ΩVERSOUL" or
		song:GetDisplayFullTitle() == "SODA GALAXY" or
		song:GetDisplayFullTitle() == "toy boxer" or
	--DDR A20 PLUS 
		song:GetDisplayFullTitle() == "蒼が消えるとき" or
		song:GetDisplayFullTitle() == "イノセントバイブル" or
		song:GetDisplayFullTitle() == "ウソツキ横丁は雨模様" or 
		song:GetDisplayFullTitle() == "御伽噺に幕切れを" or
		song:GetDisplayFullTitle() == "至上のラトゥーリア" or
		song:GetDisplayFullTitle() == "思想犯" or 
		song:GetDisplayFullTitle() == "ノルエピネフリン" or 
		song:GetDisplayFullTitle() == "花は折りたし梢は高し" or
		song:GetDisplayFullTitle() == "叛逆のディスパレート" or
		song:GetDisplayFullTitle() == "In the past" or
		song:GetDisplayFullTitle() == "LET'S CHECK YOUR LEVEL!" or
		song:GetDisplayFullTitle() == "Riot of Color"		
		then 
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_8.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_8.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_1.avi")..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------	
--CLUB
	elseif 		
	--DDR A20
		song:GetDisplayFullTitle() == "BLACK JACKAL" or
		song:GetDisplayFullTitle() == "DIGITAL LUV" or
		song:GetDisplayFullTitle() == "Seta Para Cima↑↑" or
		song:GetDisplayFullTitle() == "Small Steps" or
		song:GetDisplayFullTitle() == "Something Just Like This (Alesso Remix)" or
		song:GetDisplayFullTitle() == "Starlight in the Snow" or
	--DDR A20 PLUS
		song:GetDisplayFullTitle() == "CONNECT-" or
		song:GetDisplayFullTitle() == "Midnight Amaretto"
		then
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_9.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_"..num2014)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_"..numX)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------	
--CRYSTALSTADIUM
	elseif 	
	--DDR 1st
		song:GetDisplayFullTitle() == "TRIP MACHINE" or
	--DDR 2ndMIX	
		song:GetDisplayFullTitle() == "PARANOiA KCET ～clean mix～" or
		song:GetDisplayFullTitle() == "SP-TRIP MACHINE~JUNGLE MIX~" or
	--DDR 3rdMIX
		song:GetDisplayFullTitle() == "END OF THE CENTURY" or
		song:GetDisplayFullTitle() == "gentle stress (AMD SEXUAL MIX)" or
		song:GetDisplayFullTitle() == "La Señorita Virtual" or
		song:GetDisplayFullTitle() == "PARANOiA Rebirth" or 
		song:GetDisplayFullTitle() == "TRIP MACHINE~luv mix~" or
	--DDR SuperNOVA 2
		song:GetDisplayFullTitle() == "AM-3P (CHAOS Special)" or
		song:GetDisplayFullTitle() == "B4U (VOLTAGE Special)" or
		song:GetDisplayFullTitle() == "BRILLIANT 2U (STREAM Special)" or
		song:GetDisplayFullTitle() == "D2R (FREEZE Special)" or
		song:GetDisplayFullTitle() == "DYNAMITE RAVE (AIR Special)" or
	--DDR X
		song:GetDisplayFullTitle() == "AFRONOVA(X-Special)" or
		song:GetDisplayFullTitle() == "CANDY☆(X-Special)" or
		song:GetDisplayFullTitle() == "Dance Dance Revolution(X-Special)" or
		song:GetDisplayFullTitle() == "Healing Vision(X-Special)" or
		song:GetDisplayFullTitle() == "革命(X-Special)" or
		song:GetDisplayFullTitle() == "MAX 300(X-Special)" or
		song:GetDisplayFullTitle() == "MAXX UNLIMITED(X-Special)" or
		song:GetDisplayFullTitle() == "PARANOiA(X-Special)" or
		song:GetDisplayFullTitle() == "PARANOiA ETERNAL(X-Special)" or
		song:GetDisplayFullTitle() == "PARANOiA EVOLUTION(X-Special)" or
		song:GetDisplayFullTitle() == "PARANOiA MAX～DIRTY MIX～(X-Special)" or
		song:GetDisplayFullTitle() == "PARANOiA Rebirth(X-Special)" or
		song:GetDisplayFullTitle() == "SP-TRIP MACHINE～JUNGLE MIX～(X-Special)" or
		song:GetDisplayFullTitle() == "The legend of MAX(X-Special)" or
		song:GetDisplayFullTitle() == "TRIP MACHINE CLIMAX(X-Special)" or
		song:GetDisplayFullTitle() == "TRIP MACHINE(X-Special)" or
	--DDR A20 
		song:GetDisplayFullTitle() == "Helios" or
		song:GetDisplayFullTitle() == "LEVEL UP" or
		song:GetDisplayFullTitle() == "Mythomane" or
		song:GetDisplayFullTitle() == "Procyon" or
		song:GetDisplayFullTitle() == "Re\:GENERATION" or
		song:GetDisplayFullTitle() == "Six String Proof" or
		song:GetDisplayFullTitle() == "Waiting" or
	--DDR A20 PLUS
		song:GetDisplayFullTitle() == "アリスサイド・キャスリング" or
		song:GetDisplayFullTitle() == "梅雪夜" or
		song:GetDisplayFullTitle() == "City Never Sleeps" or
		song:GetDisplayFullTitle() == "DeStRuCtIvE FoRcE" or
		song:GetDisplayFullTitle() == "HYPERDRIVE" or
		song:GetDisplayFullTitle() == "Last Twilight" or
		song:GetDisplayFullTitle() == "Never See You Again" or
		song:GetDisplayFullTitle() == "Red Cape Theorem" or
		song:GetDisplayFullTitle() == "ROOM" or
		song:GetDisplayFullTitle() == "We're so Happy"
		then 
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_10.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_09.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_3.avi")..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
--CYBER
	elseif 	
	--DDR 2ndMIX
		song:GetDisplayFullTitle() == "AM-3P" or
		song:GetDisplayFullTitle() == "BRILLIANT 2U(Orchestra Groove)" or
		song:GetDisplayFullTitle() == "Smoke" or
		song:GetDisplayFullTitle() == "stomp to my beat" or 
	--DDR 3rdMIX	
		song:GetDisplayFullTitle() == "CAPTAIN JACK (GRANDALE REMIX)" or
		song:GetDisplayFullTitle() == "DAM DARIRAM" or 
		song:GetDisplayFullTitle() == "DROP THE BOMB" or
		song:GetDisplayFullTitle() == "GIMME GIMME GIMME" or
		song:GetDisplayFullTitle() == "GRADIUSIC CYBER ~AMD G5 MIX~" or
		song:GetDisplayFullTitle() == "IN THE NAVY '99 (XXL Disaster Remix)" or
		song:GetDisplayFullTitle() == "LOVE THIS FEELIN'" or
		song:GetDisplayFullTitle() == "ROCK BEAT" or
		song:GetDisplayFullTitle() == "THE RACE" or
	--DDR A20
		song:GetDisplayFullTitle() == "最小三倍完全数" or
		song:GetDisplayFullTitle() == "BLSTR" or
		song:GetDisplayFullTitle() == "Bounce Trippy" or
		song:GetDisplayFullTitle() == "CyberConnect" or
		song:GetDisplayFullTitle() == "District of the Shadows" or
		song:GetDisplayFullTitle() == "IRON HEART" or
		song:GetDisplayFullTitle() == "Our Soul" or
		song:GetDisplayFullTitle() == "Skywalking" or
	--DDR A20 PLUS
		song:GetDisplayFullTitle() == "Bang Pad(Werk Mix)" or
		song:GetDisplayFullTitle() == "Draw the Savage" or
		song:GetDisplayFullTitle() == "Hyper Bomb" or
		song:GetDisplayFullTitle() == "Inner Spirit -GIGA HiTECH MIX-" or
		song:GetDisplayFullTitle() == "Our Love" or
		song:GetDisplayFullTitle() == "Rave Accelerator" or
		song:GetDisplayFullTitle() == "Run The Show" or
		song:GetDisplayFullTitle() == "STEP MACHINE" or
		song:GetDisplayFullTitle() == "Vertigo"		
		then 
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_11.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_10.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_"..numX)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
--DANCING RAYS
	elseif 		
	--DDR 1ST
		song:GetDisplayFullTitle() == "Butterfly" or
		song:GetDisplayFullTitle() == "Have You Never Been Mellow" or
		song:GetDisplayFullTitle() == "KUNG FU FIGHTING" or
		song:GetDisplayFullTitle() == "LET'S GET DOWN" or
		song:GetDisplayFullTitle() == "Little Bitch" or
		song:GetDisplayFullTitle() == "MAKE IT BETTER" or
		song:GetDisplayFullTitle() == "My Fire (UKS Remix)" or
		song:GetDisplayFullTitle() == "STRICTLY BUSINESS" or
		song:GetDisplayFullTitle() == "That's The Way (I Like It)" or
	--DDR 2ndMIX
		song:GetDisplayFullTitle() == "BAD GIRLS" or
		song:GetDisplayFullTitle() == "Boom Boom Dollar (Red Monster Mix)" or
		song:GetDisplayFullTitle() == "Boys" or
		song:GetDisplayFullTitle() == "I Believe In Miracles (The Lisa Marie Experience Radio Edit)" or
		song:GetDisplayFullTitle() == "IF YOU WERE HERE" or
		song:GetDisplayFullTitle() == "LOVE" or
		song:GetDisplayFullTitle() == "MAKE IT BETTER (So-REAL Mix)" or
		song:GetDisplayFullTitle() == "PUT YOUR FAITH IN ME (Jazzy Groove)" or
	--DDR 3rdMIX
		song:GetDisplayFullTitle() == "AFTER THE GAME OF LOVE" or
		song:GetDisplayFullTitle() == "BOOM BOOM DOLLAR (K.O.G. G3 MIX)" or
		song:GetDisplayFullTitle() == "butterfly (UPSWING MIX)" or
		song:GetDisplayFullTitle() == "DO IT ALL NIGHT" or 
		song:GetDisplayFullTitle() == "FLASHDANCE (WHAT A FEELING)" or
		song:GetDisplayFullTitle() == "GET UP (BEFORE THE NIGHT IS OVER)" or
		song:GetDisplayFullTitle() == "GET UP AND DANCE" or
		song:GetDisplayFullTitle() == "HERO (KCP DISCOTIQUE MIX)" or
		song:GetDisplayFullTitle() == "IF YOU CAN SAY GOODBYE" or
		song:GetDisplayFullTitle() == "IT ONLY TAKES A MINUTE (Extended Remix)" or
		song:GetDisplayFullTitle() == "LET THEM MOVE" or
		song:GetDisplayFullTitle() == "LUV TO ME (AMD MIX)" or
		song:GetDisplayFullTitle() == "OH NICK PLEASE NOT SO QUICK"	or
		song:GetDisplayFullTitle() == "Silent Hill"	or
		song:GetDisplayFullTitle() == "SO MANY MEN"	or
		song:GetDisplayFullTitle() == "think ya better D"	or
		song:GetDisplayFullTitle() == "TURN ME ON (HEAVENLY MIX)"	or
		song:GetDisplayFullTitle() == "UPSIDE DOWN"	or
		song:GetDisplayFullTitle() == "WONDERLAND (UKS MIX)"	or
		song:GetDisplayFullTitle() == "XANADU"	or
		song:GetDisplayFullTitle() == "20,NOVEMBER (D.D.R. version)" or
	--DDR A20
		song:GetDisplayFullTitle() == "DOWNER & UPPER"	or
		song:GetDisplayFullTitle() == "ENDLESS"	or	
		song:GetDisplayFullTitle() == "F4SH10N"	or
		song:GetDisplayFullTitle() == "Get On Da Floor"	or
		song:GetDisplayFullTitle() == "Golden Arrow"	or
		song:GetDisplayFullTitle() == "Starry Sky"	or
		song:GetDisplayFullTitle() == "Stay 4 Ever"	or
		song:GetDisplayFullTitle() == "voltississimo"	or
	--DDR A20 PLUS	
		song:GetDisplayFullTitle() == "Crazy Hot"	or
		song:GetDisplayFullTitle() == "Feidie"	or
		song:GetDisplayFullTitle() == "GUILTY DIAMONDS"	or
		song:GetDisplayFullTitle() == "HyperTwist"	or
		song:GetDisplayFullTitle() == "No Life Queen [DJ Command Remix]"	or
		song:GetDisplayFullTitle() == "PARTY ALL NIGHT(DJ KEN-BOW MIX)"	or
		song:GetDisplayFullTitle() == "Together Going My Way"	or
		song:GetDisplayFullTitle() == "X-ray binary"		
		then 
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_12.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_11.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_4.avi")..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
--DAWN STREET
	elseif 		
	--DDR 2ndMIX
		song:GetDisplayFullTitle() == "GET UP'N MOVE" or 
		song:GetDisplayFullTitle() == "MAKE A JAM!" or 
		song:GetDisplayFullTitle() == "TUBTHUMPING" or
	--DDR 3rdMIX
		song:GetDisplayFullTitle() == "Jam Jam Reggae" or
	--DDR A20 
		song:GetDisplayFullTitle() == "Crazy Shuffle" or
		song:GetDisplayFullTitle() == "LONG TRAIN RUNNIN' (20th Anniversary Mix)" or
		song:GetDisplayFullTitle() == "This Beat Is....." or
		song:GetDisplayFullTitle() == "Trill auf G" or
	--DDR A20 PLUS
		song:GetDisplayFullTitle() == "DANCERUSH STARDOM ANTHEM" or
		song:GetDisplayFullTitle() == "GHOST KINGDOM"		
		then
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_13.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_12.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_5.avi")..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
--LOVE SWEETS
	elseif 	
	--DDR 2ndMIX
		song:GetDisplayFullTitle() == "DUB-I-DUB" or
	--DDR 3rdMIX
		song:GetDisplayFullTitle() == "CUTIE CHASER" or
	--DDR A20
		song:GetDisplayFullTitle() == "び" or
		song:GetDisplayFullTitle() == "Give Me" or
		song:GetDisplayFullTitle() == "Toy Box Factory" or
		song:GetDisplayFullTitle() == "Une mage blanche" or
		
	--DDR A20 PLUS 
		song:GetDisplayFullTitle() == "逆さま♥シンデレラパレード" or
		song:GetDisplayFullTitle() == "ハラショー！おにぎりサーカス団☆" or
		song:GetDisplayFullTitle() == "I Want To Do This Keep"
		then 
	if ThemePrefs.Get("RandomMovies") == "A" then
	t[#t+1] = LoadActor(rootPath.."STAGE_A_14.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_13.avi")..{
		InitCommand=cmd(FullScreen);
	};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_6.avi")..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
---------------------------------------------------------------------------------------------------------------------------------------------
	elseif song:GetDisplayFullTitle() == "Yuni's Nocturnal Days" then
		t[#t+1] = LoadActor(rootPath.."YUNI.avi")..{
			InitCommand=cmd(FullScreen);
		};
	else
	if ThemePrefs.Get("RandomMovies") == "A" then
		t[#t+1] = LoadActor(rootPath.."STAGE_A_"..numA)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "2014" then
	t[#t+1] = LoadActor(rootPath.."STAGE_2014_"..num2014)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "X" then
	t[#t+1] = LoadActor(rootPath.."STAGE_X_"..numX)..{
			InitCommand=cmd(FullScreen);
		};
	elseif ThemePrefs.Get("RandomMovies") == "SN" then
	t[#t+1] = LoadActor(rootPath.."STAGE_SN_"..numSN)..{
			InitCommand=cmd(FullScreen);
		};
	end;
end;
end;

--This background will show only if you will play ACE FOR ACES in EncoreExtraStage
if song:GetDisplayFullTitle() == "ACE FOR ACES" and GAMESTATE:IsExtraStage2() then
		t[#t+1] = LoadActor(rootPath.."ACE FOR ACES_encore.avi")..{
			InitCommand=cmd(FullScreen);
		};
end;


return t;
	
