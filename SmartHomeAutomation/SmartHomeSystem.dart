import 'Devices.dart';
import 'SmartHome.dart';

class SmartHomeSystem {
  List<SmartHome> devices = [];
  void addDevice(SmartHome device) {
    devices.add(device);
  }

  void TurnAllOff() {
    for (var device in devices) {
      device.TurnOff();
    }
  }

  void TurnAllON() {
    for (var device in devices) {
      device.TurnOn();
    }
  }
}

void main() {
  var homeSystem = SmartHomeSystem();
  var light = Light();
  var ac = AirConditioner();
  var camera = SecurityCamera();
  homeSystem.addDevice(light);
  homeSystem.addDevice(ac);
  homeSystem.addDevice(camera);
  homeSystem.TurnAllON();
  ac.setTemperature(12);
}
