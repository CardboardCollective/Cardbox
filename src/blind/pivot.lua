SMODS.Blind {
    key = "pivot",
    dollars = 5,
    mult = 2,
    boss = { min = 2 },
    boss_colour = HEX("ffc903"),
    atlas = "blinds",
    pos = { x = 0, y = 0 },

    loc_vars = function(self)
        local _handname, _played = 'High Card', -1
        if G.GAME and G.GAME.hands then
            for hand_key, hand_data in pairs(G.GAME.hands) do
                if hand_data.played > _played then
                    _played = hand_data.played
                    _handname = hand_key
                end
            end
        end
        return { vars = { "a",localize(_handname, 'poker_hands') } }
    end,

    collection_loc_vars = function(self)
        return { vars = { "your",localize('ph_most_played') } }
    end,

    debuff_hand = function(self, cards, hand, handname, check)
      
        local _handname, _played = 'High Card', -1
        for hand_key, hand_data in pairs(G.GAME.hands) do
            if hand_data.played > _played then
                _played = hand_data.played
                _handname = hand_key
            end
        end
        
        
        if handname == _handname then
            return true 
        end
        
        return false
    end,
}

