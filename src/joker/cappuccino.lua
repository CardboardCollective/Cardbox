SMODS.Joker ({
    atlas = "joker",
    key = "cappuccino",
    blueprint_compat = true,
    rarity = 2,
    cost = 6,
    pos = {x = 5, y = 0},
    config = { extra = { x_mult = 3, dollars = -2 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult, card.ability.extra.dollars } }
    end,
    calculate = function (self, card, context)
        if context.joker_main then
            return {
                x_mult = card.ability.extra.x_mult,
                dollars = card.ability.extra.dollars
            }
        end
    end

})