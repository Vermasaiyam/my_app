import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final TextStyle? textStyle;
  final Color? bgColor;
  final VoidCallback? callback;

  const RoundedButton({super.key, required this.btnName, this.icon, this.textStyle, this.bgColor = Colors.orange, this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        callback!();
      },
      child: icon!=null ? Row(
        children: [
          icon!,
          Container(
            width: 11,
          ),
          Text(btnName, style: textStyle,),
        ]
      ) : Text(btnName, style: textStyle,),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.0),
        )
      ),
    );
  }
}