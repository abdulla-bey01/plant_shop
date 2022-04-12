import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '/ui/theming/controller/theme_controller.dart';
import '/ui/view-models/concrency/main_screen_view_model.dart';

class PlantCategories extends StatelessWidget {
  const PlantCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainScreenViewModel _mainScreenViewModel = Get.find();
    final ThemeController _themeController = Get.find();
    return Obx(() {
      final _theme = _themeController.theme;
      return SizedBox(
        height: 60.h,
        width: MediaQuery.of(context).size.width - 16.w,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _mainScreenViewModel.categories.length,
          itemBuilder: (ctx, index) {
            final _category = _mainScreenViewModel.categories[index];
            return Padding(
              padding: EdgeInsets.only(right: 60.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => _mainScreenViewModel
                        .selectCategory(_category.category.id),
                    child: Text(
                      _category.category.title,
                      style: _category.isSelected!
                          ? _theme.px17_c0_0_0_1_w800
                          : _theme.px17_c210_210_210_1_w900,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Container(
                    margin: const EdgeInsets.only(left: 1.5),
                    height: 4.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: _category.isSelected!
                          ? _theme.accentColor
                          : Colors.transparent,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
