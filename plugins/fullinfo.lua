do 

local function run(msg, matches) 
local hish = 'fullinfo:'..msg.from.id 
local name = 'name:'..msg.from.id
local age = 'age:'..msg.from.id
local sex = 'sex:'..msg.from.id
local note = 'note:'..msg.from.id
local reply = msg['id'] 

if matches[1] == "setname" then 
if matches[2] then 
redis:set(name, matches[2]) 
local name = "name added!" 
reply_msg(reply, name, ok_cb, true) 
end 
end 
if matches[1] == "setage" then
if matches[2] then
redis:set(age, matches[2])
local age = "age added!"
reply_msg(reply, age, ok_cb, true)
end 
end
if matches[1] == "setsex" then
if matches[2] then
redis:set(sex, matches[2])
local sex = "sex added!"
reply_msg(reply, sex, ok_cb, true)
end 
end
if matches[1] == "setnote" then
if matches[2] then
redis:set(note, matches[2])
local note = "Your note added!"
reply_msg(reply, note, ok_cb, true)
end
end
if matches[1] == "fullinfo" then 
local openk = '💠your nickname: '..redis:get(name)..'\n🚻Your sex: '..redis:get(sex)..'\n💠Your age: '..redis:get(age)..'\n📕Your note:'..redis:get(note)..'\n🆔Your ID : '..msg.from.id..'\n'
reply_msg(reply, openk, ok_cb, true) 
else 
----local c = "لا توجد معلومات" 
reply_msg(reply, c, ok_cb, true)
end
if matches[1] == "delinfo" then 
redis:del(openk) 
local d = "تم حذف معلوماتك" 
reply_msg(reply, d, ok_cb, true) 
end 
end 

return { 
 patterns = { 
 "^[!/#](setname)(.*)$", 
 "^[!/#](setage)(.*)$",
 "^[!/#](setnote)(.*)$",
 "^[!/#](setsex)(.*)$",
 "^[!/#](fullinfo)",
 "^[!/#](delinfo)"
 }, 
 run = run, 
 } 
end