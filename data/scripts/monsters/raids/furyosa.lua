local mType = Game.createMonsterType("Furyosa")
local monster = {}

monster.description = "Furyosa"
monster.experience = 11500
monster.outfit = {
	lookType = 149,
	lookHead = 94,
	lookBody = 77,
	lookLegs = 96,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 25000
monster.maxHealth = 25000
monster.race = "blood"
monster.corpse = 20399
monster.speed = 270
monster.summonCost = 0
monster.maxSummons = 4

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
	staticAttackChance = 70,
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

monster.summons = {
	{name = "Fury", chance = 10, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "MUHAHA!", yell = false},
	{text = "Back in black!", yell = false},
	{text = "Die!", yell = false},
	{text = "Dieeee!", yell = false},
	{text = "Caaarnaaage!", yell = false},
	{text = "Ahhhhrrrr!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 200},
	{id = 8844, chance = 100000, maxCount = 5},
	{id = 21400, chance = 45000},
	{id = 2152, chance = 85000, maxCount = 25},
	{id = 6558, chance = 35000, maxCount = 3},
	{id = 6500, chance = 22500},
	{id = 5911, chance = 4000},
	{id = 5944, chance = 21500},
	{id = 5944, chance = 50},
	{id = 2124, chance = 410},
	{id = 6301, chance = 60},
	{id = 2539, chance = 100},
	{id = 21725, chance = 100}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -625, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 20, minDamage = -260, maxDamage = -310, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -50, maxDamage = -210, type = COMBAT_MANADRAIN, length = 8, spread = 3, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -200, maxDamage = -300, type = COMBAT_FIREDAMAGE, length = 8, spread = 3, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 2000, chance = 5, minDamage = -300, maxDamage = -800, type = COMBAT_DEATHDAMAGE, length = 8, spread = 3, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="combat", interval = 3000, chance = 18, minDamage = 0, maxDamage = -150, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_GROUNDSHAKER, target = true},
	{name ="combat", interval = 2000, chance = 5, target = false}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE},
	{name ="combat", interval = 7000, chance = 20, minDamage = 500, maxDamage = 700, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
