import 'package:flutter/material.dart';

class ListviewImages extends StatelessWidget {

  final double height;
  final int itemCount;
  final List listImages;

  ListviewImages ({
    this.height,
    this.itemCount,
    this.listImages,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: this.height,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        //shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: this.itemCount,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                this.listImages[index],
                height: this.height,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );

  }
}
