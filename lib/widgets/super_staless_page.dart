
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuperWidget extends StatelessWidget {
  const SuperWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: body(context),
    );
  }


  
  Widget body(BuildContext context) {
    return Container();
  } 
}
