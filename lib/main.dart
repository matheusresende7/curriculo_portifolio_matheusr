import 'package:curriculo_portifolio_matheusr/src/routes/nav_routes.dart';
import 'package:curriculo_portifolio_matheusr/src/themes/default_theme.dart';
import 'package:curriculo_portifolio_matheusr/src/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: Home(),
    title: 'Currículo - Matheus Resende',
    debugShowCheckedModeBanner: false,
    theme: DefaultTheme().materialTheme,
    initialRoute: '/',
    getPages: NavRoutes.routes,
  ));
}