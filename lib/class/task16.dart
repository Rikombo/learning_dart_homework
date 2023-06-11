// 1. Create an abstract class `Vehicle`
// 2. It should have private fields int `maxSpeed`, String `model`, String `color`.
// 3. Make those fields accessible via getters & setters.
// 4. Add a method isValidSpeed that accepts speed as a parameter
//    and returns a boolean result that checks if speed is less than maxSpeed.
// 5. Create a child class Bus from Vehicle
// 6. Add new fields seatingCapacity and filledSeatsCount
// 7. In the setter of filledSeatsCount check if the number
//    is less or equal than seatingCapacity.
//    If it's not, throw an error with message "Not enough space".
// 8. Create a child class Car. Add your own custom fields to this class.
// 9. Create an `enum` called LicenceType. It should have values `car` and `bus`
// 10. Create a new class Driver.
// It should have fields String name,
// LicenceType licence and List<Vehicle> ownedVehicles.
// 11. It should have method `canDriveVehicle(Vehicle vehicle) `
// that checks if the driver can drive the specific type of
// passed vehicle (based on it's class, check if it's a bus or a car)
// and compared to the type of licence the driver has.
// 12. It should also have methods `void addVehicle(Vehicle vehicle)`
// and `void removeVehicle(String name)` that adds a new vehicle
// to the list `ownedVehicles` or removes the vehicle with the matching name.

void main() {
  final bus = Bus(
    seatingCapacity: 50,
    maxSpeed: 100,
    model: 'bmw',
    color: 'green',
  );
  bus.filledSeatsCount = 50;
  print('Bus color: ${bus.color}');
}

class Bus extends Vehicle {
  Bus({
    required this.seatingCapacity,
    required int maxSpeed,
    required String model,
    required String color,
  }) : super(maxSpeed: maxSpeed, model: model, color: color);

  final int seatingCapacity;
  int _filledSeatsCount = 0;

  int get filledSeatsCount => _filledSeatsCount;

  set filledSeatsCount(int value) {
    if (value <= seatingCapacity) {
      _filledSeatsCount = value;
    } else {
      throw Exception("Not enough space");
    }
  }
}

abstract class Vehicle {
  // private
  late int _maxSpeed;
  late String _model;
  late String _color;

  Vehicle({
    required int maxSpeed,
    required String model,
    required String color,
  }) {
    _maxSpeed = maxSpeed;
    _model = model;
    _color = color;
  }

  int get maxSpeed => _maxSpeed;

  set maxSpeed(int value) {
    _maxSpeed = value;
  }

  String get model => _model;

  set model(String value) {
    _model = value;
  }

  String get color => _color;

  set color(String value) {
    _color = value;
  }

  bool isValidSpeed(int speed) {
    return speed <= maxSpeed;
  }
}
