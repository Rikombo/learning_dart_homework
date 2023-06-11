// Class work:
// Create an enum `Month` and create an enum `Season`.
// Create a function of type `Season` that will return a season for a given month.
// For example, for `Month.january` it should return `Season.winter`.
// Print the `name` of the season to the console.

void main() {

  final season = whichSeason(Month.february);
  print(season.name);




}

Season whichSeason (Month month) {
  switch(month) {
    case Month.january:
    case Month.february:
    case Month.december:
      return Season.winter;
    case Month.march:
    case Month.april:
    case Month.may:
      return Season.spring;
    case Month.june:
    case Month.july:
    case Month.august:
      return Season.summer;
    case Month.september:
    case Month.october:
    case Month.november:
      return Season.autumn;
  }
}

enum Month {january, february, march, april, may, june, july, august, september, october, november, december}
enum Season {winter, spring, summer, autumn}