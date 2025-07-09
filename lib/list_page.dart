import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/add_data_page.dart';
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
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        context.read<ListMapProvider>().updateData({
                          "name": "sdfyguikl",
                          "Contact Number": "999999999",
                        }, idx);
                      }, icon: Icon(Icons.edit)),
                      IconButton(onPressed: (){context.read<ListMapProvider>().deleteData(idx);}, icon: Icon(Icons.delete)),
                    ],
                  ),
                ),
              );
          }) : Center(child: Text("No contacts yet"));
        }
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddDataPage(),));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}