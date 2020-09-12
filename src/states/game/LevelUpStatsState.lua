LevelUpStatsState =  Class{__includes = BaseState}

function LevelUpStatsState:init(def)
	self.statsMenu = Menu{
		x = VIRTUAL_WIDTH - 170,
		y = VIRTUAL_HEIGHT - 158,
		width = 170,
		height = 150,
		items = def.levelUpStats,
		cursorOn = false
	}

	self.onClose = def.onClose
end

function LevelUpStatsState:update(dt)
	self.statsMenu:update(dt)

	if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateStack:pop()
        self:onClose()
    end
end

function LevelUpStatsState:render()
	self.statsMenu:render()
end