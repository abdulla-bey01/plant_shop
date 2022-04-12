import '/data/models/category_model.dart';

class SelectableCategory {
  final CategoryModel category;
  late bool? isSelected;
  SelectableCategory({
    required this.category,
    this.isSelected = false,
  });
}
