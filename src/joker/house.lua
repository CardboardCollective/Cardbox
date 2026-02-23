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
})