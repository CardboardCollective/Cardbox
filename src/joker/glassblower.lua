SMODS.Joker ({
    key = "glassblower",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
    pos = {x = 0, y = 0},
    config = { extra = { x_chips = 2 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_glass
        return { vars = { card.ability.extra.x_chips } }
    end,
    calculate = function (self, card, context)
         if context.individual and context.cardarea == G.hand and SMODS.has_enhancement(context.other_card, 'm_glass') then
            return {
                x_chips = card.ability.extra.x_chips
            }
         end
    end
})