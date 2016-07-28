do 

local function oscar(msg, matches) 
  return [[ 
source created by @PXPP3 👾 
TEAM channel 💡 @oscarteam 💡 
Source channel 💠 @M0NSTERB0T 💠

〰〰〰〰〰〰〰〰〰〰〰〰 
  .            💠 SUPER CRYSTAL v2.0 💠 

Oscar ™ 
Dev @IQ_plus ⚜ 
Dev @JALAL_ALDON 🔹 
Dev @CutlassX 🔹 
Dev @iDev1 🔹 
Dev @PXPP3 🔹
Dev @DEV_2 🔹
Dev @Lua_lang 🔹
]] 

end 

return { 
  patterns = { 
       "^[!/#](version)$", 
  }, 
  run = oscar, 
} 

end 
