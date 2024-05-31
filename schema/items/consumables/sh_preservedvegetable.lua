ITEM.name = "Preserved Canned Vegetables"
ITEM.model = "models/illusion/eftcontainers/peas.mdl"
ITEM.hunger = 30
ITEM.description = "A preserved can of Pre-War Vegetables."
ITEM.longdesc = "A cylindrical alluminum can of watery vegetables from the Pre-Occupation World. Millions if not more were stored world wide in food reserves, survivalist bunkers, and simple pantries as the Xenian Crisis caused Global-Wide famine."
ITEM.price = 50
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
ITEM.quantity = 1
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 20, { amount = 0.5 })
	ix.chat.Send(item.player, "iteminternal", "takes a bite of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()