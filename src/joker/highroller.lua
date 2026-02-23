SMODS.Joker ({
    key = "highroller",
    blueprint_compat = true,
    rarity = 2,
    cost = 9,
    pos = {x = 0, y = 0},
    config = { extra = { retriggers = 1 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
        return { vars = { card.ability.extra.retriggers } }
    end,
    calculate = function (self, card, context)
        if context.repetition then
            return {
                repetitions = card.ability.extra.retriggers,
            }
        end
    end
})