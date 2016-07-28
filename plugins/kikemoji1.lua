do 

local function oscarteam(msg, matches) 
  if matches[1] == "/kik emoji" then 
     local emojr = 'emojr:'..msg.to.id
     redis:set(emojr, true)
     return "تم تفعيل منع كلمات سيئة 🤐😈"
  end
  

  if matches[1] == "/unkik emoji" then
     local emojr = 'emojr:'..msg.to.id
     redis:del(emojr)
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