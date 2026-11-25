
# Pour la carte
icone_milieu <- function(milieu, RA, couleurs_par_region) {
  makeAwesomeIcon(
    icon = case_when(
      milieu == "foret" ~ "tree",
      milieu == "urbain" ~ "building",
      milieu == "agricole" ~ "glyphicon-grain",
      TRUE ~ "question"
    ),
    library = ifelse(milieu == "agricole", "glyphicon", "fa"),
    iconColor = "black",
    markerColor = unname(couleurs_par_region[as.character(RA)])
  )
}

cat_iqa <- function(x) {
  case_when (
    is.na(x) ~ NA_character_,
    round(x) <= 26 ~ "bon",
    round(x) <= 50 ~ "acceptable",
    .default = "mauvais"
      )
}
