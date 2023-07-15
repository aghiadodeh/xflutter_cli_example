/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'dart:io';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:image_fade/image_fade.dart';
import 'package:xflutter_cli_example/extensions/view_extension.dart';
import 'package:xflutter_cli_example/ui/resources/dimensions/dimensions.dart';

class AppImage extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageUrl;
  final Widget? errorWidget;
  final double raduis;
  final BoxFit? boxFit;
  final bool isAsset;

  const AppImage({
    this.width,
    this.height,
    this.imageUrl,
    this.raduis = unitAndHalf,
    this.errorWidget,
    this.boxFit,
    this.isAsset = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || (imageUrl ?? "").isEmpty) {
      return errorWidget ?? const Center(child: Icon(Icons.error_outline)).size(width);
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(raduis),
      child: imageUrl!.contains("http") ? fancyShimmerImage() : fadeImage(),
    );
  }

  Widget fadeImage() {
    if (imageUrl == null) return const SizedBox();
    return isAsset
        ? ImageFade(
            image: AssetImage(imageUrl!),
            fit: boxFit ?? BoxFit.cover,
            width: width,
            height: height,
          )
        : ImageFade(
            image: FileImage(File(imageUrl!)),
            fit: boxFit ?? BoxFit.cover,
            width: width,
            height: height,
          );
  }

  Widget fancyShimmerImage() {
    if (imageUrl == null) return const SizedBox();
    return FancyShimmerImage(
      imageUrl: imageUrl!,
      boxFit: boxFit ?? BoxFit.cover,
      shimmerBaseColor: Colors.grey[400] ?? Colors.grey.withOpacity(0.5),
      shimmerHighlightColor: Colors.grey[200] ?? Colors.grey.withOpacity(0.2),
      errorWidget: errorWidget ?? const Center(child: Icon(Icons.error_outline)).size(width),
      width: width ?? 300,
      height: height ?? 300,
    );
  }
}
