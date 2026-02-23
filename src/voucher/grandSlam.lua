SMODS.Voucher({
    key = 'grandSlam',
    pos = { x = 0, y = 0 },
    requires = { 'v_cardb_homeRun' },
    config = { extra = { rate = 2 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.rate } }
    end,
    redeem = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.rare_mod = G.GAME.rare_mod * 2
                return true
            end
        }))
    end
})