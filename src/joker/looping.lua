SMODS.Joker ({
    key = "looping",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
    pos = {x = 0, y = 0},
    config = { extra = { retriggers = 1 } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_SEALS.Red
        return { vars = { card.ability.extra.retriggers } }
    end,
    calculate = function (self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.seal == "Red" then
            return {
                repetitions = card.ability.extra.retriggers
            }
            end
        end
    end
})