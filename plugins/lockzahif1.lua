do 

local function oscarteam(msg, matches) 
  if matches[1] == "/lock zahif" then 
     local zahif = 'zahif:'..msg.to.id
     redis:set(zahif, true)
     return "تم تفعيل منع كلمات سيئة 🤐😈"
  end
  

  if matches[1] == "/unlock zahif" then
     local zahif = 'zahif:'..msg.to.id
     redis:del(zahif)
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