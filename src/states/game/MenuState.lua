--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

MenuState = Class{__includes = BaseState}

function MenuState:init(outputTable, onClose)

    self.menu = Menu {
        x = 0,
        y = VIRTUAL_HEIGHT - 64,
        width = VIRTUAL_WIDTH,
        height = 64,
        font = gFonts['small'],
        items = {
            {
                text = outputTable[1] .. "   " ..  outputTable[2], 
                onSelect = function()
                    gStateStack:pop()
                    onClose()
                end
            },
            {
                text = outputTable[3] .. "   " ..  outputTable[4],
                onSelect = function()
                    
                end
            }
        },
        needCursor=false
    }

end

function MenuState:update(dt)
    self.menu:update(dt)

end

function MenuState:render()
    self.menu:render()
end