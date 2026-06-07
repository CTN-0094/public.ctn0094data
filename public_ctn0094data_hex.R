library(ggplot2)
library(ggforce)

# NIDA CTN colors
col_navy  <- "#1B3A5E"
col_blue  <- "#2E78B7"
col_mid   <- "#5BA3D9"
col_light <- "#A8CDEF"
col_white <- "#FFFFFF"

hex_df <- data.frame(
  x = c(200, 374, 374, 200,  26,  26),
  y = c(-18, -118, -318, -418, -318, -118)
)

ggplot() +
  geom_polygon(
    data = hex_df,
    aes(x = x, y = y),
    fill = col_navy, color = col_mid, linewidth = 1.0
  ) +
  geom_circle(
    aes(x0 = 200, y0 = -143, r = 78),
    fill = col_blue, alpha = 0.18, color = col_blue, linewidth = 0.6,
    inherit.aes = FALSE
  ) +
  geom_circle(
    aes(x0 = 161, y0 = -218, r = 78),
    fill = col_mid, alpha = 0.13, color = col_mid, linewidth = 0.6,
    inherit.aes = FALSE
  ) +
  geom_circle(
    aes(x0 = 239, y0 = -218, r = 78),
    fill = col_light, alpha = 0.12, color = col_light, linewidth = 0.6,
    inherit.aes = FALSE
  ) +
  annotate(
    "text", x = 200, y = -200,
    label = "CTN-0094",
    color = col_light, size = 5.5, fontface = "bold", family = "sans"
  ) +
  annotate(
    "text", x = 200, y = -97,
    label = "CTN-0027",
    color = col_light, size = 5.5, fontface = "bold", family = "sans"
  ) +
  annotate(
    "text", x = 123, y = -232,
    label = "CTN-0030",
    color = col_light, size = 5.5, fontface = "bold", family = "sans"
  ) +
  annotate(
    "text", x = 277, y = -232,
    label = "CTN-0051",
    color = col_light, size = 5.5, fontface = "bold", family = "sans"
  ) +
  annotate(
    "text", x = 200, y = -322,
    label = "public.ctn0094data",
    color = col_white, size = 6.5, fontface = "bold", family = "sans"
  ) +
  annotate(
    "text", x = 200, y = -345,
    label = "Harmonized OUD Treatment Data",
    color = col_light, size = 4.2, family = "sans"
  ) +
  annotate(
    "rect",
    xmin = 175, xmax = 225,
    ymin = -382, ymax = -357,
    fill = col_blue
  ) +
  annotate(
    "text", x = 200, y = -369,
    label = "R",
    color = col_white, size = 5.5, fontface = "bold", family = "sans"
  ) +
  coord_equal(
    xlim = c(26, 374),
    ylim = c(-418, -18)
  ) +
  theme_void() +
  theme(
    plot.background = element_rect(fill = "white", color = NA),
    plot.margin = margin(5, 5, 5, 5)
  )

ggsave(
  "public_ctn0094data_hex.png",
  width  = 5,      # larger physical size
  height = 5.775,  # maintains 400:462 aspect ratio (5 * 462/400)
  dpi    = 300,
  bg     = "white"
)