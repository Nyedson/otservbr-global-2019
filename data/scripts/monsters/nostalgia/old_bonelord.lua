local mType = Game.createMonsterType("Old Beholder")
local monster = {}

monster.name = "Beholder"
monster.description = "a beholder"
monster.experience = 170
monster.outfit = {
	lookType = 924,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 260
monster.maxHealth = 260
monster.race = "venom"
monster.corpse = 5992
monster.speed = 170
monster.summonCost = 0
monster.maxSummons = 6

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
	{name = "Skeleton", chance = 20, interval = 2000, max = 6}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Olho por Olho!", yell = false},
	{text = "Estou olhando para você!", yell = false},
	{text = "Deixe-me dar uma olhada em você!", yell = false},
	{text = "Você tem o olhar!", yell = false}
}

monster.loot = {
	{id = "gold coin", chance = 65000, maxCount = 82},
	{id = 2175, chance = 4650},
	{id = "two handed sword", chance = 3840},
	{id = "morning star", chance = 6950},
	{id = "longsword", chance = 8980},
	{id = "steel shield", chance = 4001},
	{id = "bonelord eye", chance = 940}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -5, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 5, minDamage = -15, maxDamage = -45, type = COMBAT_ENERGYDAMAGE, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 2000, chance = 5, minDamage = -25, maxDamage = -45, type = COMBAT_FIREDAMAGE, range = 7, shootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 2000, chance = 5, minDamage = -30, maxDamage = -50, type = COMBAT_DEATHDAMAGE, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 5, minDamage = -5, maxDamage = -45, type = COMBAT_EARTHDAMAGE, range = 7, shootEffect = CONST_ANI_POISON, target = false},
	{name ="combat", interval = 2000, chance = 5, minDamage = -5, maxDamage = -50, type = COMBAT_DEATHDAMAGE, range = 7, shootEffect = CONST_ANI_DEATH, target = false},
	{name ="combat", interval = 2000, chance = 5, minDamage = 0, maxDamage = -45, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 5, minDamage = -5, maxDamage = -35, type = COMBAT_MANADRAIN, range = 7, target = false}
}

monster.defenses = {
	defense = 10,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
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
