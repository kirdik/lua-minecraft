local robot = require("robot")

-- функция поиска
function find()
t={robot.detect()}
way=1
    while t[2]=="air" do
        robot.forward()
        t={robot.detect()}
        if t[2]=="entity" then
            cut()
            return
        end
    end
    if way==1 then
        robot.left()
        robot.forward()
        robot.left()
        way=way+1

    end
    if way==2 then
        robot.turnRight()
        robot.forward()
        robot.turnRight()
        way=way-1

    end
end
function cut()
 print("CUT")
end
find()
print("EXIT")
