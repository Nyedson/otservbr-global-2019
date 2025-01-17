local mType = Game.createMonsterType("Burster Spectre")
local monster = {}

monster.description = "a Burster Spectre"
monster.experience = 6000
monster.outfit = {
	lookType = 1122,
	lookHead = 7,
	lookBody = 19,
	lookLegs = 86,
	lookFeet = 19,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6500
monster.maxHealth = 6500
monster.race = "blood"
monster.corpse = 34801
monster.speed = 400
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "We came tooo thiiiiss wooorld to... get youuu!", yell = false}
}

monster.loot = {
	{id = "platinum coin", chance = 100000, maxCount = 7},
	{id = "great spirit potion", chance = 100000, maxCount = 3},
	{id = "protection amulet", chance = 15000},
	{id = "life crystal", chance = 12050},
	{id = "silver amulet", chance = 15000},
	{id = "wand of voodoo", chance = 11050},
	{id = "wand of cosmic energy", chance = 11800},
	{id = "dragon necklace", chance = 16600},
	{id = "stone skin amulet", chance = 8860},
	{id = 34720, chance = 15600},
	{id = "glacier amulet", chance = 16890},
	{id = "orb", chance = 18980},
	{id = "hailstorm rod", chance = 17550},
	{id = "elven amulet", chance = 1800},
	{id = "garlic necklace", chance = 2640},
	{id = "platinum amulet", chance = 2600},
	{id = "mind stone", chance = 1800},
	{id = "glacial rod", chance = 520},
	{id = "shockwave amulet", chance = 620},
	{id = "strange symbol", chance = 720},
	{id = "hexagonal ruby", chance = 480}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = -400, maxDamage = -580, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 25, minDamage = -270, maxDamage = -390, type = COMBAT_LIFEDRAIN, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 2000, chance = 25, minDamage = -280, maxDamage = -410, type = COMBAT_ICEDAMAGE, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 2000, chance = 5200, minDamage = -280, maxDamage = -370, type = COMBAT_ICEDAMAGE, effect = CONST_ME_ICEATTACK, target = true},
	{name ="combat", interval = 2000, chance = 20, minDamage = -200, maxDamage = -290, type = COMBAT_ICEDAMAGE, length = 5, spread = 3, effect = CONST_ME_ICEATTACK, target = false}
}

monster.defenses = {
	defense = 70,
	armor = 70,
	{name ="combat", interval = 2000, chance = 30, minDamage = 150, maxDamage = 200, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
