import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:source_span/source_span.dart';

class ScreenBankground extends StatelessWidget {
  const ScreenBankground({super.key,required this.child});

  final Widget child;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/images/images',
          width: double.maxFinite,
          height: double.maxFinite,
          fit: BoxFit.cover,
        ),
        child
      ],
    );
  }
}
