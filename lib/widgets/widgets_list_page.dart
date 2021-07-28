// Copyright (c) 2021 qd Inc. All Rights Reserved.

import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/default_text_style_page.dart';
import 'package:flutter_study/widgets/fitted_box_page.dart';
import 'package:flutter_study/widgets/layout_builder_page.dart';
import 'package:flutter_study/widgets/safe_area_page.dart';

import 'interactive_viewer_page.dart';

class WidgetsListPage extends StatelessWidget {
  const WidgetsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetsListPage'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Rich Text'),
            subtitle: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '11111',
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(
                    text: '2222',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text('Fittedbox'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FittedBoxPage()));
            },
          ),
          ListTile(
            title: Text('SafeArea'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SafeAreaPage()));
            },
          ),
          ListTile(
            title: Text('LayoutBuilder'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LayoutBuilderPage()));
            },
          ),
          ListTile(
            title: Text('DefaultTextStyle'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DefaultTextStylePage()));
            },
          ),
          ListTile(
            title: Text('InteractivePage'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => InteractiveViewerPage()));
            },
          ),
        ],
      ),
    );
  }
}
