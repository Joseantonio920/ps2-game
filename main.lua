branco=Color.new(255, 255, 255)
preto=Color.new(0, 0, 0)
function draw()
	screen:print(0, 0, "ola mundo", branco)
end
function update()
	
end
while true do
	screen:clear(preto)
	draw()
	screen.flip()
	update()
end