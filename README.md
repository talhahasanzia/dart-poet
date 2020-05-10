# Dart-Poet
A next generation text analyzer that counts the words in a sentence. Written in modern day high level programming language Dart.

## Assignment
Read text from a file and find words that appear most in a line in the file. 

- (i) finding the highest frequency word(s) in each line 
- (ii) finding lines in the file whose "highest frequency words" is the greatest value among all lines. 

Print the result in the following format: 

The following words have the highest word frequency per line:

- ["word1"] (appears in line #)
- ["word2", "word3"] (appears in line #)

## Solution
- `Analyzer` ([goto source](https://github.com/talhahasanzia/dart-poet/blob/master/bin/Analyzer.dart)) class starts reading from file and analyzing lines, get frequency of lines and get maximum frequent word in whole file
- `Line` class breaks the line into words and provides their frequency
- `Word` class to hold word and their frequency data

## License
### Dart
Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

### This project
Copyright 2020 @talhahasanzia

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
