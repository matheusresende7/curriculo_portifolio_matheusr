import 'package:curriculo_portifolio_matheusr/src/constants/images.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/strings.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_2lines_image.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_title.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class Idiomas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DelayedDisplay(
      delay: Duration(milliseconds: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: TextTitle(titulo: Strings.idiomas.toUpperCase()),
          ),

          SizedBox(height: 60,),

          Text2LinesImage(
            text1: Strings.ingles.toUpperCase(),
            text2: Strings.avancado,
            image: Images.english,
          ),

          SizedBox(height: 40,),

          Text2LinesImage(
            text1: Strings.portugues.toUpperCase(),
            text2: Strings.fluente,
            image: Images.portuguese,
          ),

          SizedBox(height: 40,),

          Text2LinesImage(
            text1: Strings.espanhol.toUpperCase(),
            text2: Strings.basico,
            image: Images.spanish,
          ),

        ],
      ),
    );

  }
}
