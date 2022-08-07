import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  final String image;
  const PhotoItem({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
