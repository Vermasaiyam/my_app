import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var arrNames = ['1', '2', '3', '4', '5'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // padding and margin

      // body: Padding(
      //   padding: const EdgeInsets.only(top:8.0, left: 5),
      //   child: Text("Hello", style: TextStyle(fontSize: 25),),
      // ),
      body: Container(
        margin: EdgeInsets.all(12),
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Hello", style: TextStyle(fontSize: 25),),
        )
      ),



      // expanded widget
      // body: Column(
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 4,
      //       child: Container(
      //         height: 100,
      //         color: Colors.orange,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //         height: 100,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         height: 100,
      //         color: Colors.grey,
      //       ),
      //     ),
      //
      //   ],
      // ),




      // adding decoration to container

      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.blue,
      //   child: Center(
      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       decoration: BoxDecoration(
      //         color: Colors.blueGrey,
      //         // borderRadius: BorderRadius.only(topLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
      //         border: Border.all(
      //           width: 7,
      //           color: Colors.black,
      //         ),
      //         boxShadow: [
      //           BoxShadow(
      //             blurRadius: 21,
      //             spreadRadius: 11,
      //             color: Colors.grey,
      //           ),
      //         ],
      //         shape: BoxShape.circle
      //       ),
      //     ),
      //   ),
      // ),






      // Listview
      
      // body: ListView.separated(itemBuilder: (context, index) {
      //   return Row(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(arrNames[index], style: TextStyle(fontSize: 21),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(arrNames[index], style: TextStyle(fontSize: 21),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(arrNames[index], style: TextStyle(fontSize: 21),),
      //       ),
      //     ],
      //   );
      // },
      //   itemCount: arrNames.length,
      //   // reverse: true,
      //   separatorBuilder: (context, index){
      //     return Divider(height: 40, thickness: 4,);
      //   },
      //   // scrollDirection: Axis.horizontal,
      // ),
      
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   reverse: true,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("One", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Two", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("3", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("4", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("5", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
      //     ),
      //   ],
      // ),





      // Scrollable

      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         SingleChildScrollView(
      //           scrollDirection: Axis.horizontal,
      //           child: Row(
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.only(bottom: 11),
      //                 height: 200,
      //                 width: 400,
      //                 color: Colors.green,
      //               ),
      //               Container(
      //                 margin: EdgeInsets.only(bottom: 11),
      //                 height: 200,
      //                 width: 400,
      //                 color: Colors.pink,
      //               ),
      //               Container(
      //                 margin: EdgeInsets.only(bottom: 11),
      //                 height: 200,
      //                 width: 400,
      //                 color: Colors.red,
      //               ),
      //               Container(
      //                 margin: EdgeInsets.only(bottom: 11),
      //                 height: 200,
      //                 width: 400,
      //                 color: Colors.black,
      //               ),
      //               Container(
      //                 margin: EdgeInsets.only(bottom: 11),
      //                 height: 200,
      //                 width: 400,
      //                 color: Colors.green,
      //               ),
      //               Container(
      //                 margin: EdgeInsets.only(bottom: 11),
      //                 height: 200,
      //                 width: 400,
      //                 color: Colors.blue,
      //               ),
      //               Container(
      //                 margin: EdgeInsets.only(bottom: 11),
      //                 height: 200,
      //                 width: 400,
      //                 color: Colors.yellow,
      //               ),
      //
      //             ],
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.blue,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.black,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.grey,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),
      //           height: 200,
      //           color: Colors.red,
      //         ),
      //
      //       ],
      //     ),
      //   ),
      // ),




      // Inkwell

      // body: Center(
      //   child: InkWell(
      //     onTap: (){
      //       print("tapped");
      //     },
      //     onLongPress: (){
      //       print("long press");
      //     },
      //     onDoubleTap: (){
      //       print("double tap");
      //     },
      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.amber,
      //       child: Center(
      //           child: InkWell(
      //               onTap: (){
      //                 print("Text Tapped");
      //               },
      //               child: Text("Click", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),))),
      //     ),
      //   ),
      // ),


      // body: Container(
      //   width: 600,
      //   height: 300,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Text('A', style: TextStyle(fontSize: 25),),
      //           Text('A', style: TextStyle(fontSize: 25),),
      //           Text('A', style: TextStyle(fontSize: 25),),
      //           Text('A', style: TextStyle(fontSize: 25),),
      //           Text('A', style: TextStyle(fontSize: 25),),
      //         ],
      //       ),
      //       Text('A', style: TextStyle(fontSize: 25),),
      //       Text('A', style: TextStyle(fontSize: 25),),
      //       Text('A', style: TextStyle(fontSize: 25),),
      //       Text('A', style: TextStyle(fontSize: 25),),
      //       Text('A', style: TextStyle(fontSize: 25),),
      //       ElevatedButton(onPressed: (){}, child: Text('Click')),
      //     ],
      //   ),
      // ),


      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     child: Image.asset('assets/images/Saiyam_Verma.jpg'),
      //   ),
      // )


      // body: OutlinedButton(
      //   child: Text("Click me!"),
      //   onPressed: (){
      //     print("Elevated Button Tapped");
      //   },
      //   onLongPress: (){
      //     print("Long pressed");
      //   },
      // ),

      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.orange,
      //     child: Center(
      //       child: Text("Hello ji", style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.pink,
      //         fontWeight: FontWeight.w800,
      //         backgroundColor: Colors.black54,
      //       ),),
      //
      //     ),
      //   ),
      // )
    );
  }
}
