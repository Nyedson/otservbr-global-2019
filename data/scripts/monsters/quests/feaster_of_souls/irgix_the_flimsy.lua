local mType = Game.createMonsterType("Irgix The Flimsy")
local monster = {}

monster.description = "Irgix The Flimsy"
monster.experience = 18000
monster.outfit = {
	lookType = 1268,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 1,
	lookMount = 0
}

monster.health = 24000
monster.maxHealth = 24000
monster.race = "undead"
monster.corpse = 37445
monster.speed = 285
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
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
}

monster.loot = {
	{id = "platinum coin", chance = 10000, maxCount = 8},
	{id = "skull coin", chance = 66670},
	{id = "diamond", chance = 50000},
	{id = "silver hand mirror", chance = 41670, maxCount = 2},
	{id = "white gem", chance = 33333},
	{id = "terra rod", chance = 16670},
	{id = "yellow gem", chance = 16670},
	{id = "red gem", chance = 16670},
	{id = "necklace of the deep", chance = 8330},
	{id = "wand of starstorm", chance = 8330},
	{id = "wand of cosmic energy", chance = 8330},
	{id = "death toll", chance = 8330},
	{id = "pair of nightmare boots", chance = 330}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = -100, maxDamage = -500, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 1500, chance = 15, minDamage = -300, maxDamage = -500, shootEffect = CONST_ANI_ENVENOMEDARROW, target = true},
	{name ="combat", interval = 1500, chance = 25, minDamage = -300, maxDamage = -650, type = COMBAT_ENERGYDAMAGE, length = 4, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 1500, chance = 35, minDamage = -300, maxDamage = -650, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 1500, chance = 20, minDamage = -300, maxDamage = -650, type = COMBAT_ENERGYDAMAGE, effect = CONST_ME_ENERGYAREA, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
