SMODS.Joker {
    key = "occultbanner",

    rarity = 3,
    cost = 8,
    pos = { x = 0, y = 0 },
    atlas = "joker",

    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    calculate = function(self, card, context)
        if context.end_of_round and not context.blueprint and not context.individual and not context.repetition and G.GAME.current_round.discards_used == 0 then
            G.GAME.current_round.cb_next_shop_spectral = true
            return { message = localize("k_cardb_success_ex"), colour = G.C.GREEN }
        end
    end
}

