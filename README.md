# Dart-Poet
A next generation text analyzer that counts the words in a sentence. Written in modern day high level programming language Dart.

## Assignment
Read text from a file and find words that appear most in a line in the file. 
(i) finding the highest frequency word(s) in each line 
(ii) finding lines in the file whose "highest frequency words" is the greatest value among all lines. 
Print the result in the following format: 
The following words have the highest word frequency per line:
["word1"] (appears in line #)
["word2", "word3"] (appears in line #)

## Solution
- `Analyzer` class starts reading from file and analyzing lines, get frequency of lines and get maximum frequent word in whole file
- `Line` class breaks the line into words and provides their frequency
- `Word` class to hold word and their frequency data

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).
