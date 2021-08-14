import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: 88,
        cacheExtent: 100,
        itemBuilder: (context, index) {
          return LayoutBuilder(
            builder: (context, constraints) {
              print(constraints.isTight);
              print('minWidth ${constraints.minWidth}, maxWidth ${constraints.maxWidth}');
              print('minHeight ${constraints.minHeight}, maxHeight ${constraints.maxHeight}');
              return Container(
                height: 100,
                alignment: Alignment.center,
                child: Text('$index'),
              );
            },
          );
        },
      ),
    );
  }
}

// 1. ListView 默认是不复用， 要使用builder构造函数才会复用
// 2. 如果要合理的处理 cell widget之间的分割，可以使用separated这个构造函数，来专门构造separated widget
// 3. 默认是无限加载，可以使用itemCount来指定数量
// 4. builder cache 会预加载屏幕外widget, 范围是屏幕的1/3,这个范围可以使用cacheExtent来调节具体的预加载范围

// -- 题外
// 1. 如何构建一个居中content的cell widget
// Container 是一个万能组件
// 2. Container的宽高 到底有什么因素影响呢？
// 向下传递约束， 向上返回大小