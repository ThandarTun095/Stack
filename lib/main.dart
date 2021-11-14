import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

//Stack
class MyHomePage extends StatefulWidget{
    @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}


class MyHomePageState extends State<MyHomePage>{

  var key = 0;


  Widget build(BuildContext context){  //when call setState ,rerun build method//recreate widget

    print("Build Method");

    return MaterialApp(
      home: Scaffold(  
        appBar: AppBar(title: Text("My App"),),

//Stack
        // body: Stack(
        //   //alignment: Alignment.center,
        //   children: [

        //   Container(    
        //     width: 150,
        //     height: 150,
        //     color: Colors.green,
        //     child: Text("Container 1"),
        //   ),
          
        //   Positioned(
        //     top: 10,
        //     left: 20,
        //     child: 
        //   Container(    
        //     width: 100,
        //     height: 100,
        //     color: Colors.red,
        //     child: Text("Container 2"),
        //   )
        //   )

          
         
        // ],),


//IndexedStack
        body: Column(children: [
          IndexedStack(
            //index: 0,  //0,1 index of container
          index: key,
          children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Text("Container 1"),

          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Text("Container 2"),

          )

        ],),

        OutlinedButton(   
          onPressed: (){
            setState(() {
              key = 0;
            });

          },
          child: Text("Show 1"),
        ),
        OutlinedButton(   
          onPressed: (){
            setState(() {
              key =1;
            });

          },
          child: Text("Show 2"),
        )

        ],)

      ),
    );
  }
}


