import '/data/models/amount_model.dart';
import '/data/models/category_model.dart';
import '/data/models/pot_model.dart';
import '/data/models/size_model.dart';
import 'package:simple_json_mapper/simple_json_mapper.dart';

@JObj()
class PlantModel {
  final dynamic id;
  final String title;
  final AmountModel price;
  final SizeModel size;
  final List<String> imageUrls;
  final List<CategoryModel> categories;
  final List<PotModel> pots;

  PlantModel({
    required this.id,
    required this.title,
    required this.price,
    required this.size,
    required this.imageUrls,
    required this.categories,
    required this.pots,
  });
}
