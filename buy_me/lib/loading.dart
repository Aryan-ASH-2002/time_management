import 'package:flutter/material.dart';


class Loading extends StatelessWidget {
  final double size;
  final Color? color;
  const Loading({this.size=30,this.color= Colors.white,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      child: SizedBox(
        width: size, height:size,
        child: CircularProgressIndicator(
          strokeWidth: size/10,
          valueColor:  AlwaysStoppedAnimation<Color>(color!),
        ),
      ),
    );
  }
}