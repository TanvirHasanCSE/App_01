import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:module_15/widget/screen_bankground.dart';
import 'forgate_password_screen.dart';
import 'sing_up_serceen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _emailControlar = TextEditingController();
  TextEditingController _passwordControlar = TextEditingController();

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
                    Text("Get Stated With",
                    style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 15,),
                    TextFormField(
                      controller: _emailControlar,
                      decoration: InputDecoration(
                          hint: Text("Email"),
                      ),
                  
                    ),
                    TextFormField(
                      controller: _passwordControlar,
                      decoration: InputDecoration(
                        hint: Text("Password"),
                      ),
                    ),
                    SizedBox(height: 10,),
                    FilledButton(
                  
                        onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined)),
                    SizedBox(height: 48,),
                    Center(
                      child: Column(
                        children: [
                          TextButton(onPressed: _oneTapForgatePassButton, child: Text("Forgate Password"),),
                          SizedBox(height: 10,),
                          RichText(text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            text: "Don't have anay account?  ",
                            children: [
                              TextSpan(
                                text: "Sing in",style: TextStyle(
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
    Navigator.push(context, MaterialPageRoute(builder: (context)=> SingUpScreen()));
  }


  void _oneTapForgatePassButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgatePasswordScreen()));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailControlar.dispose();
    _passwordControlar.dispose();
  }
}


