SMODS.Joker({
    key = 'blackops',
    blueprint_compat = true,
    rarity = 2, cost = 6,
    atlas = 'joker', pos = { x = 3, y = 1 },
    config = { extra = { dollars = 6 } },
    loc_vars = function(self, info_queue, card)
        local blackops_card = G.GAME.current_round.blackops_card or { rank = 'Queen', suit = 'Diamonds' }
        return { vars = {
            card.ability.extra.dollars,
            localize(blackops_card.rank, 'ranks'),
            localize(blackops_card.suit, 'suits_plural'),
            string.upper(localize(blackops_card.rank, 'ranks')),
            string.upper(localize(blackops_card.suit, 'suits_plural')),
            colours = {
                G.C.SUITS[blackops_card.suit],
                G.C.UI.TEXT_DARK, G.C.WHITE
            }
        } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
            context.other_card:get_id() == G.GAME.current_round.blackops_card.id and
            context.other_card:is_suit(G.GAME.current_round.blackops_card.suit) then
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.dollars
            return {
                dollars = card.ability.extra.dollars,
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            G.GAME.dollar_buffer = 0
                            return true
                        end
                    }))
                end
            }
        end
    end
})

local function reset_blackops_card()
    G.GAME.current_round.blackops_card = { rank = 'Ace', suit = 'Spades' }
    local valid_blackops_card = {}
    for _, playing_card in ipairs(G.playing_cards) do
        if not SMODS.has_no_suit(playing_card) and not SMODS.has_no_rank(playing_card) then
            valid_blackops_card[#valid_blackops_card + 1] = playing_card
        end
    end
    local blackops_card = pseudorandom_element(valid_blackops_card, 'blackops' .. G.GAME.round_resets.ante)
    if blackops_card then
        G.GAME.current_round.blackops_card.rank = blackops_card.base.value
        G.GAME.current_round.blackops_card.suit = blackops_card.base.suit
        G.GAME.current_round.blackops_card.id = blackops_card.base.id
    end
end

function SMODS.current_mod.reset_game_globals(run_start)
    reset_blackops_card()
end