local mType = Game.createMonsterType("Lizard Legionnaire")
local monster = {}

monster.description = "a lizard legionnaire"
monster.experience = 1100
monster.outfit = {
	lookType = 338,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1400
monster.maxHealth = 1400
monster.race = "blood"
monster.corpse = 11276
monster.speed = 266
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 10,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Tssss!", yell = false}
}

monster.loot = {
	{id = "small diamond", chance = 1001, maxCount = 2},
	{id = "gold coin", chance = 44000, maxCount = 100},
	{id = "gold coin", chance = 54000, maxCount = 65},
	{id = "lizard leather", chance = 970},
	{id = "lizard scale", chance = 980, maxCount = 3},
	{id = "strong health potion", chance = 3880},
	{id = "red lantern", chance = 530},
	{id = "bunch of ripe rice", chance = 1950},
	{id = "Zaoan armor", chance = 70},
	{id = "Zaoan shoes", chance = 460},
	{id = "drakinata", chance = 710},
	{id = "Zaoan halberd", chance = 960},
	{id = "legionnaire flags", chance = 1940},
	{id = "broken halberd", chance = 14940},
	{id = "lizard trophy", chance = 20}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -180, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 40, minDamage = 0, maxDamage = -200, type = COMBAT_PHYSICALDAMAGE, range = 7, shootEffect = CONST_ANI_SPEAR, target = true}
}

monster.defenses = {
	defense = 25,
	armor = 25
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 45},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
