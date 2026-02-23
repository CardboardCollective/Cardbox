SMODS.Joker({
    key = 'house',
    atlas = 'joker', pos = { x = 1, y = 1 },
    soul_pos = {
        x = 2, y = 1,
        draw = function(card, scale_mod, rotate_mod)
            card.children.floating_sprite:draw_shader('hologram', nil,
            card.ARGS.send_to_shader, nil, card.children.center, 2 * (scale_mod / 2), 2 * (rotate_mod / 2))
        end
    },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    end,
    rarity = 2, cost = 7,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local faces = 0
            for _, scored_card in ipairs(context.scoring_hand) do
                if scored_card:is_face() then
                    faces = faces + 1
                    scored_card:set_ability('m_steel', nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            scored_card:juice_up()
                            return true
                        end
                    }))
                end
            end
            if faces > 0 then
                return {
                    message = localize('k_active_ex'),
                    colour = G.C.ATTENTION
                }
            end
        end
    end
})