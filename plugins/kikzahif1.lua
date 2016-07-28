do 

local function oscarteam(msg, matches) 
  if matches[1] == "/kik zahif" then 
     local kzahif = 'kzahif:'..msg.to.id
     redis:set(kzahif, true)
     return "تم تفعيل منع كلمات سيئة 🤐😈"
  end
  

  if matches[1] == "/unkik zahif" then
     local kzahif = 'kzahif:'..msg.to.id
     redis:del(kzahif)
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