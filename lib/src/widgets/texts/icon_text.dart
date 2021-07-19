import 'package:curriculo_portifolio_matheusr/src/styles/text_sizes.dart';
import 'package:flutter/material.dart';

class IconText extends StatelessWidget {

  final String text;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  IconText ({
    this.text,
    this.icon,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: this.onTap ?? () {},
      child: Row(
        children: [

          Icon(
            this.icon,
            size: 30,
            color: this.color ?? Theme.of(context).primaryColor,
          ),

          SizedBox(width: 10,),

          Text(
            this.text,
            style: TextStyle(
              fontSize: TextSizes.medium,
              color: this.color ??  Theme.of(context).primaryColor,
              fontWeight: FontWeight.w400,
              letterSpacing: 2,
            ),
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );

  }
}
