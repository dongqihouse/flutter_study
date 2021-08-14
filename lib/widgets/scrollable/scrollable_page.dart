
import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/scrollable/listview_page.dart';

class ScrollablePage extends StatelessWidget {
  const ScrollablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scrollable'),),
      body: ListView(
        children: [
          ListTile(
            title: Text('ListView'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListViewPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


