import 'package:booklyapp/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetData.testImage),
          ),
        ),
      ),
    );
  }
}
