local robot = require("robot")
local way=1
-- функция поиска
function forward()
t={robot.detect()}
    while t[2]=="air" do
        robot.forward()
        t={robot.detect()}
    end
end

function cut()
 print("CUT")
end
for i=1, 15 do
forward() 
if t[2]=="entity" then
	cut()
	return end
end 
if way==1 then
    robot.turnLeft()
    if robot.detect() then
		way=way-1
	else
		robot.forward()
	end
    robot.turnLeft()
    way=way+1
    forward()
end
if way==2 then
    robot.turnRight()
	if robot.detect() then
		way=way+1
	else
		robot.forward()
	end
    robot.turnRight()
    way=way-1
	forward()		
end
print(way)
end

print("EXIT")
