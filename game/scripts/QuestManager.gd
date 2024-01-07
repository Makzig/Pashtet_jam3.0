extends Node

var quests = {
	"reception" : [
		"Get flash-card"
	],
	"beach" : [
		"Hit from meduse",
		"Get damage from other character",
	],
	"kitchen" : [
		"Knock down character",
		"Break table",
	],
	"bar" : [
		"Ruin the bar"
	],
}

func give_quest(loc_name:String, player):
	player.get_quests(quests[loc_name]) 
