void main () {
  List<String> colorList = ["red", "blue", "green"];
  print(colorList);
  colorList.add("red");
  print(colorList);

  Set<String> colorSet = {"red", "green", "blue"};
  print(colorSet);

  colorSet.add("red");
  colorSet.add("yellow");
  print(colorSet);


  final containsRed = colorSet.contains("red");
  print(containsRed);

  Set<String> colorSet2 = {"green", "pink", "orange"};

  final union = colorSet.union(colorSet2);
  final intersection = colorSet.intersection(colorSet2);
  final difference = colorSet.difference(colorSet2);
  final difference2 = colorSet2.difference(colorSet);

  print(union);
  print(intersection);
  print(difference);
  print(difference2);

}