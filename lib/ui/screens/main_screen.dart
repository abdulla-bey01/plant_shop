import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '/app/helpers/enums/request_state.dart';
import '/ui/theming/controller/theme_controller.dart';
import '/ui/utils/constraints/ui_constraints.dart';
import '/ui/view-models/concrency/main_screen_view_model.dart';
import '/ui/widgets/centered_circular_progress_bar.dart';
import '/ui/widgets/fade_indexed_stack.dart';
import '/ui/widgets/plant_carousel.dart';
import '/ui/widgets/plant_categories.dart';
import '/ui/widgets/svg_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const route = '/main-screen';
  @override
  Widget build(BuildContext context) {
    final _themeController = Get.put(ThemeController());
    final _mainScreenViewModel = Get.put(MainScreenViewModel());
    return Obx(
      () {
        final _theme = _themeController.theme;
        return Scaffold(
          backgroundColor: _theme.mainColor,
          appBar: AppBar(
            backgroundColor: _theme.mainColor,
            elevation: 0,
            leading: SvgButton(
              svgPath: UiConstraints.instance.menuPath,
              padding: 16.0,
              onTap: () {
                debugPrint('clicked on menu');
              },
            ),
            actions: [
              SvgButton(
                svgPath: UiConstraints.instance.bagPath,
                onTap: () {
                  debugPrint('clicked on bag');
                },
              ),
              SizedBox(width: 32.0.w),
              SvgButton(
                svgPath: UiConstraints.instance.searchPath,
                onTap: () {
                  debugPrint('clicked on search');
                },
              ),
              SizedBox(width: 16.0.w)
            ],
          ),
          body:
              _mainScreenViewModel.getPlantsRequestState == RequestState.waiting
                  ? const CenteredCircularProgressBar()
                  : _mainScreenViewModel.getPlantsRequestState ==
                          RequestState.successfull
                      ? _buildSuccessBody(context)
                      : Center(
                          child: Text(
                            'Plants could not be loaded',
                            style: _theme.px21_c0_0_0_1_w400,
                          ),
                        ),
        );
      },
    );
  }

  Widget _buildSuccessBody(BuildContext context) {
    final MainScreenViewModel _mainScreenViewModel = Get.find();
    return Obx(() {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 60.h),
            child: const PlantCategories(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.h),
            child: SizedBox(
              height: 400.h,
              width: MediaQuery.of(context).size.width - 8.w,
              child: FadeIndexedStack(
                index: _mainScreenViewModel.stackIndex,
                children: _mainScreenViewModel.categories.map((category) {
                  return PlantCarousel(
                    plants: _mainScreenViewModel
                        .getCategoryPlants(category.category.id),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      );
    });
  }
}
