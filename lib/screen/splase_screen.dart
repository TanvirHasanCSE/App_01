import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module_15/screen/login_page_screen.dart';
import 'package:module_15/widget/screen_bankground.dart';

class SplaseScreen extends StatefulWidget {
  const SplaseScreen({super.key});

  @override
  State<SplaseScreen> createState() => _SplaseScreenState();
}

class _SplaseScreenState extends State<SplaseScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveNextScreen();
  }

  Future<void> _moveNextScreen() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ScreenBankground(
        child: Center(
          child: SvgPicture.asset('assets/images/img3',width: 50,)
        ),
      ),
    );
  }
}
