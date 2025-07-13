import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.borderRadius,
    this.child,
    this.fit = BoxFit.cover,
    this.errorWidget,
    this.placeholderAsset,
  });

  final String imageUrl;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final Widget? child;
  final BoxFit fit;
  final Widget? errorWidget;
  final String? placeholderAsset;

  bool get _isImageUrlValid => imageUrl.trim().isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      child:
          _isImageUrlValid
              ? CachedNetworkImage(
                width: width ?? double.infinity,
                height: height ?? 150,
                fit: fit,
                imageUrl: imageUrl,
                progressIndicatorBuilder: (context, url, downloadProgress) {
                  return child ??
                      Center(
                        child: CircularProgressIndicator(
                          value: downloadProgress.progress,
                        ),
                      );
                },
                errorWidget: (context, url, error) => _buildPlaceholder(),
              )
              : _buildPlaceholder(),
    );
  }

  Widget _buildPlaceholder() {
    return Image.asset(
      placeholderAsset ?? 'assets/images/property_placeholder.jpg',
      height: height ?? 150,
      width: width ?? double.infinity,
      fit: BoxFit.contain,
    );
  }
}
