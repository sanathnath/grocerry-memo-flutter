import 'package:flutter/material.dart';
import 'package:hive_db_sample/db/functions/db_functions.dart';
import 'package:hive_db_sample/db/models/data_model.dart';

class WidgetAddItem extends StatefulWidget {
  WidgetAddItem({Key? key}) : super(key: key);

  @override
  State<WidgetAddItem> createState() => _WidgetAddItemState();
}

class _WidgetAddItemState extends State<WidgetAddItem> {
  final _grocerryNameController = TextEditingController();

  final _countController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.only(top: 50, right: 30, left:30,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _grocerryNameController,
            decoration: const InputDecoration(
              hintText: "Grocerry name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20),),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: _countController,
            decoration: const InputDecoration(
              hintText: "item count",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20),),
              )
            )
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: (){
                  buttonClick();
                },
                icon: Icon(Icons.done),
                label: Text("Create"),
                ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> buttonClick() async {
    final _grocerry = _grocerryNameController.text.trim();
    final _count = _countController.text.trim();

    if(_grocerry.isEmpty || _count.isEmpty){
      return;
    }

    final _item = GrocerryItemModel(name: _grocerry, count: _count);

    addGrocerry(_item);

    print('$_grocerry $_count');
  }
}