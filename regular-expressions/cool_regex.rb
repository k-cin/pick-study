quote = "It's great 2 see you. (smiles)."

words_with_periods = quote.scan(/[\w'\.\(\)]+/)
words_without_periods = quote.scan(/[\w']+/)

p words_with_periods
p words_without_periods
