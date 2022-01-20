import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myHomePage extends StatelessWidget {
  const myHomePage({Key? key}) : super(key: key);

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
                  child: Text('l\'histoire' )
              )
              ),
            Expanded(
                child:Padding(
                  padding: EdgeInsets.all(5.0),
                  child: TextButton(
                 style: TextButton.styleFrom(
                   primary: Colors.blueAccent,
                 backgroundColor: Colors.blueAccent.shade100,
                 fixedSize: Size.fromHeight(50),
                 ),
                    onPressed: null,
                    child: Text('button 1',style: ,style),

                  ),
                  ),
                ),

            Expanded(
              child:Padding(
                padding: EdgeInsets.all(5.0),
                child: TextButton(
                  onPressed: null,
                  child:Text('reponse 2'),
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
