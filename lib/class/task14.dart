// Class work:
// Following the pattern, create two sets of planets. They should contain some similar planets, but also some different.
// Do the following operations and print results: union, intersection, difference.
// Try adding the same planet to the set. What happens?
// Try adding the same planet to the list. What happens?
// Check if the set contains a planet.


void main() {
  List<String> planetList = ["Mercury", "Venus", "Earth"];
  Set<String> planets1 = {"Mercury", "Venus", "Earth"};
  Set<String> planets2 = {"Earth", "Venus", "Jupiter"};

  print(planetList);
  print(planets1);
  print(planets2);

  planetList.add("Pluto");
  planetList.add("Earth");
  print(planetList);

  planets1.add("Pluto");
  planets1.add("Earth");

  final containsPluto = planets1.contains("Pluto");
  print(containsPluto);

  final union = planets1.union(planets2);
  print(union);
  final intersection = planets1.intersection(planets2);
  print(intersection);
  final difference = planets1.difference(planets2);
  print(difference);
  final difference2 = planets2.difference(planets1);
  print(difference2);


}