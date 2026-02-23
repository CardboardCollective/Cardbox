SMODS.Joker({
    key = "ontherun",

    rarity = 1,
    cost = 5,
    pos = { x = 1, y = 0 },
    atlas = "joker",
    config = { extra = { added_mult = 1, current_mult = 0 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.added_mult, card.ability.extra.current_mult } }
    end,

    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,

    calculate = function(self, card, context)
        if context.joker_main and card.ability.extra.current_mult > 0 then return { mult = card.ability.extra.current_mult } end

        if context.before then
            if G.GAME.current_round.discards_left > 0 then
                if card.ability.extra.current_mult > 0 then
                    card.ability.extra.current_mult = 0
                    return { message = localize("k_reset"), colour = G.C.RED }
                end
            else
                card.ability.extra.current_mult = card.ability.extra.current_mult + card.ability.extra.added_mult
                return { message = localize("k_upgrade_ex") }
            end
        end
    end

})
