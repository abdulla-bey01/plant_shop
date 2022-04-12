import '/app/commands/abstraction/i_base_command.dart';
import '/data/models/category_model.dart';
import '/data/models/plant_model.dart';

class ExportCategoriesFromPlantsCommand extends IBaseCommand {
  @override
  bool canExecute(Map? params) {
    return params!['plants'] != null &&
        params['plants'] is List<PlantModel> &&
        params['setCategories'] != null &&
        params['setCategories'] is Function(List<CategoryModel>);
  }

  @override
  void execute(Map? params) {
    List<PlantModel> _plants = params!['plants'];
    final List<CategoryModel> _categories = [];
    for (var plant in _plants) {
      for (var category in plant.categories) {
        if (!_categories.any((element) => element.id == category.id)) {
          _categories.add(category);
        }
      }
    }
    params['setCategories'](_categories);
  }
}
