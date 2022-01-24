
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:challenge_2/controller/ActionHistory.dart';
import 'package:flutter/widgets.dart';

ActionHistory aH = ActionHistory();


class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  CountDownController _controller = CountDownController();
   int timerController = 20;         // initialisation des variables pour le timer


  void verification(choice ){   //renvoi la valeur du boutton à la fonction
    setState(() {
      aH.nextQuestion(choice);
      _controller.restart(duration: timerController);
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
              Expanded(
                flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: _countdown(),
                  )
              ),
              Expanded(
                flex:5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(aH.getStory(),
                          style: const TextStyle(
                            color: Colors.blueAccent,
                        //fontWeight: FontWeight,
                        fontSize: 20,
                      ),textAlign: TextAlign.center,
                      )
                  ),
                )
                ),
              Expanded(
                flex:1,
                  child:Padding(
                    padding: const EdgeInsets.symmetric(vertical:5.0, horizontal:50.0),
                    child: TextButton(
                   style: TextButton.styleFrom(
                     primary: Colors.blueAccent,
                   backgroundColor: Colors.blueAccent.shade100,
                   fixedSize: const Size.fromHeight(10),
                   ),
                      onPressed: (){
                        verification(1);
                        },
                      child: Text(aH.getChoice1(),
                          style:
                          const TextStyle( color: Colors.white,
                            //fontWeight: FontWeight,
                            fontSize: 20,
                          ),textAlign: TextAlign.center,
                      ),

                    ),
                    ),
                  ),

              Expanded(
                flex:1,
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical:1.0, horizontal:50.0),
                  child: SizedBox(
                    height: 10,
                    child: _button1(),
                  ),
                ),
              ),
              const Spacer(
                flex:1
              ),
            ],
          ),
        ),
      ),
    );
  }

    _button1()  {     //fonction du second button
     if (aH.getIndex() == 0 || aH.getIndex() == 1 || aH.getIndex() == 2) {
       return TextButton(
         style: TextButton.styleFrom(
           primary: Colors.blueAccent,
           backgroundColor: Colors.blueAccent.shade100,
           fixedSize: const Size.fromHeight(50),
         ),
         onPressed: () {
           verification(2);
         },
         child:
         Text(aH.getChoice2(),
             style:
             const TextStyle(color: Colors.white,
//fontWeight: FontWeight,
               fontSize: 20,
             ),textAlign: TextAlign.center,
         ),
       );
     }else {
       return ;
     }
  }
  _countdown() {
    if  (aH.getIndex() != 6) {
      return CircularCountDownTimer(
        duration: timerController,
        initialDuration:0,
        controller: _controller,
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.height * 0.2,
        ringColor: Colors.blue.shade300,
        ringGradient: null,
        fillColor: Colors.purpleAccent.shade400,
        fillGradient: null,
        backgroundColor: Colors.lightBlue.shade100,
        backgroundGradient: null,
        strokeWidth: 5.0,
        strokeCap: StrokeCap.round,
        textStyle: TextStyle(
            fontSize: 13.0, color: Colors.grey, fontWeight: FontWeight.bold),
        textFormat: CountdownTextFormat.S,
        isReverse: false,
        isReverseAnimation: false,
        isTimerTextShown: true,
        autoStart: true,
        onStart: () {
          print('Countdown Started');
        },
        onComplete: () {
          setState(() {
            aH.nextQuestion(3);

          });
        },
      );
    }
  }

}






