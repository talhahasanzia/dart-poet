import 'dart:io';

class Analyzer {
  String path;

  Analyzer(this.path);

  void analyze() {
    var targetFile = File(path);

    var content = targetFile.readAsStringSync();

    print('$content \n');

    var lines = content.split('\n');

    var lineList = <Line>[];

    lines.forEach((line) {
      // remove remaining escape characters
      line = line.replaceAll('\r', '');
      lineList.add(Line(line));
    });

    // Since Dart doesn't have forEachIndexed operator, keep track of index+1 manually
    var lineNumber = 1;

    lineList.forEach((line) {
      print(
          line.getMostFrequentWords().map((e) => e.word).join(',').toString() +
              ' -> at Line # $lineNumber');
      lineNumber++;
    });

    print(getHighestFrequencyWord(lineList));
  }

  String getHighestFrequencyWord(List<Line> lineList) {
    var highestFrequency = 0;
    var highestFreqLine = 1;
    var highestFreqWord = '';

    var lineNumber = 1;

    lineList.forEach((line) {
      line.getMostFrequentWords().forEach((word) {
        if (word.frequency >= highestFrequency) {
          highestFrequency = word.frequency;
          highestFreqWord = word.word;
          highestFreqLine = lineNumber;
        }
      });

      lineNumber++;
    });

    return 'Most frequent word: \"$highestFreqWord\" appeared $highestFrequency times -> at line # $highestFreqLine';
  }
}

class Line {
  String line;
  var words = {};

  Line(this.line) {
    initWords();
  }

  void initWords() {
    line.split(' ').forEach((word) {
      word = word.toLowerCase();
      if (words.containsKey(word)) {
        words[word] = words[word] + 1;
      } else {
        words[word] = 1;
      }
    });
  }

  List<Word> getMostFrequentWords() {
    var frequentWords = <Word>[];
    var highestFrequency = 0;

    words.forEach((key, value) {
      if (value >= highestFrequency) {
        frequentWords.add(Word(key, value));
        highestFrequency = value;
      }
    });

    var highestFrequentWords = <Word>[];

    for (var word in frequentWords) {
      if (word.frequency == highestFrequency) {
        highestFrequentWords.add(word);
      }
    }

    return highestFrequentWords;
  }
}

class Word {
  String word;
  int frequency;

  Word(this.word, this.frequency);
}
