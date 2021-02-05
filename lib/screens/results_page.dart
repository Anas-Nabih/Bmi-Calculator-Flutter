import 'package:bmi_calculator/components/button_buttom.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.getresult,@required this.calculateBMi,@required this.getinterpetation});
  final String getresult ;
  final String calculateBMi ;
  final getinterpetation ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
                padding: EdgeInsets.all(10),
                child: Text('Your Result', style: kUperTextStyle,)
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(colour: kActiveCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(getresult.toUpperCase(), style: kResultTestStyle,),
                Text(calculateBMi,style: kBMITextStyle,),
                Text(getinterpetation,
                  textAlign: TextAlign.center,style: kBMIAdvice,),

              ],
            ),),
          ),
          Expanded(
            child: ButtonButtom(Buttontitle: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
            ),
          ),
        ],
      ),
    );
  }
}
