import "package:flutter/material.dart";
import 'dart:math';
void  main(){
  runApp(
 const MyApp()
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override


  State<MyApp> createState() => _MyAppState();

}
int leftdicenumber= 3;
int  rightdicenumber= 3;

class _MyAppState extends State<MyApp> {
  void changediceface() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: const Text ('Dice App'),
          backgroundColor: Colors.teal,),
        body: Center(
          child: Row(
              children:  [
                Expanded(
                    child: TextButton(
                      onPressed: (){
                       changediceface();
                       print("dice number= $leftdicenumber");
                        },
                      child: Image.asset('images/dice$leftdicenumber.png'),
                    ),
    ),
                Expanded(
                    child: TextButton(
                      onPressed: (){
                         changediceface();
                        print('right button was pressed ');
                      },

                      child: Image.asset('images/dice$rightdicenumber.png'),
                    )

    )
              ]
          ),
        ),

      ),
    );


  }
   }



