import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            padding: index > 0
                ? const EdgeInsets.fromLTRB(0, 0, 24, 0)
                : const EdgeInsets.fromLTRB(48, 0, 24, 0),
            child: InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  this.listImages[index],
                  height: this.height,
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () {
                Get.dialog(
                  GestureDetector(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        this.listImages[index],
                        height: this.height,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    onTap: () {Get.back();},
                  ),
                );
              },
            ),
          );
        },
      ),
    );

  }
}
