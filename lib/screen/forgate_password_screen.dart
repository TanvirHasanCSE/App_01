import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:module_15/screen/password_emal_verification.dart';
import 'package:module_15/widget/screen_bankground.dart';
import 'sing_up_serceen.dart';
class ForgatePasswordScreen extends StatefulWidget {
  const ForgatePasswordScreen({super.key});

  @override
  State<ForgatePasswordScreen> createState() => _ForgatePasswordScreenState();
}

class _ForgatePasswordScreenState extends State<ForgatePasswordScreen> {

  TextEditingController _emailControlar = TextEditingController();

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
                    Text("Enther Your Email Address",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text("A 6 digits OTP willl be sent to your mail address",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey
                    )
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: _emailControlar,
                      decoration: InputDecoration(
                        hint: Text("Email"),
                      ),

                    ),

                    SizedBox(height: 10,),
                    FilledButton(

                        onPressed: _onTapOTP,
                        child: Icon(Icons.arrow_circle_right_outlined)),
                    SizedBox(height: 48,),
                    Center(
                      child: Column(
                        children: [
                          RichText(text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              text: "Don't have anay account?  ",
                              children: [
                                TextSpan(
                                  text: "Login",style: TextStyle(
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
    Navigator.pop(context);
  }

  void _onTapOTP(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>PassOTP()));
  }




  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailControlar.dispose();
  }
}


