is_new_ellmer <- function() {
  utils::packageVersion("ellmer") > "0.2.0"
}

get_test_prompts <- function(n = 3) {
  prompts <- list(
    "What is 2+2?",
    "Name a planet.",
    "What color is the sky?"
  )
  return(prompts[seq_len(n)])
}

get_sentiment_type_spec <- function() {
  type_object(
    "Extract sentiment",
    score = type_number("Sentiment score from -1 to 1")
  )
}

get_square_tool <- function() {
  square_number <- function(num) num^2
  tool(
    square_number,
    "Calculates the square of a number",
    num = type_integer("The number to square")
  )
}
