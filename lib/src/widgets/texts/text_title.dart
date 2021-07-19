import 'package:curriculo_portifolio_matheusr/src/styles/text_sizes.dart';
import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {

  final String titulo;

  TextTitle ({
    this.titulo,
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      this.titulo,
      style: TextStyle(
        fontSize: TextSizes.xxxxLarge,
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.w600,
        letterSpacing: 2,
      ),
      textAlign: TextAlign.start,
    );

  }
}
