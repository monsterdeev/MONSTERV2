do 

local function oscarteam(msg, matches) 
  if matches[1] == "/kik fosh" then 
     local kik = 'kik:'..msg.to.id
     redis:set(kik, true)
     return "تم تفعيل منع كلمات سيئة 🤐😈"
  end
  

  if matches[1] == "/unkik fosh" then
     local kik = 'kik:'..msg.to.id
     redis:del(kik)
     return "تم ايقاف منع كلمات سيئة 😄👍"
  end


  if matches[1] == "صنع" then
     --return " cods simsim by @iq_plus and @dev_2 "

  end
end 

return { 
  patterns = { 
     "(.*)"
  }, 
  run = oscarteam, 
} 

end 
-- @dev_2