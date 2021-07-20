import 'package:curriculo_portifolio_matheusr/src/constants/strings.dart';
import 'package:curriculo_portifolio_matheusr/src/styles/text_sizes.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_title.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class HabilidadesSoftware extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DelayedDisplay(
      delay: Duration(milliseconds: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: TextTitle(titulo: Strings.habilidades_Software.toUpperCase()),
          ),

          SizedBox(height: 60,),

          Text(
            Strings.habilidadesSoftwareLista,
            style: TextStyle(
              fontSize: TextSizes.medium,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w400,
              letterSpacing: 2,
              height: 4,
            ),
          ),

        ],
      ),
    );

  }
}
