playSound "jump";
[aurora] execvm "AL_ambient_SFX\rupture.sqf";
nul = [10] execvm "ALfallstar\alias_meteor_ini.sqf";

titleText [
	"<t color='#ff0000' size='5'>WARP ANOMALY DETECTED!</t>
	<br/>SPACE HULK DEBRIS INCOMING", 
	"PLAIN", -1, true, true];