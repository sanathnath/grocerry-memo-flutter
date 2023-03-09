import 'package:flutter/material.dart';

class WidgetAddItem extends StatelessWidget {
  const WidgetAddItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 50, right: 30, left:30,),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Grocerry name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20),),
              )
            )
          ),
          const SizedBox(height: 20,),
          TextFormField(
            
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
              // ElevatedButton.icon(
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.red,
              //   ),
              //   onPressed: (){}, 
              //   icon: Icon(Icons.cancel_outlined), 
              //   label: Text("Cancel"),
              //   ),
              //   const SizedBox(width: 15,),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: (){}, 
                icon: Icon(Icons.done), 
                label: Text("Create"),
                ),
            ],
          )
        ],
      ),
    );
  }
}