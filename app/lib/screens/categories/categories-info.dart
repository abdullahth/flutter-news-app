import 'package:app/config-dim.dart';
import 'package:app/services/fetch-data-service.dart';
import 'package:app/snippets.dart';
import 'package:flutter/material.dart';

class CategoryInformationPage extends StatefulWidget {
  final int categoryIndex;
  CategoryInformationPage({this.categoryIndex});

  @override
  _CategoryInformationPageState createState() =>
      _CategoryInformationPageState();
}

class _CategoryInformationPageState extends State<CategoryInformationPage> {
  List data;
  int currentIndex;
  @override
  void initState() {
    currentIndex = widget.categoryIndex;
    FetchData.init(
      kCartegories[currentIndex][0].toString().toLowerCase(),
      "us",
    ).then((value) {
      setState(() {
        data = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DimsConfig.init(context);
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: DimsConfig.configHieht(280),
                  decoration:
                      BoxDecoration(color: kCartegories[currentIndex][2]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: DimsConfig.configHieht(230)),
                child: Container(
                  width: double.infinity,
                  height: DimsConfig.configHieht(50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(800),
                      topRight: Radius.circular(800),
                    ),
                  ),
                  child: ListView.builder(
                      itemCount: kCategoriesName.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        if (currentIndex == index) {
                          return Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              height: DimsConfig.configHieht(50),
                              child: Center(
                                child: Text(
                                  kCartegories[currentIndex][0]
                                      .toString()
                                      .toUpperCase(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: kCartegories[currentIndex][2],
                                  borderRadius: BorderRadius.circular(
                                      DimsConfig.configWidth(50))),
                            ),
                          );
                        } else
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Center(
                                child: Container(
                                  child: Text(
                                    kCartegories[index][0]
                                        .toString()
                                        .toUpperCase(),
                                  ),
                                  height: DimsConfig.configHieht(50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          DimsConfig.configWidth(50))),
                                ),
                              ),
                            ),
                          );
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 285),
                child: Container(
                  width: double.infinity,
                  height: data != null
                      ? DimsConfig.configHieht(
                          data.length * 50.0 + data.length * 8.0 + 30)
                      : DimsConfig.configHieht(50),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      if (data == null)
                        return CircularProgressIndicator(
                          valueColor: kCartegories[widget.categoryIndex][2],
                        );
                      else
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            color: Colors.red,
                          ),
                        );
                    },
                    itemCount: data == null ? 0 : data.length,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
