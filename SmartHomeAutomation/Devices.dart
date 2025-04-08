import 'SmartHome.dart';

class Light implements SmartHome {
  @override
  void TurnOff() => print('Light is OFF');
  @override
  void TurnOn() => print("Light is ON");
}

class AirConditioner implements SmartHome {
  @override
  void TurnOff() => print('"AC is OFF"');

  @override
  void TurnOn() => print('"AC is ON"');
  double Temperature = 0;
  void setTemperature(double temp) {
    Temperature = temp;
    print("Temperature set to $Temperature°C");
  }
}

class SecurityCamera implements SmartHome {
  @override
  void TurnOn() => print("Camera is ON");

  @override
  void TurnOff() => print("Camera is OFF");
  void detectMotion() => print("Motion detected");
}
