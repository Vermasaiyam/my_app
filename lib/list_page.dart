import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/list_map_provider.dart';
import 'package:provider/provider.dart';

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: Consumer<ListMapProvider>(
        builder: (_, provider, __){
          var data = provider.getData();
          return data.isNotEmpty ? ListView.builder(
            itemCount: data.length,
            itemBuilder: (ctx, idx){
            return ListTile(
              title: Text('${data[idx]['name']}'),
              subtitle: Text('${data[idx]['Contact Number']}'),
            );
          }) : Center(child: Text("No contacts yet"));
        }
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<ListMapProvider>().addData({
            "name": "Name",
            "Contact Number": "4567890987",
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}