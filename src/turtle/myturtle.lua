os.pullEvent = os.pullEventRaw

if fs.exists("myturtle/id.conf") then
  idConf = fs.open("myturtle/id.conf", "r")
  local id = idConf.readLine()
else
  local id = nul
end

term.clear()
term.setCursorPos(1,1)
