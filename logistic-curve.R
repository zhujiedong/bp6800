x <- function(t) {
  30 / (1 + 50 * exp(-0.03 * t))
}

plot(NULL,
     xlim = c(0, 300),
     ylim = c(0, 31),)

curve(
  x,
  from = 0,
  to = 300,
  col = "cyan3",
  ylab = "log interval (seconds)",
  xlab = "Time (seconds)",
  lwd = 3
)

colors()
