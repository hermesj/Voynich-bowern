# Define the input string
input_string <- "This is a sample string for counting word lengths, a is this."

# Convert the input string to lowercase and split it into words
words <- tolower(strsplit(input_string, "\\W+")[[1]])

# Count the frequency of word lengths for types
word_length_types <- table(nchar(unique(words)))

# Count the frequency of word lengths for tokens
word_length_tokens <- table(nchar(words))

# Print the results
cat("Word length distribution for types:\n")
print(word_length_types)
cat("Word length distribution for tokens:\n")


print(word_length_tokens)
