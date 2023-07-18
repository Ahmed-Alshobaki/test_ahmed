import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() {
  runApp( app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: zonh(),
    );
  }

}
class zonh extends StatefulWidget {

  const zonh({super.key});

  @override
  State<zonh> createState() => _zonhState();


}

class _zonhState extends State<zonh> {
  List list = [
    {
      "ahmed" : "zon",
      "age" : "18",

    },
    {
      "ahmed" : "zon",
      "age" : "17",

    },
    {
      "ahmed" : "zon",
      "age" : "13",

    },
    {
      "ahmed" : "zon",
      "age" : "13",

    },
    {
      "ahmed" : "zon",
      "age" : "13",

    },
    {
      "ahmed" : "zon",
      "age" : "13",

    }, {
      "ahmed" : "zon",
      "age" : "13",

    },
    {
      "ahmed" : "zon",
      "age" : "18",

    },
    {
      "ahmed" : "zon",
      "age" : "17",

    },
    {
      "ahmed" : "zon",
      "age" : "13",

    },
    {
      "ahmed" : "zon",
      "age" : "13",

    },
    {
      "ahmed" : "zon",
      "age" : "13",

    },
    {
      "ahmed" : "zon",
      "age" : "13",

    }, {
      "ahmed" : "zon",
      "age" : "13",

    },
    {
      "zon" : "zon",
      "zon" : "13",

    },
    {
      "hala" : "zon",
      "hala" : "13",

    },

  ];
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> ahmed = new GlobalKey<ScaffoldState>();
   return DefaultTabController(length: 3,
       child:Scaffold(
         appBar: AppBar(title: Text("zon"),

         bottom: TabBar(onTap:(i){

           switch(i){
             case 0: print("1");break;
             case 1: print("2");break;
             case 2: print("3");break;
           }

         },indicatorWeight: 5,indicatorColor:Colors.red,tabs: [
           Tab(child: Text("1"),icon:Icon(Icons.access_time_filled),),
           Tab(child: Text("2"),icon:Icon(Icons.accessibility)),
           Tab(child: Text("3"),icon:Icon(Icons.access_time_filled_rounded)),
         ],),
         ),

         body: TabBarView(
           children: [
           Container(child: Text("ahmed zon1"),),
           Container(child: Text("ahmed zon2"),),
           Container(child: Text("ahmed 4"),),

         ],),

       ));
  }
}



