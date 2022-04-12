import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '/data/models/plant_model.dart';
import 'plant_item.dart';

class PlantCarousel extends StatelessWidget {
  const PlantCarousel({Key? key, required this.plants}) : super(key: key);
  final List<PlantModel> plants;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: false,
        aspectRatio: 0.9,
        enlargeCenterPage: true,
        reverse: true,
      ),
      items: plants.map((plant) {
        return PlantItem(plant: plant);
      }).toList(),
    );
  }
}
