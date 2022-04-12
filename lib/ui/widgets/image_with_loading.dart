import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '/ui/theming/controller/theme_controller.dart';
import '/ui/widgets/centered_circular_progress_bar.dart';

class ImageWithLoadingWidget extends StatelessWidget {
  const ImageWithLoadingWidget({
    Key? key,
    required this.url,
    required this.width,
    required this.height,
    this.borderRadius,
    this.boxFit,
    this.innerPadding,
  }) : super(key: key);
  final String url;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final BoxFit? boxFit;
  final EdgeInsets? innerPadding;

  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    return Obx(() {
      final _theme = _themeController.theme;
      return SizedBox(
        height: height ?? 184.0.h,
        width: width ?? 148.0.w,
        child: borderRadius != null
            ? SizedBox(
                height: height,
                width: width,
                child: ClipRRect(
                  borderRadius: borderRadius,
                  child: Padding(
                    padding: innerPadding ?? const EdgeInsets.all(0),
                    child: _chachedImage(
                      errorTextStyle: _theme.px12_c169_169_169_1_w500,
                    ),
                  ),
                ),
              )
            : ClipOval(
                child: _chachedImage(
                  errorTextStyle: _theme.px12_c169_169_169_1_w500,
                ),
              ),
      );
    });
  }

  Widget _chachedImage({TextStyle? errorTextStyle}) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: boxFit ?? BoxFit.cover,
      fadeInDuration: const Duration(milliseconds: 100),
      fadeOutDuration: const Duration(milliseconds: 100),
      progressIndicatorBuilder: (context, url, downloadProgress) {
        return const CenteredCircularProgressBar();
      },
      errorWidget: (context, url, error) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.wallpaper_rounded,
                  size: 20.0.h,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Image could not be loaded',
                    style: errorTextStyle,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
