source(here::here("R/package-loading.R"))


glimpse(NHANES)


NHANES %>%
  mutate(Height = Height / 100,
         Testing = "yes",
         Heighlyactive = if_else(
           PhysActiveDays < = 5,
           "yes",
           "no")) %>%
  select(Height, Testing, Heighlyactive)
