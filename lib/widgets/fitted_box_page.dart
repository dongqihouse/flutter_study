import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/super_staless_page.dart';

class FittedBoxPage extends SuperWidget {
  @override
  Widget body(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: FittedBox(
            child: Text(
          "TextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextextTextextTextextTextextText",
          maxLines: 1,
        )),
      ),
    );
  }
}
