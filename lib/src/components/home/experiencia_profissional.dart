import 'package:curriculo_portifolio_matheusr/src/constants/icons_data.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/strings.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_3lines_information.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_title.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class ExperienciaProfissional extends StatelessWidget {
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
              child: TextTitle(titulo: Strings.experiencia_Profissional.toUpperCase()),
            ),

            SizedBox(height: 60,),

            Text3LinesInformation(
              text1: Strings.desenvolvedorDeSoftware.toUpperCase(),
              text2: Strings.calmExperts,
              text3: Strings.montrealQuebecCanada,
              periodo: Strings.p2021,
              icon: IconsData.experienciaProfissional,
            ),

            SizedBox(height: 40,),

            Text3LinesInformation(
              text1: Strings.engenheiroDeSoftware.toUpperCase(),
              text2: Strings.profisionalLiberal,
              periodo: Strings.p2020_2021,
              text3: Strings.voltaRedondaRioDeJaneiroBrasil,
              icon: IconsData.experienciaProfissional,
            ),

          ],
        ),
      ),
    );

  }
}
