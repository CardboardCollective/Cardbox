SMODS.Joker ({
    key = "metallurgist",
    blueprint_compat = true,
    rarity = 2,
    cost = 5,
    pos = {x = 0, y = 0},
    config = { extra = { x_mult = 1.5 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        return { vars = { card.ability.extra.x_mult } }
    end,
    calculate = function (self, card, context)
         if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_steel') then
            return {
                x_mult = card.ability.extra.x_mult
            }
         end
    end
})