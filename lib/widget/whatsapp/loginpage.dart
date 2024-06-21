import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hello/widget/whatsapp/whatsapp_home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Center(
                      child: Text(
                        "Enter your phone number",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 6, 247, 14),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              Container(
                // margin: EdgeInsets.all(1),
                padding: EdgeInsets.only(left: 1, right: 1),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                          "WhatsApp will need to verify your phone \n number. Carrier charges may apply ",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                      children: <TextSpan>[
                        TextSpan(
                          
                          text: "What's my \n number?",
                          style: TextStyle(color: const Color.fromRGBO(33, 150, 243, 1)),
                          recognizer: TapGestureRecognizer()
                           ..onTap=(){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WhatsappHomePage(),),);

                          }
                          
                          
                          // mouseCursor: SystemMouseCursors.click,
                          // recognizer: TapGestureRecognizer(
                          //     allowedButtonsFilter: (context) {
                          //   Navigator.of(context).push(MaterialPageRoute(
                          //       builder: (BuildContext context) =>
                          //           WhatsappHomePage(),),);
                          // }),
                          
                        ),



                         
                        
                      ],),
                      overflow:TextOverflow.clip ,
                      softWrap: true,
                ),
              ),
             TextFormField(
              
             )
            ],
          ),
        ),
      ),
    );
  }
}
