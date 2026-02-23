SMODS.Joker ({
    key = "stonecutter",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
    pos = {x = 0, y = 0},
    config = { extra = { dollars = 3 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_stone
        return { vars = { card.ability.extra.dollars } }
    end,
    calculate = function (self, card, context)
         if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_stone') then
            return {
                dollars = card.ability.extra.dollars
            }
         end
    end
})