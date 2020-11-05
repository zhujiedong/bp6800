library(racir)
library(plantecophys)
empty <- xls_read("data/racir-test-empty-1.xlsx")
leaf <- xls_read("data/racir-test-leaf-2.xlsx")

aci <- xls_read("data/aci-normal.xlsx")

view(leaf)

check_delta_empty(empty, delta_max_a = .5)
check_delta(leaf, delta_max_a = 0.5)

tidy_leaf <- tidy_data(leaf, delta_max_a = 0.5)
tidy_empty <- tidy_data_empty(empty, delta_max_a = 0.5)

view(tidy_leaf)
view(tidy_empty)

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


library(latex2exp)
plot(
  z$Ci,
  z$A,
  cex = 2,
  col = "gray",
  pch = 20,
  xlim = c(50, 1300),
  ylim = c(-1, 36),
  xlab = TeX('$C_i$ $(\\mu mol \\cdot mol^{-1})$'),
  ylab = TeX('A $(\\mu mol \\cdot mol^{-1})$')
)
points(aci$Ci,
       aci$A,
       cex = 1.8,
       col = "green",
       pch = 20)

legend(
  10,
  30,
  legend = c("RACiR", "ACi"),
  col = c("gray", "green"),
  pch = 20,
  bty = "n",
  pt.cex = 2,
  text.col = c("gray", "green"),
)

# reverse data ------------------------------------------------------------
library(racir)
library(plantecophys)
emptyr <- xls_read("data/racir-empty-reverse-1.xlsx")
leafr <- xls_read("data/racir-leaf-reverse-1.xlsx")

View(leafr)

max(leafr$CO2_r)
min(leafr$CO2_r)

check_delta_empty(emptyr, delta_max = .3, reverse = TRUE)
check_delta(leafr, 
            delta_max_a = 0.2,
            delta_max_ci = 2,
            reverse = FALSE) 

tidy_leafr <- tidy_data(leafr, delta_max = 0.5, reverse = TRUE)
tidy_emptyr <- tidy_data_empty(emptyr, delta_max = 0.5, reverse = TRUE)

view(tidy_leafr)
