local block={}

function block:newBlock(x, y)
  local b={
    x=x,
    y=y,
    w=800,
    h=800
  }
  
  function b:draw()
    screen:fillRect(self.x, self.y, self.w, self.h, branco)
  end
  function b:update()
    
  end
  
  return b
end

return block