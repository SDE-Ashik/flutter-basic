import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
// here we use animated_text_kit

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              "do it later....",
// speed: Duration(microseconds:10000),
            ),
          ],
        ),
        // Text("hello"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              FlickerAnimatedText(
                "In three words I can sum up everything I’ve learned about life: It goes on",
                speed: Duration(seconds: 3),
                textStyle: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontSize: 30),
              ),
            ],
            isRepeatingAnimation: true,
            displayFullTextOnTap: true,
            pause: Duration(seconds: 5),
          ),
          // AnimatedTextKit(animatedTexts: )
          // Center(
            // child: Container(
            //   height: 500,
            //   width: 1000,
            //   child: ElevatedButton(
                
            //       onPressed: () {}, child: TextLiquidFill(text: "Clik ")),
            // ),
          // ),
          
          Center(child:ElevatedButton(onPressed: (){},
            child: AnimatedTextKit(animatedTexts: [
            
            ScaleAnimatedText("Clik",textStyle: TextStyle(color: Colors.black,fontSize: 40)),
            ScaleAnimatedText("here",textStyle: TextStyle(color: Colors.black,fontSize: 40),)
                      ],
                      isRepeatingAnimation: true,
                      displayFullTextOnTap: true,
                      pause:Duration(seconds: 1),),
          ),)
        ],
      ),
    );
  }
}
