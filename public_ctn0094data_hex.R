library(ggplot2)
library(ggforce)
library(ragg)
library(grid)

# NIDA CTN colors
col_navy  <- "#1B3A5E"
col_blue  <- "#2E78B7"
col_mid   <- "#5BA3D9"
col_light <- "#A8CDEF"
col_white <- "#FFFFFF"

hex_df <- data.frame(
  x = c(200, 374, 374, 200,  26,  26),
  y = c(18, 118, 318, 418, 318, 118)
)

p <- ggplot() +
  geom_polygon(
    data = hex_df,
    aes(x = x, y = y),
    fill = col_navy, color = col_mid, linewidth = 5.5 / 2.835
  ) +
  geom_circle(
    aes(x0 = 200, y0 = 143, r = 78),
    fill = col_blue, alpha = 0.18, color = col_blue, linewidth = 2.5 / 2.835,
    inherit.aes = FALSE
  ) +
  geom_circle(
    aes(x0 = 161, y0 = 218, r = 78),
    fill = col_mid, alpha = 0.13, color = col_mid, linewidth = 2.5 / 2.835,
    inherit.aes = FALSE
  ) +
  geom_circle(
    aes(x0 = 239, y0 = 218, r = 78),
    fill = col_light, alpha = 0.12, color = col_light, linewidth = 2.5 / 2.835,
    inherit.aes = FALSE
  ) +
  annotate(
    "text", x = 200, y = 200,
    label = "CTN-0094",
    color = col_light, size = 3.2, fontface = "bold", family = "sans"
  ) +
  annotate(
    "text", x = 200, y = 97,
    label = "CTN-0027",
    color = col_light, size = 3.2, fontface = "bold", family = "sans"
  ) +
  annotate(
    "text", x = 123, y = 232,
    label = "CTN-0030",
    color = col_light, size = 3.2, fontface = "bold", family = "sans"
  ) +
  annotate(
    "text", x = 277, y = 232,
    label = "CTN-0051",
    color = col_light, size = 3.2, fontface = "bold", family = "sans"
  ) +
  annotate(
    "text", x = 200, y = 322,
    label = "public.ctn0094data",
    color = col_white, size = 3.8, fontface = "bold", family = "sans"
  ) +
  annotate(
    "text", x = 200, y = 342,
    label = "Harmonized OUD Treatment Data",
    color = col_light, size = 2.5, family = "sans"
  ) +
  annotation_custom(
    grob = roundrectGrob(
      x = 0.5, y = 0.5, width = 1, height = 1,
      r = unit(0.12, "snpc"),
      gp = gpar(fill = scales::alpha(col_blue, 0.95), col = NA)
    ),
    xmin = 183, xmax = 217, ymin = 354, ymax = 374
  ) +
  annotate(
    "text", x = 200, y = 364,
    label = "R",
    color = col_white, size = 3.5, fontface = "bold", family = "sans"
  ) +
  coord_equal(
    xlim = c(26, 374),
    ylim = c(18, 418)
  ) +
  scale_y_reverse() +
  theme_void() +
  theme(
    plot.background = element_rect(fill = "white", color = NA),
    plot.margin = margin(0, 0, 0, 0)
  )

# res=300 makes fonts render at true pt size relative to pixel canvas
agg_png(
  "public_ctn0094data_hex.png",
  width  = 1200,
  height = 1386,
  units  = "px",
  res    = 300
)
print(p)
dev.off()