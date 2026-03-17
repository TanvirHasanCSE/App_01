import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:module_15/screen/login_page_screen.dart';
import 'package:module_15/widget/screen_bankground.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {

  TextEditingController _emailControlar = TextEditingController();
  TextEditingController _passwordControlar = TextEditingController();
  TextEditingController _fastNameControlar = TextEditingController();
  TextEditingController _LastNamControlar  = TextEditingController();
  TextEditingController _mobailControlar = TextEditingController();

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
                    Text("Joine With Us",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  
                    SizedBox(height: 20,),
                  
                    TextFormField(
                      controller: _emailControlar,
                      decoration: InputDecoration(
                        hint: Text("Email",
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                      ),
                  
                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: _fastNameControlar,
                      decoration: InputDecoration(
                        hint: Text("Fast Name",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                        ),
                      ),
                  
                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: _LastNamControlar,
                      decoration: InputDecoration(
                        hint: Text("Last Name",
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                      ),
                  
                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: _mobailControlar,
                      decoration: InputDecoration(
                        hint: Text("Mobail",
                            style: TextStyle(
                            color: Colors.grey
                        ),),
                      ),
                  
                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: _passwordControlar,
                      decoration: InputDecoration(
                        hint: Text("Password",
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    FilledButton(
                  
                        onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined)),
                    SizedBox(height: 48,),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          RichText(text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              text: "Don't have anay account?  ",
                              children: [
                                TextSpan(
                                  text: "Login",style: TextStyle(
                                    color: Colors.green
                                ),
                                  recognizer: TapGestureRecognizer()..onTap = _loginPageRoute,
                  
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

  void _loginPageRoute(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailControlar.dispose();
    _passwordControlar.dispose();
    _LastNamControlar.dispose();
    _fastNameControlar.dispose();
    _mobailControlar.dispose();
  }
}


