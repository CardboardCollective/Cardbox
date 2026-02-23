SMODS.Voucher({
    key = 'homeRun',
    pos = { x = 0, y = 0 },
    config = { extra = { rate = 2 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.rate } }
    end,
    redeem = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.uncommon_mod = G.GAME.uncommon_mod * 2
                return true
            end
        }))
    end
})