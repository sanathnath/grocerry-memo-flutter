import 'package:flutter/material.dart';
import 'package:hive_db_sample/db/functions/db_functions.dart';
import 'package:hive_db_sample/db/models/data_model.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: grocerryListNotifier,
      builder: (BuildContext ctx, List<GrocerryItemModel> grocerryList, Widget? child) {
        return ListView.separated(
          itemBuilder: (ctx, index){
            return ListTile(
              leading: Text('${index+1} )'),
              title: Text(grocerryList[index].name),
              subtitle: Text(grocerryList[index].count),
            );
          }, 
          separatorBuilder: (context, index){
            return const Divider();
          }, 
          itemCount: grocerryList.length,);
      }
    );
  }
}