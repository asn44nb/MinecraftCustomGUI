
execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item":{}, "Button.GUI.IsDrop": true}]
execute if data storage button_gui:gui {isClicked:true} run return 0

$execute positioned ~ ~ ~ rotated as @s at @s if score @s Button.GUI.ID = @a[sort=furthest,limit=1] Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @a $(item)[minecraft:custom_data~{"Button.GUI.Item":{"id":"command-button",action:{type:"command"}}}]
$execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/$(id)/pages/menu/$(page)/put_gui

# リセット
data remove storage button_gui:gui isClicked
