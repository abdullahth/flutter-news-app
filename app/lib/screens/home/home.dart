import 'package:app/services/fetch-data-service.dart';
import 'package:flutter/material.dart';

import '../../config-dim.dart';
import 'components/categories-list.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DimsConfig.init(context);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: RichText(
            text: TextSpan(
              text: "US News App",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: Colors.grey),
            ),
          ),
        ),
        body: Body());
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Discover!\n",
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: DimsConfig.configWidth(6),
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: "Find out what is trending in these categories!",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: DimsConfig.configWidth(3),
                    fontSize: 16,
                  ),
                ),
              ]),
            ),
          ),
          Categories(),
          RandomlySelectedNews()
        ],
      ),
      width: double.infinity,
      height: double.infinity,
    );
  }
}

class RandomlySelectedNews extends StatefulWidget {
  @override
  _RandomlySelectedNewsState createState() => _RandomlySelectedNewsState();
}

class _RandomlySelectedNewsState extends State<RandomlySelectedNews> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
