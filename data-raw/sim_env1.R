## code to prepare `sim_env1` dataset goes here
sim_env1 <- read.csv(file = "data-raw/env1.csv")

usethis::use_data(sim_env1, overwrite = TRUE)

## code to prepare `sim_env2` dataset goes here
sim_env2 <- read.csv(file = "data-raw/env2.csv")

usethis::use_data(sim_env2, overwrite = TRUE)

## code to prepare `sim_spp1` dataset goes here
sim_spp1 <- read.csv(file = "data-raw/spp1.csv")

usethis::use_data(sim_spp1, overwrite = TRUE)

## code to prepare `sim_env1` dataset goes here
sim_spp2 <- read.csv(file = "data-raw/spp2.csv")

usethis::use_data(sim_spp2, overwrite = TRUE)


#### ponds ####

## code to prepare `ponds_env` dataset goes here
ponds_env <- read.csv(file = "data-raw/ponds.env.csv")

usethis::use_data(ponds_env, overwrite = TRUE)

## code to prepare `ponds_env` dataset goes here
ponds_spp <- read.csv(file = "data-raw/ponds.spp.csv")

usethis::use_data(ponds_spp, overwrite = TRUE)

#### Atlantic Forams ####
## code to prepare `atl_env` dataset goes here
atl_env <- read.csv(file = "data-raw/atl.env.csv")

usethis::use_data(atl_env, overwrite = TRUE)

## code to prepare `atl_env` dataset goes here
atl_spp <- read.csv(file = "data-raw/atl.spp.csv")

usethis::use_data(atl_spp, overwrite = TRUE)



