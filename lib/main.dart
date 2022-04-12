import 'package:flutter/material.dart';
import '/app/start/plant_shop.dart';
import 'mapper.g.dart' as mapper;

void main() {
  mapper.init();
  runApp(const PlantShop());
}
