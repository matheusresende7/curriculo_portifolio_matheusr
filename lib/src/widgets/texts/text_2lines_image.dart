import 'package:curriculo_portifolio_matheusr/src/styles/text_sizes.dart';
import 'package:flutter/material.dart';

class Text2LinesImage extends StatelessWidget {

  final String text1;
  final String text2;
  final String image;

  Text2LinesImage ({
    this.text1,
    this.text2,
    this.image,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Image.asset(
            this.image,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),

        SizedBox(width: 10,),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  this.text1,
                  style: TextStyle(
                    fontSize: TextSizes.medium,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                  ),
                ),

                SizedBox(height: 10,),

                Text(
                  this.text2,
                  style: TextStyle(
                    fontSize: TextSizes.small,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                  ),
                ),

              ],
            ),
          ),
        ),

      ],
    );

  }
}
