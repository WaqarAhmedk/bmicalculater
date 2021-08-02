import 'package:bmicalculater/components/commonconatainer.dart';

import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/commonbutton.dart';
import 'appbody.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String bmiresult;
  final String bmisuggestion;
  ResultPage(
      {@required this.bmi,
      @required this.bmiresult,
      @required this.bmisuggestion});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Your Result",
            style: kresulttitlestyle,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Container(
              child: CommonContainer(
                reqcolor: Color(0xFF111328),
                containerChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmi,
                      style: kresulttextstyle,
                    ),
                    Text(
                      bmiresult,
                      style: knumberstyle,
                    ),
                    Text(
                      bmisuggestion,
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          CommonButton(
            buttontitle: "Re-Calculate",
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Appbody();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
