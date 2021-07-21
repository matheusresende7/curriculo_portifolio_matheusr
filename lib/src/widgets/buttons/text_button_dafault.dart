import 'package:curriculo_portifolio_matheusr/src/styles/text_sizes.dart';
import 'package:flutter/material.dart';

class TextButtonDafault extends StatelessWidget {

  final String text;
  final String image;
  final VoidCallback onPressed;

  TextButtonDafault ({
    this.text,
    this.image,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return TextButton(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(67, 12, 67, 12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              this.image,
              width: 25,
              height: 25,
              fit: BoxFit.cover,
            ),

            SizedBox(width: 20,),

            Text(
              this.text ?? '',
              style: TextStyle (
                color: Theme.of(context).primaryColor,
                fontSize: TextSizes.medium,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),

          ],
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: this.onPressed ?? () {},
    );

  }
}
