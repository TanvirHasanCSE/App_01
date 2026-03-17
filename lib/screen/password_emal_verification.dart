import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:module_15/widget/screen_bankground.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'sing_up_serceen.dart';
class PassOTP extends StatefulWidget {
  const PassOTP({super.key});

  @override
  State<PassOTP> createState() => _PassOTPState();
}

class _PassOTPState extends State<PassOTP> {

  TextEditingController _OTPcontrolar = TextEditingController();

  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBankground(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Form(
                key: _keyForm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 100,),
                    Text("Enther your OTP",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text("A 6 digits OTP has been sent to your mail address",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.grey
                        )
                    ),
                    SizedBox(height: 10,),
                    PinInput(
                      length: 6,
                      builder: (context, cells) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: cells.map((cell) {
                            return Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: cell.isFocused ? Colors.blue : Colors.grey[200],
                              ),
                              child: Center(
                                child: Text(
                                  cell.character ?? '',
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            );
                          }).toList(),
                        );
                      },
                      onCompleted: (pin) => print('PIN: $pin'),
                    ),

                    SizedBox(height: 10,),
                    FilledButton(

                        onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined)),
                    SizedBox(height: 48,),
                    Center(
                      child: Column(
                        children: [
                          RichText(text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              text: "Alrady have and account?  ",
                              children: [
                                TextSpan(
                                  text: "login",style: TextStyle(
                                    color: Colors.green
                                ),
                                  recognizer: TapGestureRecognizer()..onTap = _oneTapSingUpButton,

                                )
                              ]
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }

  void _oneTapSingUpButton(){
    Navigator.pop(context,);
  }




  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _OTPcontrolar.dispose();
  }
}


