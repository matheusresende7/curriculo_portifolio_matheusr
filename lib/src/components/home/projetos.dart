import 'package:curriculo_portifolio_matheusr/src/constants/icons_data.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/links.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/strings.dart';
import 'package:curriculo_portifolio_matheusr/src/controllers/home_controller.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_2lines.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_title.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class Projetos extends StatelessWidget {

  final control = HomeController();

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
            child: TextTitle(titulo: Strings.projetos.toUpperCase()),
          ),

          SizedBox(height: 60,),

          Text2Lines(
            text1: Strings.cleanArchTDD.toUpperCase(),
            text2: Links.cleanArchTDD,
            icon: IconsData.projetos,
            onTap: () {control.linkToCleanArchTDD();},
          ),

          SizedBox(height: 60,),

          Text2Lines(
            text1: Strings.instagramClone.toUpperCase(),
            text2: Links.instagramClone,
            icon: IconsData.projetos,
            onTap: () {control.linkToInstagramClone();},
          ),

          SizedBox(height: 60,),

          Text2Lines(
            text1: Strings.appBoards.toUpperCase(),
            text2: Links.appBoards,
            icon: IconsData.projetos,
            onTap: () {control.linkToAppBoards();},
          ),

          SizedBox(height: 60,),

          Text2Lines(
            text1: Strings.siteBoards.toUpperCase(),
            text2: Links.siteBoards,
            icon: IconsData.projetos,
            onTap: () {control.linkToSiteBoards();},
          ),

          SizedBox(height: 60,),

          Text2Lines(
            text1: Strings.curriculo.toUpperCase(),
            text2: Links.curriculo,
            icon: IconsData.projetos,
            onTap: () {control.linkToCurriculo();},
          ),

          SizedBox(height: 60,),

        ],
      ),
    );

  }
}
