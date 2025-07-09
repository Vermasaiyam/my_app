import 'package:flutter/material.dart';
import 'package:my_app/ui_helper/util.dart';
import 'package:intl/intl.dart';
import 'package:my_app/widgets/rounded_button.dart';

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
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
        ),
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

class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          color: Colors.blue,
          child: ListView.builder(itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(11),
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ), itemCount: 30, scrollDirection: Axis.horizontal,
          ),
        )
    );
  }
}

class ContextItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.green,
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
            ),
            title: Text("Name"),
            subtitle: Text("Mob No"),
            trailing: Icon(Icons.delete),
          ),
        ),),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  callback(){
    print("Clicked!!!");
  }

  @override
  Widget build(BuildContext context) {

    var arrNames = ['1', '2', '3', '4', '5'];
    var arrColors = [
      Colors.black,
      Colors.pink,
      Colors.grey,
      Colors.blue,
      Colors.green,
    ];
    var time = DateTime.now();
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),


      // custom widget
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              child: RoundedButton(
                btnName: 'Login',
                icon: Icon(Icons.lock),
                callback: (){
                  print("Logged in!!!");
                },
                textStyle: mTextStyle11(),
              ),
            ),
            Container(height: 11,),
            Container(
              width: 100,
              child: RoundedButton(
                btnName: 'Press',
                icon: Icon(Icons.lock),
                callback: (){
                  print("Logged in!!!");
                },
                bgColor: Colors.orange,
                textStyle: mTextStyle11(),
              ),
            ),
          ],
        ),
      ),







      // splitting into widget

      // body: Container(
      //   child: Column(
      //     children: [
      //       CatItems(),
      //       ContextItems(),
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.orange,
      //           padding: EdgeInsets.all(16), // margin inside orange container
      //           child: Row(
      //             children: [
      //               Expanded(
      //                 flex: 1,
      //                 child: Container(
      //                   decoration: BoxDecoration(
      //                     color: Colors.white,
      //                     border: Border.all(color: Colors.deepOrange, width: 2),
      //                     borderRadius: BorderRadius.circular(12),
      //                   ),
      //                   height: 100,
      //                 ),
      //               ),
      //               SizedBox(width: 16), // gap between the two blocks
      //               Expanded(
      //                 flex: 1,
      //                 child: Container(
      //                   decoration: BoxDecoration(
      //                     color: Colors.white,
      //                     border: Border.all(color: Colors.deepOrange, width: 2),
      //                     borderRadius: BorderRadius.circular(12),
      //                   ),
      //                   height: 100,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         flex: 3,
      //         child: Container(
      //           color: Colors.grey,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),





      // callback function
      // body: ElevatedButton(
      //   onPressed: callback,
      //   child: Text("Click"),
      // ),





      // gridView in flutter
      // body: Column(
      //   children: [
      //     Container(
      //       height: 200,
      //       child: GridView.count(
      //         crossAxisCount: 5,
      //         crossAxisSpacing: 11,
      //         mainAxisSpacing: 11,
      //         children: [
      //           Container(color: Colors.amber,),
      //           Container(color: Colors.pink,),
      //           Container(color: Colors.red,),
      //           Container(color: Colors.blue,),
      //           Container(color: Colors.grey,),
      //           Container(color: Colors.amber,),
      //           Container(color: Colors.pinkAccent,),
      //         ],
      //       ),
      //     ),
      //     Container(height: 100,),
      //     Container(
      //       height: 400,
      //       child: GridView.extent(
      //         maxCrossAxisExtent: 200,
      //         crossAxisSpacing: 11,
      //         mainAxisSpacing: 11,
      //         children: [
      //           Container(color: Colors.amber,),
      //           Container(color: Colors.pink,),
      //           Container(color: Colors.red,),
      //           Container(color: Colors.blue,),
      //           Container(color: Colors.grey,),
      //           Container(color: Colors.amber,),
      //           Container(color: Colors.pinkAccent,),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),

      // body: GridView.builder(itemBuilder: (context, index) {
      //   return Container(color: arrColors[index],);
      // },
      //   itemCount: arrColors.length,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      // ),
      
      
      
      




      // date time picker

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         "Select Date",
      //         style: TextStyle(fontSize: 25),
      //       ),
      //       ElevatedButton(onPressed: () async {
      //         DateTime? datePicked = await showDatePicker(
      //           context: context,
      //           initialDate: DateTime.now(),
      //           firstDate: DateTime(2020),
      //           lastDate: DateTime(2025),
      //         );
      //
      //         if (datePicked != null) {
      //           print("${datePicked}");
      //         }
      //       }, child: Text("Show")),
      //       ElevatedButton(onPressed: () async {
      //         TimeOfDay? timePicked = await showTimePicker(
      //           context: context,
      //           initialTime: TimeOfDay.now(),
      //           initialEntryMode: TimePickerEntryMode.dial,
      //         );
      //
      //         if (timePicked != null) {
      //           print("${timePicked}");
      //         }
      //       }, child: Text("Select Time")),
      //     ],
      //   ),
      // ),







      // dateformat patterns

      // body: Center(
      //   child: Container(
      //     width: 400,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text("Current Time: ${DateFormat('yMMMMd').format(time)}", style: TextStyle(fontSize: 25),),
      //         ElevatedButton(
      //           onPressed: (){
      //             setState(() {
      //
      //             });
      //           },
      //           child: Text("Current Time"),
      //         )
      //       ],
      //     ),
      //   ),
      // ),





      // current date and time

      // body: Center(
      //   child: Container(
      //     width: 400,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text("Current Time: ${time.hour} : ${time.minute} : ${time.second}", style: TextStyle(fontSize: 25),),
      //         ElevatedButton(
      //           onPressed: (){
      //             setState(() {
      //
      //             });
      //           },
      //           child: Text("Current Time"),
      //         )
      //       ],
      //     ),
      //   ),
      // ),





      // textField

      // body: Center(
      //   child: Container(
      //     width: 300,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         TextField(
      //           keyboardType: TextInputType.phone,
      //           controller: emailText,
      //           // enabled: false,
      //           decoration: InputDecoration(
      //             hintText: 'Enter your number',
      //             focusedBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(11),
      //               borderSide: BorderSide(
      //                 color: Colors.deepOrange,
      //                 width: 2,
      //               )
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(11),
      //               borderSide: BorderSide(
      //                 color: Colors.blueAccent,
      //                 width: 2,
      //               )
      //             ),
      //             disabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(11),
      //               borderSide: BorderSide(
      //                 color: Colors.grey,
      //                 width: 2,
      //               )
      //             ),
      //             // suffixText: "Username exists",
      //             suffixIcon: IconButton(
      //               onPressed: (){
      //
      //               },
      //               icon: Icon(Icons.remove_red_eye, color: Colors.orange,),
      //             ),
      //             prefixIcon: Icon(Icons.phone, color: Colors.orange,),
      //           ),
      //         ),
      //         Container(height: 11,),
      //         TextField(
      //           controller: passText,
      //           obscureText: true,
      //           obscuringCharacter: '*',
      //           decoration: InputDecoration(
      //             hintText: 'Enter your Password',
      //             border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(11),
      //             borderSide: BorderSide(
      //               color: Colors.deepOrange,
      //             )
      //             )
      //           ),
      //         ),
      //         ElevatedButton(
      //           onPressed: (){
      //             String uEmail = emailText.text.toString();
      //             String uPass = passText.text.toString();
      //
      //             print("Email: $uEmail, Password: $uPass");
      //           },
      //           child: Text("Login"),
      //         )
      //       ],
      //     )
      //   )
      // ),





      // card widget
      // body: Center(
      //   child: Card(
      //     elevation: 8,
      //     shadowColor: Colors.blue,
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Hello World", style: TextStyle(fontSize: 25),),
      //     )
      //   ),
      // ),





      // styles and themes
      // body: Column(
      //   children: [
      //     Text("Hello World!!!", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.orange)),
      //     Text("Hello World!!!", style: Theme.of(context).textTheme.titleMedium),
      //     Text("Hello World!!!", style: Theme.of(context).textTheme.displayLarge),
      //     Text("Hello World!!!", style: mTextStyle11(textColor: Colors.pink),),
      //   ],
      // ),





      // custom font
      // body: Center(
      //   child: Text(
      //     "Hello",
      //     style: TextStyle(fontFamily: 'FontMain', fontWeight: FontWeight.w500, fontSize: 55),
      //   ),
      // ),





      // circle avatar
      // body: Center(
      //   child: CircleAvatar(
      //     child: Container(
      //       width: 60,
      //       height: 60,
      //       child: Column(
      //         children: [
      //           Container(
      //             width: 30,
      //             height: 30,
      //             child: Image.asset('assets/images/Saiyam_Verma.jpg'),
      //           ),
      //           Text("Name")
      //         ],
      //       ),
      //     ),
      //     // backgroundImage: AssetImage('assets/images/Saiyam_Verma.jpg'),
      //     backgroundColor: Colors.lightGreen,
      //     minRadius: 60,
      //     maxRadius: 60,
      //   )
      // ),





      // list tile
      // body: ListView.separated(itemBuilder: (context, index) {
      //   return ListTile(
      //     leading: Text("${index + 1}"),
      //     title: Text(arrNames[index]+" Hello"),
      //     subtitle: Text("Number"),
      //     trailing: Icon(Icons.add),
      //   );
      // },
      //   itemCount: arrNames.length,
      //   // reverse: true,
      //   separatorBuilder: (context, index){
      //     return Divider(height: 40, thickness: 4,);
      //   },
      //   // scrollDirection: Axis.horizontal,
      // ),




      // padding and margin

      // body: Padding(
      //   padding: const EdgeInsets.only(top:8.0, left: 5),
      //   child: Text("Hello", style: TextStyle(fontSize: 25),),
      // ),
      // body: Container(
      //   margin: EdgeInsets.all(12),
      //   color: Colors.blue,
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text("Hello", style: TextStyle(fontSize: 25),),
      //   )
      // ),



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



      // Image

      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     child: Image.asset('assets/images/Saiyam_Verma.jpg'),
      //   ),
      // )




      // Buttons

      // body: OutlinedButton(
      //   child: Text("Click me!"),
      //   onPressed: (){
      //     print("Elevated Button Tapped");
      //   },
      //   onLongPress: (){
      //     print("Long pressed");
      //   },
      // ),



      // container

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
