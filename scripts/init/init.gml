// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init(){
	gml_pragma("global","init()");
	
	enum player_states {
		normal,
		hold,
		jump,
		fall,
		damage,
	}
	
	
	enum monster_states {
		normal,
		walk,
		falling,
		damage
	}
}