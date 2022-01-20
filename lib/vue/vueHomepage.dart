
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:challenge_2/controller/ActionHistory.dart';

ActionHistory aH = ActionHistory();

class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  void verification(int choice){
    setState(() {
      aH.nextQuestion(choice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            Expanded(
              flex:5,
              child: Center(
                  child: Text(aH.getStory(),
                      style: TextStyle(
                        color: Colors.blueAccent,
                    //fontWeight: FontWeight,
                    fontSize: 20,
                  )
                  )
              )
              ),
            Expanded(
              flex:1,
                child:Padding(
                  padding: EdgeInsets.all(5.0),
                  child: TextButton(
                 style: TextButton.styleFrom(
                   primary: Colors.blueAccent,
                 backgroundColor: Colors.blueAccent.shade100,
                 fixedSize: Size.fromHeight(50),
                 ),
                    onPressed: (){ verification(1);
                    },
                    child: Text(aH.getChoice1(),
                        style:
                        TextStyle( color: Colors.white,
                          //fontWeight: FontWeight,
                          fontSize: 20,
                        )
                    ),

                  ),
                  ),
                ),

            Expanded(
              flex:1,
              child:Padding(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                    primary: Colors.blueAccent,
                    backgroundColor: Colors.blueAccent.shade100,
                    fixedSize: Size.fromHeight(50),
                  ),
                    onPressed: (){verification(2);},
                    child:
                    Text(aH.getChoice2(),
                        style:
                        TextStyle( color: Colors.white,
                          //fontWeight: FontWeight,
                          fontSize: 20,
                        )
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],

        ),
      ),
    );
  }
}
