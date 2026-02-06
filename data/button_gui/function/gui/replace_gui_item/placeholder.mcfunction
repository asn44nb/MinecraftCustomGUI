$execute if items entity @s container.$(slot) *[!custom_data~{"Button.GUI.Item":{}}] run item replace entity @a player.cursor from entity @s container.$(slot)

$item replace entity @s container.$(slot) with writable_book[custom_data={"Button.GUI.Item": {id:"GUI.Placeholder", name:"$(name)", page:"$(page)"}}] 1
