--@name quick remover
--@author noooooo
--@server
-- how to use: simply change ent to the entity type you want to remove and boom the entities are gone
-- please let me know if it errors as i made this without testing!
local ents = {}
local ent = ""
table.add(ents,find.byClass(ent))
for k,v in pairs(ents) do
  if v:getOwner() = owner() then
    v:Remove()  
   end
end
