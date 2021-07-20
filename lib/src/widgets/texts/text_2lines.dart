import 'package:curriculo_portifolio_matheusr/src/styles/text_sizes.dart';
import 'package:flutter/material.dart';

class Text2Lines extends StatelessWidget {

  final String text1;
  final String text2;
  final IconData icon;
  final VoidCallback onTap;

  Text2Lines ({
    this.text1,
    this.text2,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Icon(
          this.icon,
          size: 30,
          color: Theme.of(context).primaryColor,
        ),

        SizedBox(width: 10,),

        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                this.text1,
                style: TextStyle(
                  fontSize: TextSizes.medium,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: 10,),

              InkWell(
                child: Text(
                  this.text2,
                  style: TextStyle(
                    fontSize: TextSizes.small,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                  ),
                ),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: this.onTap ?? () {},
              ),

            ],
          ),
        ),

      ],
    );

  }
}
