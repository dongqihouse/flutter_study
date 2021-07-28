import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/super_staless_page.dart';

class SafeAreaPage extends SuperWidget {
  @override
  Widget body(BuildContext context) {
    return SafeArea(child: Text('TTextTextTextTextTex' * 200));
  }
}
