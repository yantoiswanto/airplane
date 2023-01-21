import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class CustomBottomNavigation extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const CustomBottomNavigation(
      {super.key, required this.imageUrl, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparent,
            borderRadius: BorderRadius.circular(18),
          ),
        )
      ],
    );
  }
}
