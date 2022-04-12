import 'package:get/state_manager.dart';
import '/app/commands/abstraction/i_base_command.dart';
import '/app/commands/concrency/export_categories_from_plants_command.dart';
import '/app/commands/concrency/get_plants_command.dart';
import '/app/helpers/enums/request_state.dart';
import '/app/helpers/mixins/i_convert_category_to_selectable.dart';
import '/app/helpers/models/selectable_category.dart';
import '/data/models/category_model.dart';
import '/data/models/plant_model.dart';
import '/ui/view-models/abstraction/initializable.dart';

class MainScreenViewModel extends RxController
    with IConvertCategoryToSelectable
    implements Initializable {
  // encapsulated observable field
  late final RxList<PlantModel> _plants;
  List<PlantModel> get plants => _plants;
  set plants_(List<PlantModel> v) {
    _plants.value = v;
    exportCategoriesFromPlantsCommand.doExecute(
      {
        'plants': _plants,
        'setCategories': (List<CategoryModel> v) {
          categories_ = convertAllCategoriesToSelectable(v);
        }
      },
    );
  }

  late final RxList<SelectableCategory> _categories;
  List<SelectableCategory> get categories => _categories;
  set categories_(List<SelectableCategory> v) {
    _categories.value = v;
  }

  int get stackIndex =>
      _categories.indexWhere((element) => element.isSelected!);

  List<PlantModel> getCategoryPlants(dynamic categoryId) {
    return plants
        .where((plant) =>
            plant.categories.any((category) => category.id == categoryId))
        .toList();
  }

  late Rx<RequestState> _getPlantsRequestState;
  RequestState get getPlantsRequestState => _getPlantsRequestState.value;
  set getPlantsRequestState_(RequestState v) {
    _getPlantsRequestState.value = v;
  }

  late IBaseCommand getPlantsCommand;
  late IBaseCommand exportCategoriesFromPlantsCommand;

  void selectCategory(dynamic id) {
    for (var category in _categories) {
      category.isSelected = false;
    }
    _categories.firstWhere((element) => element.category.id == id).isSelected =
        true;
    _categories.value = List.from(_categories);
  }

  @override
  void initialize() {
    _plants = <PlantModel>[].obs;
    _getPlantsRequestState = RequestState.default_.obs;
    getPlantsCommand = GetPlantsCommand();
    getPlantsCommand.doExecute({'vm': this});
    _categories = <SelectableCategory>[].obs;
    exportCategoriesFromPlantsCommand = ExportCategoriesFromPlantsCommand();
  }

  MainScreenViewModel() {
    initialize();
  }
}
