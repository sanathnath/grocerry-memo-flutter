import 'package:flutter/material.dart';

import '../widgets/add_item_widget.dart';
import '../widgets/list_view_widget.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> { 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Expanded(child: WidgetList()),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showBottomSheet(context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<void> showBottomSheet(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      builder: (context){
        return WidgetAddItem();
      }
    );
  }
}