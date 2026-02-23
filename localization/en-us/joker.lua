
return {
    descriptions = {
        Joker = {
            j_cb_brawler = {
                name = "Brawler",
                text = {
                    "This Joker gains {X:red,C:white}X#1#{} Mult",
                    "every time a hand triggers",
                    "the {C:attention}Boss Blind{} ability",
                    "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
                }
            },
            j_cb_stonecutter = {
                name = "Stonecutter",
                text = {
                    "Played {C:attention}Stone{} cards",
                    "give {C:money}$3{} when scored"
                }
            },
            j_cb_metallurgist = {
                name = "Metallurgist",
                text = {
                    "Each played {C:attention}Steel{}",
                    "card gives {X:red,C:white}X#1#{}",
                    "Mult when scored",

                }
            },
            j_cb_jeweler = {
                name = "Jeweler",
                text = {
                    "Each played {C:attention}Gold{}",
                    "card gives {X:chips,C:white}X#1#{}",
                    "Chips when scored"
                }
            },
            j_cb_glassblower = {
                name = "Glassblower",
                text = {
                    "Each {C:attention}Glass{} card",
                    "held in hand",
                    "give {X:chips,C:white}X#1#{} Chips"
                }
            },
            j_cb_highroller = {
                name = "Highroller",
                text = {
                    "Retrigger all",
                    "played {C:attention}Lucky{} cards"
                }
            },
            j_cb_looping = {
                name = "Looping",
                text = {
                    "Retrigger all",
                    "played cards",
                    "with a {C:attention}Red Seal{}"
                }
            },
            j_cb_blockchain = {
                name = "Blockchain",
                text = { {
                    "Cards with a {C:attention}Gold Seal{} give an additional {C:money}+$#1#{} when scored",
                    "Cards with a {C:attention}Gold Seal{} give {C:money}+$#2#{} when held in hand"
                    },{
                        "{s:2,C:red,E:1}Always Rental"
                    }
                }
            },
            j_cb_philosophy = {
                name = "Philosophy",
                text = { {
                    "Cards with a {C:attention}Purple Seal{} have a {C:green}#2# in #3# chance{} to create",
                    "#1# {C:dark_edition}Negative {C:spectral}Spectral {}card(s) as well",
                    },{
                        "{s:2,C:red,E:1}Always Perishable"
                    }
                }
            },
            j_cb_ontherun = {
                name = "On the Run",
                text = {
                    "Gains {C:mult}+#1#{} Mult for each",
                    "{C:attention}consecutive{} hand played",
                    "with {C:attention}0{} discards remaining",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult){}"
                }
            },
            j_cb_occultbanner = {
                name = "Occult Banner",
                text = {
                    "Next shop is {C:green}guaranteed{}",
                    "to have a {C:spectral}Spectral Pack{}",
                    "if no discards are used",
                    "by end of the round"
                }
            },
            j_cb_cappuccino = {
                name = "Cappuccino",
                text = {
                    "{X:mult,C:white}X3{} Mult,",
                    "lose {C:money}$2{} if",
                    "hand is played"
                }
            },

             j_cb_house = {
                name = "Mr. House",
                text = {
                    "All played {C:attention}face{} cards",
                    "become {C:attention}Steel{} cards",
                    "when scored",
                }
            }
        }
    }
}
