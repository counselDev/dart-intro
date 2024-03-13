void main() {
  final car = Car(20, 10);
car.acccelarate();
}

class Vehicle {
  int _oilLevel;
  int speed = 0;

  Vehicle(this._oilLevel, this.speed) {
    print("Vehicle Constructor");
  }

  Vehicle.latestBrand(this._oilLevel) {
    print("Vehicle latestBrand Constructor");
  }

  get oilLevel => _oilLevel;

  set setOilLevel(int value) {
    _oilLevel = value;
  }

  acccelarate() {
    this.speed += 30;
    print("Vehicle acceleration");
  }
}

class Car extends Vehicle {
  Car(int _oilLevel, int speed) : super(_oilLevel, speed) {
    print("Car Constructor");
  }

  @override
  acccelarate() {
    this.speed += 40;
    print("Car acceleration");
  }
}
