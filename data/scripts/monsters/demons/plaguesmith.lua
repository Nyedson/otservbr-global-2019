local mType = Game.createMonsterType("Plaguesmith")
local monster = {}

monster.description = "a plaguesmith"
monster.experience = 3555
monster.outfit = {
	lookType = 247,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 8250
monster.maxHealth = 8250
monster.race = "venom"
monster.corpse = 6516
monster.speed = 320
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 500,
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
	{text = "You are looking a bit feverish!", yell = false},
	{text = "You don't look that good!", yell = false},
	{text = "Hachoo!", yell = false},
	{text = "Cough Cough", yell = false}
}

monster.loot = {
	{id = "emerald bangle", chance = 341},
	{id = "silver brooch", chance = 2000},
	{id = "gold coin", chance = 50000, maxCount = 100},
	{id = "gold coin", chance = 40000, maxCount = 100},
	{id = "gold coin", chance = 50000, maxCount = 65},
	{id = "small amethyst", chance = 5000, maxCount = 3},
	{id = "platinum coin", chance = 7142, maxCount = 2},
	{id = "axe ring", chance = 4347},
	{id = "club ring", chance = 4761},
	{id = "piece of iron", chance = 20000},
	{id = "mouldy cheese", chance = 50000},
	{id = 33528, chance = 60000},
	{id = "two handed sword", chance = 20000},
	{id = "war hammer", chance = 2127},
	{id = "morning star", chance = 29000},
	{id = "battle hammer", chance = 20000},
	{id = "hammer of wrath", chance = 952},
	{id = "knight legs", chance = 6250},
	{id = "steel shield", chance = 20000},
	{id = "steel boots", chance = 1123},
	{id = "piece of royal steel", chance = 1234},
	{id = "piece of hell steel", chance = 1010},
	{id = "piece of draconian steel", chance = 1030},
	{id = "soul orb", chance = 11111},
	{id = "demonic essence", chance = 9033},
	{id = "onyx arrow", chance = 7692, maxCount = 4},
	{id = "great health potion", chance = 10000},
	{id = 9810, chance = 540}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 1500, chance = 100, minDamage = 0, maxDamage = -539, effect = CONST_ME_DRAWBLOOD, condition = {type = CONDITION_POISON, startDamage = 200, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, minDamage = -60, maxDamage = -114, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_POISONAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -100, maxDamage = -350, type = COMBAT_EARTHDAMAGE, length = 5, spread = 3, effect = CONST_ME_YELLOW_RINGS, target = false},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = -800, Duration = 30000}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{name ="combat", interval = 2000, chance = 10, minDamage = 200, maxDamage = 280, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = 440, Duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 1}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
