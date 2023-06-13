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
    id: '2',
    maxSpeed: 100,
    model: 'bmw',
    color: 'green',
  );
  bus.filledSeatsCount = 50;
  print('Bus color: ${bus.color}');

  final carAudi =
      Car(id: '1', tyres: 4, maxSpeed: 280, model: 'audi', color: 'red');
  final carBmw =
      Car(tyres: 4, id: '3', maxSpeed: 300, model: 'bmw', color: 'green');
  final driver1 = Driver(name: 'Valentins Stepanovs', licence: LicenceType.car);
  print(driver1.canDriveVehicle(bus));
  driver1.addVehicle(carAudi);
  driver1.addVehicle(carBmw);

  printOwnedVehicles(driver1);

  driver1.removeVehicle('1');

  printOwnedVehicles(driver1);
}

void printOwnedVehicles(Driver driver) {
  for (Vehicle vehicle in driver.ownedVehicles) {
    print(
        'Vehicle Model: ${vehicle.model}, MaxSpeed: ${vehicle.maxSpeed}, Color: ${vehicle.color}');
  }
}

enum LicenceType { car, bus }

class Driver {
  Driver({required this.name, required this.licence});

  final String name;
  final LicenceType licence;
  final List<Vehicle> ownedVehicles = [];

  bool canDriveVehicle(Vehicle vehicle) {
    if (vehicle is Car && licence == LicenceType.bus) {
      return true;
    } else {
      return false;
    }
  }

  void addVehicle(Vehicle vehicle) {
    ownedVehicles.add(vehicle);
  }

  void removeVehicle(String id) {
    ownedVehicles.removeWhere((vehicle) => vehicle.id == id);
  }
}

class Car extends Vehicle {
  Car({
    required this.tyres,
    required String id,
    required int maxSpeed,
    required String model,
    required String color,
  }) : super(id: id, maxSpeed: maxSpeed, model: model, color: color);
  final int tyres;
}

class Bus extends Vehicle {
  Bus({
    required this.seatingCapacity,
    required String id,
    required int maxSpeed,
    required String model,
    required String color,
  }) : super(id: id, maxSpeed: maxSpeed, model: model, color: color);

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
  late String _id;
  late int _maxSpeed;
  late String _model;
  late String _color;

  Vehicle({
    required String id,
    required int maxSpeed,
    required String model,
    required String color,
  }) {
    _id = id;
    _maxSpeed = maxSpeed;
    _model = model;
    _color = color;
  }

  String get id => _id;

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
