local mType = Game.createMonsterType("Shock Head")
local monster = {}

monster.description = "a shock head"
monster.experience = 2300
monster.outfit = {
	lookType = 579,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 4200
monster.maxHealth = 4200
monster.race = "blood"
monster.corpse = 22392
monster.speed = 272
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
	staticAttackChance = 80,
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
	{text = "<brrzz>", yell = false},
	{text = "Thun... Thun... THUNDER!", yell = false}
}

monster.loot = {
	{id = "small sapphire", chance = 5000},
	{id = 2148, chance = 92000, maxCount = 200},
	{id = "royal helmet", chance = 270}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -798, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 15, minDamage = -200, maxDamage = -300, type = COMBAT_DEATHDAMAGE, length = 5, spread = 2, effect = CONST_ME_BLACKSMOKE, target = true},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = -800, Duration = 7500},
	{name ="combat", interval = 2000, chance = 20, minDamage = 0, maxDamage = -350, type = COMBAT_PHYSICALDAMAGE, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES, target = true},
	{name ="combat", interval = 2000, chance = 5, range = 5, target = false},
	{name ="combat", interval = 2000, chance = 5, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2000, chance = 15, minDamage = 250, maxDamage = 350, type = COMBAT_HEALING, effect = CONST_ME_INSECTS, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
