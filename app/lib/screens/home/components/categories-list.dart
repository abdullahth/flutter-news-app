import 'package:app/screens/categories/categories-info.dart';
import 'package:flutter/material.dart';

import '../../../config-dim.dart';
import '../../../snippets.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: DimsConfig.configHieht(220),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryInformationPage(
                      categoryIndex: index,
                    ),
                  ));
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: DimsConfig.configHieht(30),
                      child: Container(
                        height: DimsConfig.configHieht(60),
                        width: DimsConfig.configWidth(60),
                        child: Image.asset(
                          kCartegories[index][1],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: DimsConfig.configHieht(30),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: kCartegories[index][0],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: DimsConfig.configWidth(-60),
                      bottom: DimsConfig.configWidth(-90),
                      top: DimsConfig.configHieht(30),
                      child: Opacity(
                        opacity: 0.2,
                        child: Container(
                          height: DimsConfig.configHieht(200),
                          width: DimsConfig.configWidth(200),
                          child: Image.asset(
                            kCartegories[index][1],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                width: DimsConfig.configWidth(150),
                height: DimsConfig.configHieht(220),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: kCartegories[index][2]),
              ),
            ),
          );
        },
        itemCount: kCartegories.length,
      ),
    );
  }
}
