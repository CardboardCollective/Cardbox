-- To_Big function either Talisman's or a dummy to ensure optional compatibility. 
-- https://github.com/nh6574/VanillaRemade/wiki#why-do-i-get-attempt-to-compare-number-with-table-when-talisman-is-installed
to_big = to_big or function(x) return x end