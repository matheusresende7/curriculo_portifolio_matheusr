import 'package:curriculo_portifolio_matheusr/src/constants/icons_data.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/images.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/links.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/strings.dart';
import 'package:curriculo_portifolio_matheusr/src/controllers/home_controller.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_2lines.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/text_title.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
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
            text2: Strings.acessePeloLink + Links.cleanArchTDD,
            icon: IconsData.projetos,
            onTap: () {control.linkToCleanArchTDD();},
          ),

          SizedBox(height: 60,),

          Text2Lines(
            text1: Strings.instagramClone.toUpperCase(),
            text2: Strings.acessePeloLink + Links.instagramClone,
            icon: IconsData.projetos,
            onTap: () {control.linkToInstagramClone();},
          ),

          SizedBox(height: 60,),

          Text2Lines(
            text1: Strings.appBoards.toUpperCase(),
            text2: Strings.acessePeloLink + Links.appBoards,
            icon: IconsData.projetos,
            onTap: () {control.linkToAppBoards();},
          ),

          SizedBox(height: 20,),

          SizedBox(
            height: control.imagesHeight,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: control.imagesAppBoards.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Image.asset(
                    control.imagesAppBoards[index],
                    height: control.imagesHeight,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 60,),

          Text2Lines(
            text1: Strings.siteBoards.toUpperCase(),
            text2: Strings.acessePeloLink + Links.siteBoards,
            icon: IconsData.projetos,
            onTap: () {control.linkToSiteBoards();},
          ),

          SizedBox(height: 20,),

          SizedBox(
            height: control.imagesHeight,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: control.imagesSiteBoards.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Image.asset(
                    control.imagesSiteBoards[index],
                    height: control.imagesHeight,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 60,),

          Text2Lines(
            text1: Strings.curriculo.toUpperCase(),
            text2: Strings.acessePeloLink + Links.curriculo,
            icon: IconsData.projetos,
            onTap: () {control.linkToCurriculo();},
          ),

          SizedBox(height: 60,),

          Text2Lines(
            text1: Strings.projetoTeste.toUpperCase(),
            text2: Strings.acessePeloLink + Links.projetoTeste,
            icon: IconsData.projetos,
            onTap: () {control.linkToProjetoTeste();},
          ),

          SizedBox(height: 20,),

          SizedBox(
            height: control.imagesHeight,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: control.imagesProjetoTeste.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Image.asset(
                    control.imagesProjetoTeste[index],
                    height: control.imagesHeight,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 60,),

        ],
      ),
    );

  }
}
