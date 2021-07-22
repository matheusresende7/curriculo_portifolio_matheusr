import 'package:curriculo_portifolio_matheusr/src/styles/text_sizes.dart';
import 'package:flutter/material.dart';

class Text2LinesProjects extends StatelessWidget {

  final String text1;
  final String text2;
  final String link;
  final IconData icon;
  final VoidCallback onTap;

  Text2LinesProjects ({
    this.text1,
    this.text2,
    this.link,
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

        Expanded(
          child: Padding(
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
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                          fontSize: TextSizes.small,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 2,
                        ),
                        children: [
                          TextSpan(text: this.text2,),
                          TextSpan(
                              text: this.link,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.blue
                              )
                          ),
                        ]
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
        ),

      ],
    );

  }
}
