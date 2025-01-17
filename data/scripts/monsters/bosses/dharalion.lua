local mType = Game.createMonsterType("Dharalion")
local monster = {}

monster.description = "Dharalion"
monster.experience = 570
monster.outfit = {
	lookType = 203,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 380
monster.maxHealth = 380
monster.race = "blood"
monster.corpse = 6011
monster.speed = 240
monster.summonCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 10,
	health = 10,
	damage = 20,
	random = 60,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
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
	{name = "demon skeleton", chance = 6, interval = 1000, max = 2}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Feel my wrath!", yell = false},
	{text = "No one will stop my ascension!", yell = false},
	{text = "You desecrated this temple!", yell = false},
	{text = "Muahahaha!", yell = false},
	{text = "My powers are divine!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2260, chance = 4000},
	{id = 2682, chance = 6666},
	{id = 2802, chance = 10000},
	{id = 2177, chance = 2857},
	{id = 2689, chance = 20000, maxCount = 3},
	{id = 2652, chance = 5000},
	{id = 2032, chance = 4000},
	{id = 2154, chance = 1333}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, skill = 30, attack = 28, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 1000, chance = 15, minDamage = -30, maxDamage = -60, type = COMBAT_MANADRAIN, range = 7, target = false},
	{name ="combat", interval = 1000, chance = 13, minDamage = -70, maxDamage = -90, type = COMBAT_ENERGYDAMAGE, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 1000, chance = 10, minDamage = -80, maxDamage = -151, type = COMBAT_PHYSICALDAMAGE, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, target = false},
	{name ="combat", interval = 1000, chance = 13, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 25,
	armor = 15,
	{name ="combat", interval = 1000, chance = 20, minDamage = 90, maxDamage = 120, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 1000, chance = 7, SpeedChange = 300, Duration = 10000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
