# Generate PDF of spatial distribution maps for Phase 1 Q1
# Output: analysis/phase-1-q-1-spatial-maps.pdf

library(tidyverse)
library(lubridate)
library(sf)
library(scales)
library(patchwork)
here::i_am("hpai-challenge/analysis/phase-1-q-1-spatial-map.R")

# Load data
cases <- read_csv(here::here("hpai-challenge/data/phase-1/cases.csv"),
                   show_col_types = FALSE) |>
  mutate(
    date_confirmed = ymd(date_confirmed)
  )

population <- read_csv(here::here("hpai-challenge/data/canonical/population.csv"),
                        show_col_types = FALSE)

counties <- st_read(here::here("hpai-challenge/data/canonical/counties_32626.geojson"),
                     quiet = TRUE)

cases_full <- cases |> left_join(population, by = "farm_id")

cases_sf <- cases_full |>
  filter(!is.na(x), !is.na(y)) |>
  st_as_sf(coords = c("x", "y"), crs = st_crs(counties)) |>
  mutate(epidemic_day = as.numeric(date_confirmed - min(date_confirmed, na.rm = TRUE)))

farms_sf <- population |>
  filter(!is.na(x), !is.na(y)) |>
  st_as_sf(coords = c("x", "y"), crs = st_crs(counties))

theme_set(theme_void(base_size = 11))

# Map 1: Outbreaks by species
p1 <- ggplot() +
  geom_sf(data = counties, fill = "grey95", colour = "grey40") +
  geom_sf(data = farms_sf, colour = "grey80", size = 0.3, alpha = 0.5) +
  geom_sf(data = cases_sf,
          aes(colour = species, shape = species),
          size = 2.5, alpha = 0.8) +
  scale_colour_manual(
    values = c("duck" = "#1f77b4", "chicken" = "#ff7f0e"),
    labels = str_to_title, name = "Species"
  ) +
  scale_shape_manual(
    values = c("duck" = 16, "chicken" = 17),
    labels = str_to_title, name = "Species"
  ) +
  labs(title = "A) Outbreak Distribution by Species") +
  theme(legend.position = "bottom")

# Map 2: Temporal-spatial progression
p2 <- ggplot() +
  geom_sf(data = counties, fill = "grey95", colour = "grey40") +
  geom_sf(data = farms_sf, colour = "grey90", size = 0.2, alpha = 0.4) +
  geom_sf(data = cases_sf |> arrange(epidemic_day),
          aes(colour = epidemic_day),
          size = 2.5, alpha = 0.85) +
  scale_colour_viridis_c(
    name = "Epidemic Day", option = "inferno", direction = -1
  ) +
  labs(title = "B) Temporal-Spatial Progression") +
  theme(legend.position = "bottom")

# Map 3: By production type
p3 <- ggplot() +
  geom_sf(data = counties, fill = "grey95", colour = "grey40") +
  geom_sf(data = farms_sf, colour = "grey90", size = 0.2, alpha = 0.4) +
  geom_sf(data = cases_sf,
          aes(colour = production),
          size = 2.5, alpha = 0.8) +
  scale_colour_brewer(
    palette = "Set1",
    labels = \(x) str_replace_all(x, "_", " ") |> str_to_title(),
    name = "Production Type"
  ) +
  labs(title = "C) Outbreak Distribution by Production Type") +
  theme(legend.position = "bottom")

# Save combined PDF
pdf(here::here("hpai-challenge/analysis/phase-1-q-1-spatial-maps.pdf"),
    width = 12, height = 16)
print(p1 / p2 / p3)
dev.off()

cat("Saved: analysis/phase-1-q-1-spatial-maps.pdf\n")
