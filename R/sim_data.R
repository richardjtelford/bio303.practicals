#' Simulated environmental and species data
#'
#' @description Simulate environmental and species data to test how well ordination methods can capture the underlying structure in species data.
#'
#'@details   
#' Datasets sim_env1 and sim_env2 contain environmental data simulated on a grid. In the former case, the grid is square, in the latter, one environmental variable is more important than the other.
#' 
#' Datasets sim_spp1 and sim_spp2 contain simulated species data for the environmental data.
#' 
#' @examples 
#' data(sim_spp1)
#' library(vegan)
#' decorana(sim_spp1)
#'   
#' @name sim_data
#' @keywords datasets
NULL


#' @rdname sim_data
"sim_env1"
#' @rdname sim_data
"sim_env2"
#' @rdname sim_data
"sim_spp1"
#' @rdname sim_data
"sim_spp2"