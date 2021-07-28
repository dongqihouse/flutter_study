import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/super_staless_page.dart';

class DefaultTextStylePage extends SuperWidget {
  @override
  Widget body(BuildContext context) {
    return DefaultTextStyle.merge(
      style: TextStyle(color: Colors.yellow),
      child: Text('text'),
    );
  }
}
