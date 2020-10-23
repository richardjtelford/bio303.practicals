#' plot grid
#' 
#' @description Plots the grid of sites in the simulated data
#' @param x ordination result from which site scores can be extracted or data.frame of values to plot 
#' @param choices which ordination axes to plot, vector of two interger.
#' @details Sites are shown by dots, lines show which sites have the same value for environmental variables 1 and 2 in the simulated data.
#' @note This function will be of little or no use outside of Bio303 indirect ordination practical as sites are rarely on a perfect grid.
#' @importFrom vegan scores
#' @importFrom ggplot2 ggplot aes geom_point geom_path coord_equal
#' @importFrom rlang .data
#' @examples 
#' data(sim_env2)
#' plot_grid(sim_env2)
#' 
#' library(vegan)
#' DCA <- decorana(sim_spp2)
#' plot_grid(DCA, choices = 1:2)
#' 
#' @export


plot_grid <- function(x, choices = 1:2){
  if(length(choices) != 2){
    stop("`choices` must be two numbers.")
  }
  if(!is.data.frame(x)){
    x <- scores(x, display = "sites", choices = choices)
    x <- as.data.frame(x)
    dim_names <- paste0("Dim", choices)
    colnames(x) <- dim_names
  } else {
    dim_names <- colnames(x)[choices]
  }
  
  x$row <- rep(1:10, each = 10)
  x$col <- rep(1:10, times = 10)
  x$row_colour <- ifelse(x$row == 5, "red", "grey40")
  x$col_colour <- ifelse(x$col == 5, "blue", "grey40")
  
  ggplot(x, aes(x = .data[[dim_names[1]]], y = .data[[dim_names[2]]])) +
    geom_path(aes(group = .data$col, colour = I(.data$col_colour)), 
              show.legend = FALSE) +
    geom_path(aes(group = .data$row, colour = I(.data$row_colour)), 
              show.legend = FALSE) +
    geom_point() +
    coord_equal() 
}
