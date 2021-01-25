import 'package:quran/models/soura.dart';
import 'package:quran/screens/Home.dart';
import 'package:url_launcher/url_launcher.dart';
List computeLPS(String pattern){
  List lps = new List(pattern.length);
  lps[0] = 0;
  int m = pattern.length;
  int j = 0;
  int i = 1;

  while (i < m) {
    if (pattern[j] == pattern[i]) {
      lps[i] = j + 1;
      i++;
      j++;
    } else if (j > 0) {
      j = lps[j-1];
    } else { // no match
      lps[i] = 0;
      i++;
    }
  }

  return lps;
}


List<int> kmp(String text, String pattern) {
  List<int> foundIndexes = new List<int>();
  int n = text.length;
  int m = pattern.length;

  int i = 0;
  int j = 0;
  List lps = computeLPS(pattern);

  while (i < n) {
    if (pattern[j] == text[i]) {
      i++;
      j++;
    }

    if (j == m) {
      foundIndexes.add(i - m); // Match
      j = lps[j - 1];
    } else if (i < n && pattern[j] != text[i]) {
      if (j != 0) {
        j = lps[j - 1];
      } else {
        i = i + 1;
      }
    }
  }

  return foundIndexes;
}


