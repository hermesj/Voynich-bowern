#### Suite for functions that are needed to perform the experiments of Hermes (2022)
### Jürgen Hermes, March 2nd 2023

source('./Entropy_Functions.R')

tokenLengthDistibutions <- function (s, remove.spaces = FALSE){

  # Convert the input string to lowercase and split it into words
  words <- tolower(strsplit(s, "\\W+")[[1]])

  # Count the frequency of word lengths for tokens
  word_length_tokens <- table(nchar(words))
  cat("Word length distribution for tokens:\n")
  print(word_length_tokens)
  return(word_length_tokens)
}

typeLengthDistibutions <- function (s, remove.spaces = FALSE){
 
  # Convert the input string to lowercase and split it into words
  words <- tolower(strsplit(s, "\\W+")[[1]])
  
  # Count the frequency of word lengths for types
  word_length_types <- table(nchar(unique(words)))
  cat("Word length distribution for types:\n")
  print(word_length_types)
  plot(word_length_types)
  return(word_length_types)
}
