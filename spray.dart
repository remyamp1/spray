import 'package:flutter/material.dart';
class Sprayexample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<Map> spraymap=[
      {
      "image":"assets/images/bottle1.jpeg",
      "name":"The one for men",
      "price":"AED 510",
      "price1":"ADE 339.00",
  },
  {
      "image":"assets/images/bottle2.jpeg",
      "name":"Acqua Di gio profondo",
      "price":"AED 465.00",
      "price1":"ADE 399.00",
  },
  {
      "image":"assets/images/bottal3.jpeg",
      "name":"Sauvage",
      "price":"AED 510",
      "price1":"ADE 450.00",
  },
  {
      "image":"assets/images/bottle4.jpeg",
      "name":"Grain de poudre",
      "price":"AED 510",
      "price1":"ADE 585",
  },
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("ZAHAAR"),
        centerTitle: true,
        actions: [
          Icon(Icons.chat),
          SizedBox(width: 10),
          Icon(Icons.shopping_bag),
        ],
      ),
body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 0,mainAxisSpacing: 0,childAspectRatio: 7),
 itemCount: spraymap.length,
 itemBuilder:(context,index)
{
return Padding(padding: const EdgeInsets.all(10.0),
child: Container(
  color: Colors.grey[200],
  child: Column(
    children: [
      Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(spraymap[index]["image"]),
          fit: BoxFit.cover)),
          ),
          SizedBox(height: 15),
          Text(spraymap[index]["name"]),
          SizedBox(
            height: 10,
          ),
          Text(spraymap[index]["price"],style: TextStyle(decoration: TextDecoration.lineThrough),),
          SizedBox(
            height: 10,
          ),
          Text(spraymap[index]["price1"],
          style: TextStyle(color: Colors.red),),
    ], 
  ),
      ),
    
  );
  }));
 
  
}}