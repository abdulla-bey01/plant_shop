import '/app/helpers/models/selectable_category.dart';
import '/data/models/category_model.dart';

mixin IConvertCategoryToSelectable {
  SelectableCategory convertOneCategoryToSelectable(
    CategoryModel category, {
    bool selected = false,
  }) {
    return SelectableCategory(
      category: category,
    );
  }

  List<SelectableCategory> convertAllCategoriesToSelectable(
      List<CategoryModel> categories) {
    if (categories.isEmpty) return [];
    final _selectableCategories =
        categories.map((e) => convertOneCategoryToSelectable(e)).toList();
    _selectableCategories[0].isSelected = true;
    return _selectableCategories;
  }
}
