import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/super_staless_page.dart';

class LayoutBuilderPage extends SuperWidget {
  @override
  Widget body(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        height: constraints.maxHeight / 2,
        child: Text('text' * 200),
      );
    });
  }
}