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


  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title: Text("ahmed zon"),
          leading:IconButton(icon: Icon(Icons.arrow_back), onPressed: () {  },),
          actions: [
           IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app))
          ],
          backgroundColor: Colors.red,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          centerTitle: true,

        ),
    drawer: Drawer(),
    body: Container(
    child: GridView.builder(itemCount : list.length,
        scrollDirection: Axis.vertical,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10,childAspectRatio:0.5 ), itemBuilder: (contx,i){
          return Container(


            color: Colors.pink,
            child: ListTile(
              title: Text("${list[i]["ahmed"]}"),
              subtitle: Text("${list[i]["age"]}"),
            ),
          );

    }),
       
     ),
     );
  }
}



