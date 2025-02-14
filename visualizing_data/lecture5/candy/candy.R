# Introduce geom_point

load("candy.RData")

# jittering: allow the points to be on a slightly off position to avoid overlaying

ggplot(
  candy,
  aes(x = price_percentile, y = sugar_percentile)
) +
  geom_jitter(
    color = "darkorchid",
    fill = "green",
    shape = 21,
    size = 5,
  ) +
  labs(
    x = "Price",
    y = "Sugar",
    title = "Price and Sugar"
  ) +
  theme_classic()



candy
