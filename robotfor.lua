local robot = require("robot")
local way=1
-- функция ghj[jlf
function forward()
t={robot.detect()}
    while t[2]=="air" do
        robot.forward()
        t={robot.detect()}
    end
end
-- функция стрижки (не готова)
function cut()
 print("CUT")
end
--начало программы
for i=1, 4 do
forward() 
if t[2]=="entity" then
	cut()
	return
end 
if way==1 then
    robot.turnLeft()
    robot.forward()
    robot.turnLeft()
    way=way+1
    forward()
end
if way==2 then
    robot.turnRight()
    robot.forward()
    robot.turnRight()
    way=way-1
	forward()		
end
end

print("EXIT")
