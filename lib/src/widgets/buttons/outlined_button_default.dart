import 'package:curriculo_portifolio_matheusr/src/styles/text_sizes.dart';
import 'package:flutter/material.dart';

class OutlinedButtonDefault extends StatelessWidget {

  final String text;
  final String image;
  final VoidCallback onPressed;

  OutlinedButtonDefault ({
    this.text,
    this.image,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: this.onPressed,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: OutlinedButton(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(70, 12, 70, 12),
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
                  color: Theme.of(context).accentColor,
                  fontSize: TextSizes.medium,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),

            ],
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide.lerp(
                BorderSide(
                  style: BorderStyle.solid,
                  color: Theme.of(context).accentColor,
                  width: 1,
                ),
                BorderSide(
                  style: BorderStyle.solid,
                  color: Theme.of(context).accentColor,
                  width: 1,
                ),
                10.0),
          ),
        ),
        onPressed: this.onPressed ?? () {},
      ),
    );

  }
}
