local mType = Game.createMonsterType("Deepling Master Librarian")
local monster = {}

monster.description = "a deepling master librarian"
monster.experience = 1900
monster.outfit = {
	lookType = 443,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1700
monster.maxHealth = 1700
monster.race = "blood"
monster.corpse = 15211
monster.speed = 230
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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 60,
	targetDistance = 0,
	runHealth = 250,
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
	{id = "small sapphire", chance = 8440, maxCount = 3},
	{id = "gold coin", chance = 100000, maxCount = 100},
	{id = "platinum coin", chance = 90000, maxCount = 3},
	{id = "life ring", chance = 3200},
	{id = 2667, chance = 9090, maxCount = 2},
	{id = "fish fin", chance = 1950},
	{id = "eye of a deepling", chance = 9380},
	{id = "deepling staff", chance = 3130},
	{id = "necklace of the deep", chance = 1330},
	{id = "spellsinger's seal", chance = 25000},
	{id = "key to the Drowned Library", chance = 20000},
	{id = "deepling filet", chance = 20000},
	{id = "ornate crossbow", chance = 39}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -210, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 10, minDamage = -260, maxDamage = -450, type = COMBAT_ICEDAMAGE, length = 10, spread = 3, effect = CONST_ME_ICETORNADO, target = false},
	{name ="combat", interval = 2000, chance = 20, minDamage = -150, maxDamage = -280, type = COMBAT_DROWNDAMAGE, effect = CONST_ME_BUBBLES, target = true},
	{name ="combat", interval = 2000, chance = 15, minDamage = -80, maxDamage = -140, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_SMALLPLANTS, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -60, maxDamage = -140, type = COMBAT_MANADRAIN, range = 7, effect = CONST_ME_SMALLPLANTS, target = false},
	{name ="combat", interval = 2000, chance = 10, range = 5, target = false}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="combat", interval = 2000, chance = 15, minDamage = 40, maxDamage = 80, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
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
