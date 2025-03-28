import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: ListView.builder(
        itemCount: 1000000,
        itemBuilder: (context, index) {
          return ItemWidget(index: index);
        },
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final int index;

  const ItemWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text('Item $index'));
  }
}