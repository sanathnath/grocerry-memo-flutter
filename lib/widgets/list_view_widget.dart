import 'package:flutter/material.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index){
        return ListTile(
          leading: Text("$index"),
          title: Text("number $index"),
          subtitle: Text("description $index"),
        );
      }, 
      separatorBuilder: (context, index){
        return const Divider();
      }, 
      itemCount: 20,);
  }
}