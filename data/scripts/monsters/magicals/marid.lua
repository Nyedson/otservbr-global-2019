local mType = Game.createMonsterType("Marid")
local monster = {}

monster.description = "a marid"
monster.experience = 410
monster.outfit = {
	lookType = 104,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 550
monster.maxHealth = 550
monster.race = "blood"
monster.corpse = 6033
monster.speed = 234
monster.summonCost = 0
monster.maxSummons = 2

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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
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

monster.summons = {
	{name = "blue djinn", chance = 10, interval = 2000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Simsalabim", yell = false},
	{text = "Feel the power of my magic, tiny mortal!", yell = false},
	{text = "Wishes can come true", yell = false},
	{text = "Be careful what you wish.", yell = false},
	{text = "Djinns will soon again be the greatest!", yell = false}
}

monster.loot = {
	{id = 1872, chance = 2560},
	{id = "small oil lamp", chance = 110},
	{id = "small sapphire", chance = 6200},
	{id = "gold coin", chance = 60000, maxCount = 70},
	{id = "gold coin", chance = 60000, maxCount = 30},
	{id = "blue gem", chance = 110},
	{id = "hailstorm rod", chance = 770},
	{id = 2374, chance = 5000},
	{id = "heavy machete", chance = 4530},
	{id = "mystic turban", chance = 290},
	{id = "blueberry", chance = 65000, maxCount = 29},
	{id = "blue piece of cloth", chance = 3750},
	{id = "royal spear", chance = 15500, maxCount = 3},
	{id = "strong mana potion", chance = 9800},
	{id = "seeds", chance = 2400},
	{id = "magma monocle", chance = 320},
	{id = "jewelled belt", chance = 7880},
	{id = "noble turban", chance = 530}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = 0, maxDamage = -90, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 10, minDamage = -100, maxDamage = -250, type = COMBAT_ENERGYDAMAGE, range = 7, shootEffect = CONST_ANI_ENERGYBALL, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -30, maxDamage = -90, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="speed", interval = 2000, chance = 15, SpeedChange = -650, Duration = 1500},
	{name ="drunk", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="outfit", interval = 2000, chance = 1},
	{name ="combat", interval = 2000, chance = 15, range = 5, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -30, maxDamage = -90, type = COMBAT_ENERGYDAMAGE, effect = CONST_ME_ENERGYHIT, target = false}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="combat", interval = 2000, chance = 15, minDamage = 50, maxDamage = 80, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 60},
	{type = COMBAT_EARTHDAMAGE, percent = 1},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -1},
	{type = COMBAT_HOLYDAMAGE , percent = 1},
	{type = COMBAT_DEATHDAMAGE , percent = -1}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
