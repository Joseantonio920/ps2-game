local world={}

local block=require "game/scr/block.lua"
function world:newWorld(list, w, h)
  local w={}
  
  w.objs={}
  
  local x, y=0, 0
  for i=1, w*h do
    local num=list[i]
    
    if num==1 then
      table.insert(w.objs, block:newBlock(x*8, y*8))
    end
    
    x=x+1
    if x>width then
      x=1
      y=y+1
    end
  end
  
  function w:draw()
    for i, o in ipairs(self.objs) do
      if pcall(o:draw()) then
        o:draw()
      end
    end
  end
  function w:update()
    for i, o in ipairs(self.objs) do
      if pcall(o:update()) then
        o:update()
      end
    end
  end
  
  return w
end

return world