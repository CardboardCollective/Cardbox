SMODS.Joker ({
    key = "blockchain",
    blueprint_compat = true,
    rarity = 3,
    cost = 1,
    pos = {x = 0, y = 0},
    config = { extra = { dollars = 2, h_dollars = 1 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_SEALS.Gold
        return { vars = { card.ability.extra.dollars, card.ability.extra.h_dollars } }
    end,
    set_ability = function(self, card, initial)
     card:set_rental(true)
    end,
    calculate = function (self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.seal == "Gold" then
            return {
                dollars = card.ability.extra.dollars
            }
            end
        end
        if context.individual and context.cardarea == G.hand then
            if context.other_card.seal == "Gold" then
            return {
                dollars = card.ability.extra.h_dollars
            }
            end
        end
    end
})