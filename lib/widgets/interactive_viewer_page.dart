import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/super_staless_page.dart';

class InteractiveViewerPage extends SuperWidget {
  @override
  Widget body(BuildContext context) {
    return InteractiveViewer(
      constrained: false,
      // maxScale: 2,
      child: Text('TextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextText\n' * 1000),
    );
  }
}
