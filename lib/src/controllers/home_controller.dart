import 'package:curriculo_portifolio_matheusr/src/components/home/certificacoes.dart';
import 'package:curriculo_portifolio_matheusr/src/components/home/experiencia_profissional.dart';
import 'package:curriculo_portifolio_matheusr/src/components/home/formacao_academica.dart';
import 'package:curriculo_portifolio_matheusr/src/components/home/habilidades_engenharia.dart';
import 'package:curriculo_portifolio_matheusr/src/components/home/habilidades_software.dart';
import 'package:curriculo_portifolio_matheusr/src/components/home/idiomas.dart';
import 'package:curriculo_portifolio_matheusr/src/components/home/pagina_inicial.dart';
import 'package:curriculo_portifolio_matheusr/src/components/home/projetos.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/links.dart';
import 'package:curriculo_portifolio_matheusr/src/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {



  //**************************LINKS PROFILES************************************
  void linkToLinkedin () async {
    await launch(Links.linkedin);
  }

  void linkToGithub () async {
    await launch(Links.github);
  }



  //**************************LINKS PROJECTS************************************
  void linkToCleanArchTDD () async {
    await launch(Links.cleanArchTDD);
  }

  void linkToInstagramClone () async {
    await launch(Links.instagramClone);
  }

  void linkToAppBoards () async {
    await launch(Links.appBoards);
  }

  void linkToSiteBoards () async {
    await launch(Links.siteBoards);
  }

  void linkToCurriculo () async {
    await launch(Links.curriculo);
  }



  //*******************************NAV BUTTONS**********************************
  String tabButton = Strings.paginaInicial;

  List<String> tabButtonOptionsStrings = [
    Strings.paginaInicial,
    Strings.experienciaProfissional,
    Strings.formacaoAcademica,
    Strings.certificacoes,
    Strings.projetos,
    Strings.habilidadesSoftware,
    Strings.habilidadesEngenharia,
    Strings.idiomas,
  ];

  void tabButtonOnTap (value) {
    tabButton = value;
    mainContent = value;
    update();
  }



  //**************************MAIN CONTENT**************************************
  String mainContent = Strings.paginaInicial;

  Widget widgetMainContent () {
    switch (mainContent) {
      case Strings.paginaInicial:
        return PaginaInicial();
      case Strings.experienciaProfissional:
        return ExperienciaProfissional();
      case Strings.formacaoAcademica:
        return FormacaoAcademica();
      case Strings.certificacoes:
        return Certificacoes();
      case Strings.projetos:
        return Projetos();
      case Strings.habilidadesSoftware:
        return HabilidadesSoftware();
      case Strings.habilidadesEngenharia:
        return HabilidadesEngenharia();
      case Strings.idiomas:
        return Idiomas();
        break;
    }
    return null;
  }



}