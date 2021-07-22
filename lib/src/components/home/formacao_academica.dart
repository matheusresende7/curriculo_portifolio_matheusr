import 'package:curriculo_portifolio_matheusr/src/constants/icons_data.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/strings.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_2lines_information.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_title.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class FormacaoAcademica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DelayedDisplay(
      delay: Duration(milliseconds: 100),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: TextTitle(titulo: Strings.formacao_Academica.toUpperCase()),
            ),

            SizedBox(height: 60,),

            Text2LinesInformation(
              text1: Strings.mbaGestaoDaQualidade.toUpperCase(),
              text2: Strings.unifoa,
              periodo: Strings.p2020,
              icon: IconsData.formacaoAcademica,
            ),

            SizedBox(height: 40,),

            Text2LinesInformation(
              text1: Strings.engenhariaMecanica.toUpperCase(),
              text2: Strings.unifoa,
              periodo: Strings.p2019,
              icon: IconsData.formacaoAcademica,
            ),

            SizedBox(height: 40,),

            Text2LinesInformation(
              text1: Strings.tecnicoMecanica.toUpperCase(),
              text2: Strings.etpc,
              periodo: Strings.p2013,
              icon: IconsData.formacaoAcademica,
            ),

          ],
        ),
      ),
    );

  }
}
