List<String> strlist1 = ["We", "are", "the", "world"];
List<String> strlist2 = ["I", "Love", "Programmers."];

void Solution(List<String> strlist) {
  List<int> results = [];

  for(int i = 0; i < strlist.length; i++) {
    results.add(strlist[i].length);
  } return print(results);
}

void main() {
Solution(strlist1);
Solution(strlist2);
}
