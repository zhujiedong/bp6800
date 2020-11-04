library(racir)
library(plantecophys)
empty <- xls_read("data/racir-test-empty-1.xlsx")
leaf <- xls_read("data//racir-test-leaf-2.xlsx")

aci <- xls_read("data//aci-normal.xlsx")

view(leaf)

check_delta_empty(empty, delta_max = 0.3)
check_delta(leaf, delta_max = 0.3)

tidy_leaf <- tidy_data(leaf, delta_max = 0.3)
tidy_empty <- tidy_data_empty(empty, delta_max = 0.3)

view(tidy_leaf)

# 修正带叶片测量数据
z <- correct_leaf(tidy_empty, tidy_leaf)

fit_racir <- fitaci(z,
               varnames =
                 list(
                   ALEAF = "A",
                   Tleaf = "Tleaf",
                   Ci = "Ci",
                   PPFD  = "Qin",
                   Rd = "Rd"
                ))
fit_normal <- fitaci(aci,
               varnames =
                 list(
                   ALEAF = "A",
                   Tleaf = "Tleaf",
                   Ci = "Ci",
                   PPFD  = "Qin",
                   Rd = "Rd"
                 ))
plot(fit_racir)
plot(fit_normal)

fit_racir$pars
fit_normal$pars





