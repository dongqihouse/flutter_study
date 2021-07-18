// Copyright (c) 2021 qd Inc. All Rights Reserved.

import 'package:flutter/material.dart';
import 'package:flutter_study/third/third_introduction_screen.dart';

class ThirdListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('常用三方控件集合'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('功能引导页'),
            subtitle: Text('1. 貌似不太能定制化，可以用来学习源码，实际应用，不如自己用PageView实现'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThirdIntroductionScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
