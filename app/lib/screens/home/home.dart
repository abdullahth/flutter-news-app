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
  Widget build(BuildContext context) {
    DimsConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            text: "News App",
            style: TextStyle(
                fontSize: 18, fontFamily: "Ranchers", color: Colors.black),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: RichText(
                text: TextSpan(
                  text: "Discover!",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Ranchers",
                    letterSpacing: DimsConfig.configWidth(12),
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Categories()
          ],
        ),
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
