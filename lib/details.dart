// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class itemdetails extends StatefulWidget {
  final data;
  const itemdetails({super.key, this.data});

  @override
  State<itemdetails> createState() => ItemDetails();
}

class ItemDetails extends State<itemdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Color.fromARGB(255, 32, 14, 7),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: (".")),
          ],
        ),
      endDrawer: Drawer(),
      appBar: AppBar(
        
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.shopping_bag,) ,
            Text("Shop",style: TextStyle(color: Colors.black,fontSize: 22,),)
        ,Text("Ping",style: TextStyle(color: Colors.orange,fontSize: 33,fontWeight: FontWeight.bold),)],),
        backgroundColor: Colors.grey,
        elevation: 0,

      ),
      body:  ListView( children: [ Image.network(widget.data['image']),
       Container(child: Text(widget.data['title'],textAlign: TextAlign.center,style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),)), 
        Container(child: Text(widget.data['subtitle'],textAlign: TextAlign.center,style: TextStyle(fontSize: 27,),)), 
         Container(child: Text(widget.data['price'],textAlign: TextAlign.center,style: TextStyle(fontSize: 27, color: Colors.orange),)), 
       Container(margin:EdgeInsets.all(30),child:Row(children: [Text("Color :") ,Container( padding: EdgeInsets.all(22),margin: EdgeInsets.all(11) ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(22) ,color: Colors.grey),width: 12,height: 12,),Text("black"), Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.black,), width: 11,height: 11, ), Text("grey"),],),)
         ,Container( color:Colors.blue, margin: EdgeInsets.symmetric(vertical: 8,horizontal: 100),child: MaterialButton(
          textColor: Colors.white,
          onPressed: (){ }
         ,child:const Text("add to Chart") ,),),
         
       ],),
       
    );
  }
}
