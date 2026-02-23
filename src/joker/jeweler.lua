SMODS.Joker ({
    key = "jeweler",
    blueprint_compat = true,
    rarity = 2,
    cost = 7,
    pos = {x = 0, y = 0},
    config = { extra = { x_chips = 1.75 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_gold
        return { vars = { card.ability.extra.x_chips } }
    end,
    calculate = function (self, card, context)
         if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_gold') then
            if context.other_card.debuff then
                return {
                    message = localize('k_debuffed'),
                    colour = G.C.RED
                }
            else
                return {
                    x_chips = card.ability.extra.x_chips
                }
            end
        end
    end
})