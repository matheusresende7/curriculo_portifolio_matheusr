import 'package:curriculo_portifolio_matheusr/src/styles/text_sizes.dart';
import 'package:flutter/material.dart';

class TabButtons extends StatelessWidget {

  final ValueChanged<String> onTap;
  final List<String> tabs;
  final String currentTab;
  final double tabWidth;
  final double tabheight;
  final double height;
  final double radius;
  final String font;
  final double fontSize;
  final FontWeight fontWeight;
  final Color activeColor;
  final Color textColor;
  final Color unActiveTextColor;
  final Color backgroundColor;

  TabButtons ({
    @required this.onTap,
    @required this.tabs,
    @required this.currentTab,
    this.tabWidth,
    this.tabheight,
    this.height,
    this.radius,
    this.font,
    this.fontSize,
    this.fontWeight,
    this.activeColor,
    this.textColor,
    this.unActiveTextColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: EdgeInsets.all(15),
        height: this.height ?? 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(this.radius ?? 15),
          color: this.backgroundColor,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: this.tabs.map((String text) {
              return InkWell(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  margin: EdgeInsets.all(2),
                  width: this.tabWidth ?? 130,
                  height: this.tabheight ?? 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(this.radius ?? 15),
                    color: this.currentTab == text ? Theme.of(context).primaryColor : null,
                    boxShadow: this.currentTab == text
                        ? [BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),]
                        : null,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(
                        Icons.play_arrow,
                        size: 30,
                        color: Theme.of(context).accentColor,
                      ),

                      SizedBox(width: 20,),

                      Text(
                        text,
                        style: TextStyle(
                          fontSize: TextSizes.medium,
                          color: Theme.of(context).accentColor,
                          fontWeight: this.fontWeight ?? FontWeight.bold,
                          letterSpacing: 2,
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                ),
                onTap: () {this.onTap(text);},
              );
            }).toList()
        )
    );

  }
}
