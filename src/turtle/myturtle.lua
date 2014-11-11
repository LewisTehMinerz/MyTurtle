os.pullEvent = os.pullEventRaw

if fs.exists("myturtle/id.conf") then
  idConf = fs.open("myturtle/id.conf", "r")
  local id = idConf.readLine()
else
  local id = nul
end

term.clear()
term.setCursorPos(1,1)

if perpheral.isPresent("right") and peripheral.getType("right") == "modem" then
  rednet.open("right")
elseif perpheral.isPresent("left") and peripheral.getType("left") == "modem" then
  rednet.open("left")
else
  print("You need to equip the turtle with a modem!")
  print("Press any key")
  os.pullEvent("key")
  shell.run("rom/programs/shell")
end

