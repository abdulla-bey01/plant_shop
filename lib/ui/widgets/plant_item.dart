import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '/data/models/plant_model.dart';
import '/ui/theming/controller/theme_controller.dart';
import '/ui/widgets/image_with_loading.dart';

class PlantItem extends StatelessWidget {
  const PlantItem({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    return Obx(() {
      final _theme = _themeController.theme;
      return SizedBox(
        height: 400.h,
        width: 260.w,
        child: Stack(
          children: [
            Container(
              height: 400.h,
              width: 260.w,
              decoration: BoxDecoration(
                color: _theme.secondaryColor,
                borderRadius: BorderRadius.circular(32.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 30.h),
                    Text(
                      plant.title,
                      style: _theme.px21_c0_0_0_1_w400,
                    ),
                    Text(
                      ' ' + plant.size.height + plant.size.width,
                      style: _theme.px9_c115_115_115_1_w500,
                    ),
                    SizedBox(height: 20.h),
                    Center(
                      child: ImageWithLoadingWidget(
                        url: plant.imageUrls.first,
                        width: 220.w,
                        height: 220.h,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          plant.price.currency +
                              plant.price.amount.toStringAsFixed(2),
                          style: _theme.px14_c115_115_115_1_w700,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 60.h,
                width: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    bottomRight: Radius.circular(32.r),
                  ),
                  color: _theme.accentColor,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      debugPrint('clicked to send ${plant.title} to basket');
                    },
                    icon: Icon(
                      Icons.add,
                      color: _theme.mainColor,
                      size: 24.h,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
