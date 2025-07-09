import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'list_map_provider.dart';

class AddDataPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
      ),
      body: Center(
        child: IconButton(
          onPressed: (){
            context.read<ListMapProvider>().addData({
              "name": "Name",
              "Contact Number": "4567890987",
            });
          },
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}