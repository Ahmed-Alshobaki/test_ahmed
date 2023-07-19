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

class _zonhState extends State<zonh> with SingleTickerProviderStateMixin{
  late TabController zon;
   late int index= 0 ;
  late PageController zon1;
   List list =[
     "images/ahmed.jpg",
         "images/zon.png",
         "images/ahmed.jpg",
         "images/zon.png",


   ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    zon1 =new PageController(
      initialPage: 1
    );


  }
  @override
  Widget build(BuildContext context) {


    late TextEditingController ahmed = new TextEditingController();


   return
       Scaffold(
         body: Column(children: [
        Container(height:400,child:    PageView.builder(
          itemCount: list.length,
          onPageChanged: (i){
            index =i;
            print(i);
          },
          controller: zon1,

          itemBuilder: (BuildContext context, int index) {

            return Image.asset(list[index],fit: BoxFit.cover,);
          },

        ),),
          TextButton(onPressed: (){
           zon1.animateTo(3, duration: Duration(seconds: 1), curve: Curves.bounceInOut);
            print(index);
          }, child: Text("add{3}",style: TextStyle(backgroundColor: Colors.black),)),
           TextFormField(
             controller: ahmed,
             style: TextStyle(color: Colors.purple),
             maxLength: 20,

             keyboardType: TextInputType.phone,
             cursorColor: Colors.yellow,
             decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(
                      color: Colors.yellow,
                      width: 2


                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
               focusedBorder: OutlineInputBorder(


                 borderSide: BorderSide(
                     color: Colors.black54,
                     width: 2


                 ),
               )


             ),
           ),
           TextButton(onPressed: (){
             print(ahmed.text);

           }, child: Text("ahmed"))
         ],)

       );
  }
}


