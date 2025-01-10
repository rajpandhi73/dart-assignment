class Vehicle
{
  String type;
  String fuelType;
  int maxSpeed;

  Vehicle(this.type, this.fuelType, this.maxSpeed);

  void displayDetails()
  {
    print("Vehicle Type: $type");
    print("Fuel Type: $fuelType");
    print("Max Speed: $maxSpeed km/h");
  }
}

class Car extends Vehicle
{
  int numberOfDoors;

  Car(String fuelType, int maxSpeed, this.numberOfDoors)
      : super("Car", fuelType, maxSpeed);

  @override
  void displayDetails()
  {
    super.displayDetails();
    print("Number of Doors: $numberOfDoors");
  }
}

class Bike extends Vehicle
{
  bool hasCarrier;

  Bike(String fuelType, int maxSpeed, this.hasCarrier)
      : super("Bike", fuelType, maxSpeed);

  @override
  void displayDetails()
  {
    super.displayDetails();
    print("Has Carrier: ${hasCarrier ? "Yes" : "No"}");
  }
}

void main()
{
  Car car = Car("Petrol", 200, 4);
  print("Car Details:");
  car.displayDetails();

  Bike bike = Bike("Electric", 80, true);
  print("\nBike Details:");
  bike.displayDetails();
}
