SMODS.Joker ({
    key = "philosophy",
    blueprint_compat = true,
    rarity = 2,
    cost = 1,
    pos = {x = 0, y = 0},
    config = { extra = { create_card = 1, odds = 4 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_SEALS.Purple
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'cb_philoSpectral')
        return { vars = { card.ability.extra.create_card, numerator, denominator } }
    end,
    set_ability = function(self, card, initial)
     card:set_perishable(true)
    end,
    calculate = function (self, card, context)
    if context.discard and context.other_card == card and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        if context.other_card.seal == "Purple" then
            if SMODS.pseudorandom_probability(card, 'cb_philoSpectral', 1, card.ability.extra.odds) then
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + card.ability.extra.create_card
                    G.E_MANAGER:add_event(Event({
                        trigger = 'before',
                        delay = 0.0,
                        func = function()
                            SMODS.add_card({ set = 'Spectral', edition = 'e_negative' })
                            G.GAME.consumeable_buffer = 0
                            return true
                        end
                    }))
                return { message = localize('k_plus_spectral'), colour = G.C.DARK_EDITION }
            end
        end
    end
    end
})