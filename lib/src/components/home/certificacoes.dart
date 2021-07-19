import 'package:curriculo_portifolio_matheusr/src/constants/icons_data.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/strings.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_2lines_information.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_title.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class Certificacoes extends StatelessWidget {
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
            child: TextTitle(titulo: Strings.certificacoes.toUpperCase()),
          ),

          SizedBox(height: 60,),

          Text2LinesInformation(
            text1: Strings.greenBelt.toUpperCase(),
            text2: Strings.savingTime,
            periodo: Strings.p2020,
            icon: IconsData.certificacoes,
          ),

        ],
      ),
    );

  }
}
