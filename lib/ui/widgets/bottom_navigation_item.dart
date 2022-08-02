import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const BottomNavigationItem({
    Key? key,
    required this.imageUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Container(
          height: 2,
          width: 30,
          decoration: BoxDecoration(
            color: isSelected ? primaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
