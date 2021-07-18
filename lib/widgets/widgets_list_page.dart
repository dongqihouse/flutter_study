// Copyright (c) 2021 qd Inc. All Rights Reserved.

import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
