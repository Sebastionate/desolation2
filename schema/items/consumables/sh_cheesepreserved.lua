ITEM.name = "Matured Cheese"
ITEM.model = "models/samsa.mdl"
ITEM.hunger = 23
ITEM.description = "A Universal Union approved cheese wheel."
ITEM.longdesc = "This UU-branded cheese wheel has a somewhat spongy taste, but when mixed with other food items isn't that bad."
ITEM.quantity = 1
ITEM.price = 50
ITEM.width = 1
ITEM.height = 1
ITEM.cookable = false
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
ITEM.quantity = 3
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