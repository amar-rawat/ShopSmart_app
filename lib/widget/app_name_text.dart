import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        period: const Duration(seconds: 2),
        baseColor: Colors.purple,
        highlightColor: Colors.red,
        child: const Text(
          'ShopSmart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }
}
