
--setup Gamestates
Gamestate= require("Codes.Scripts.gamestate")

-- Game States --
Opening=require("Codes.States.splashS")
Menu=require("Codes.States.menuS")
Game=require("Codes.States.gameS")
MR=require("Codes.States.MusicRoomS")
-- END --

-- Scripts --
Trem=require("Codes.Scripts.Trem")
M=require("Codes.Scripts.M")
Entities=require("Codes.Scripts.Entities4")
Txt=require("Codes.Scripts.txt2")
Collide=require("Codes.Scripts.collisions")
-- END --

--Set the title here, let Gamestate do it's magic (aka, switch to the Splash screen)
function love.load()

  love.window.setTitle("PTT")
  Gamestate.registerEvents()
  Gamestate.switch(Opening)
end
