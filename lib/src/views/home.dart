import 'package:curriculo_portifolio_matheusr/src/constants/icons_data.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/images.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/strings.dart';
import 'package:curriculo_portifolio_matheusr/src/controllers/home_controller.dart';
import 'package:curriculo_portifolio_matheusr/src/styles/text_sizes.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/buttons/outlined_button_default.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/buttons/text_button_dafault.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/tabs/tab_buttons.dart';
import 'package:curriculo_portifolio_matheusr/src/widgets/texts/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {

          return Scaffold(

            backgroundColor: Theme.of(context).backgroundColor,

            body: Row(
              children: [

                Container(
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 50, 25, 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        ClipOval(
                          child: Image.asset(
                            Images.fotoPerfil,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),

                        /*ClipOval(
                          child: Icon(
                            Icons.person_pin,
                            size: 100,
                            color: Theme.of(context).accentColor,
                          ),
                        ),*/

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 50,),

                            Text(
                              Strings.nome,
                              style: TextStyle(
                                fontSize: 35,
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 2,
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              Strings.profissoes,
                              style: TextStyle(
                                fontSize: TextSizes.medium,
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 2,
                              ),
                            ),

                            SizedBox(height: 30,),

                            IconText(
                              text: Strings.nacionalidade,
                              icon: IconsData.nacionalidade,
                              color: Theme.of(context).accentColor,
                            ),

                            SizedBox(height: 10,),

                            IconText(
                              text: Strings.localizacao,
                              icon: IconsData.localizacao,
                              color: Theme.of(context).accentColor,
                            ),

                            SizedBox(height: 30,),

                            TextButtonDafault(
                              text: Strings.linkedin,
                              image: Images.linkedIn,
                              onPressed: () {_.linkToLinkedin();},
                            ),

                            SizedBox(height: 20,),

                            OutlinedButtonDefault(
                              text: Strings.github,
                              image: Images.github,
                              onPressed: () {_.linkToGithub();},
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 40,),

                      Container(
                        height: 100,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            TabButtons(
                              onTap: (value) {_.tabButtonOnTap(value);},
                              tabs: _.tabButtonOptionsStrings,
                              currentTab: _.tabButton,
                              height: 80,
                              radius: 100,
                              tabWidth: 220,
                              tabheight: 80,
                              fontWeight: FontWeight.w500,
                              activeColor: Theme.of(context).accentColor,
                              textColor: Theme.of(context).backgroundColor,
                              unActiveTextColor: Theme.of(context).hoverColor,
                              backgroundColor: Theme.of(context).disabledColor,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 40,),

                      Container(height: 0.5, color: Theme.of(context).primaryColor,),

                      Expanded(
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          children: [

                            SizedBox(height: 50,),

                            _.widgetMainContent(),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),

          );

        }
    );

  }
}
