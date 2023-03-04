#### Suite for functions that are needed to perform the experiments of Hermes (2022)
### Jürgen Hermes, March 2nd 2023

source('./Entropy_Functions.R')

## This function generates a table for the word length distribution (tokens) of the specified text
tokenLengthDistibutions <- function (s, remove.spaces = FALSE){

  # Convert the input string to lowercase and split it into words
  words <- tolower(strsplit(s, "\\W+")[[1]])

  # Count the frequency of word lengths for tokens
  word_length_tokens <- table(nchar(words))
  #cat("Word length distribution for tokens:\n")
  
 
  return(word_length_tokens)
}

## This function generates a table for the word length distribution (types) of the specified text
typeLengthDistibutions <- function (s, remove.spaces = FALSE){
 
  # Convert the input string to lowercase and split it into words
  words <- tolower(strsplit(s, "\\W+")[[1]])
  
  # Count the frequency of word lengths for types
  word_length_types <- table(nchar(unique(words)))
  #cat("Word length distribution for types:\n")
  #print(word_length_types)
  return(word_length_types)
}


## This function pulls out consecutive repetitive sequences of a text
# dist is the levenshtein distance
# min.seq is the minimum length of a sequence
# min.word is the minimum length of a word

list.rep.seqs <- function (s, dist = 2, min.seq = 2, min.word = 3) {
  
  wlist <- unlist(strsplit(s, " "))
  toReturn <- 0
  i = 1
  while (i <= length(wlist)) {
    
    seq <- rep.list(i, wlist, dist, min.word)
    
    if (length(seq) > 1) {
      
      if (length(seq) >= min.seq) {
        #print(seq)
        toReturn <- toReturn + length(seq)-2        
        
      }
      i = i + length(seq) - 1
      
    } else {
      
      i = i + 1 
    }
    
  }
  return(toReturn/length(wlist))
}

# Character Entropy
charEntropies <- function(doc){
  char.entropy <- sumentropy(doc)
  char.h0 <- as.numeric(char.entropy[2])
  char.h1 <- as.numeric(char.entropy[3])
  char.H2 <- as.numeric(char.entropy[4])
  char.h2 <- as.numeric(char.entropy[5])
  char.H3 <- as.numeric(char.entropy[8])
  char.h3 <- as.numeric(char.entropy[9])
  toReturn <- data.frame(char.h0,char.h1,char.h2)
  return(toReturn)
}