import 'package:flutter/material.dart';
import 'package:get/get.dart';

GetPage getPageFadeIn ({
  String name,
  Widget Function() page,
}) {
  return GetPage(
    name: name,
    page: page,
    transition: Transition.fadeIn,
    transitionDuration: Duration(milliseconds: 300),
  );
}