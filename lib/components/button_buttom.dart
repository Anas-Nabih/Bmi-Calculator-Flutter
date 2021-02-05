import 'package:flutter/material.dart';
import '../constants.dart';

class ButtonButtom extends StatelessWidget {

  ButtonButtom({@required this.onTap,@required this.Buttontitle});
  final Function onTap;
  final String Buttontitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(Buttontitle,
            style: kLargeButtonTesxtStyle,),
        ),
        color: kActiveContainerColour,
        margin: EdgeInsets.only(top: 10),
        height: kBottomContainerHight,
        width: double.infinity,
      ),
    );
  }
}