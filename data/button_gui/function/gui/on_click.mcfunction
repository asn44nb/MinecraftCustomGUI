
execute if score @s Button.GUI.ID = @p Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 run clear @p *[minecraft:custom_data~{"Button.GUI.Item":{}, "Button.GUI.IsDrop": true}]
execute if data storage button_gui:gui {isClicked:true} run return 0

$execute if score @s Button.GUI.ID = @p[limit=1] Button.GUI.ID store success storage button_gui:gui isClicked byte 1.0 as @p[sort=furthest] positioned ~ ~ ~ rotated as @s run clear @a *[minecraft:custom_data={"Button.GUI.Item":{"id":"command-button",name:"$(name)",value:"$(value)",action:{type:"command"}}}]
$execute if data storage button_gui:gui {isClicked:true} run $(value)
$execute if data storage button_gui:gui {isClicked:true} run function button_gui:gui/$(id)/pages/$(page)/put_gui


# リセット
data remove storage button_gui:gui isClicked
