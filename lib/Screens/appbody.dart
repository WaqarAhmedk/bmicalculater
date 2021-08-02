import 'package:bmicalculater/Screens/aboutme.dart';
import 'package:bmicalculater/components/calculatorlogic.dart';
import 'package:bmicalculater/components/commonbutton.dart';
import 'package:bmicalculater/components/commonconatainer.dart';
import 'package:bmicalculater/components/constants.dart';
import 'package:bmicalculater/components/genderwidget.dart';
import 'package:bmicalculater/components/moddifiedbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './resultpage.dart';

enum GenderEnum {
  male,
  female,
}

class Appbody extends StatefulWidget {
  Appbody({Key key}) : super(key: key);

  @override
  _AppbodyState createState() => _AppbodyState();
}

class _AppbodyState extends State<Appbody> {
  Color malecardcolor = kinactivecolor;
  Color femalecardcolor = kinactivecolor;
  GenderEnum selectedgender;
  int height = 120;
  int age = 15;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AboutMe();
            }));
          },
          child: Icon(FontAwesomeIcons.user),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: CommonContainer(
                  onpress: () {
                    setState(() {
                      selectedgender = GenderEnum.male;
                    });
                  },
                  reqcolor: selectedgender == GenderEnum.male
                      ? malecardcolor = kactivecardcolor
                      : malecardcolor = kinactivecolor,
                  containerChild: GenderWidget(
                    gicon: FontAwesomeIcons.male,
                    gtext: "MALE",
                  ),
                ),
              ),
              Expanded(
                child: CommonContainer(
                  onpress: () {
                    setState(() {
                      selectedgender = GenderEnum.female;
                    });
                  },
                  reqcolor: selectedgender == GenderEnum.female
                      ? femalecardcolor = kactivecardcolor
                      : femalecardcolor = kinactivecolor,
                  containerChild: GenderWidget(
                    gicon: FontAwesomeIcons.female,
                    gtext: "FEMALE",
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: CommonContainer(
              reqcolor: kinactivecolor,
              containerChild: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "HEIGHT",
                            style: klabeltxtstyle,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  height.toString(),
                                  style: knumberstyle,
                                ),
                                Text(
                                  "cm",
                                ),
                              ],
                            ),
                          ),
                          SliderTheme(
                            //slider theme is used for them,e styling
                            data: SliderThemeData(
                              activeTrackColor: Colors.blue,
                              thumbColor: Colors.white,
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 15),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30),
                            ),
                            child: Expanded(
                              child: Slider(
                                  value: height.toDouble(),
                                  min: 100,
                                  max: 300,
                                  onChanged: (double newvalue) {
                                    setState(() {
                                      height = newvalue.round();
                                    });
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CommonContainer(
                    reqcolor: kinactivecolor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: klabeltxtstyle,
                        ),
                        Text(
                          age.toString(),
                          style: knumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButtonmodified(
                              btnicon: FontAwesomeIcons.minus,
                              onclick: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            IconButtonmodified(
                              btnicon: FontAwesomeIcons.plus,
                              onclick: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CommonContainer(
                    reqcolor: kinactivecolor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: klabeltxtstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: knumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButtonmodified(
                              btnicon: FontAwesomeIcons.minus,
                              onclick: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            IconButtonmodified(
                              btnicon: FontAwesomeIcons.plus,
                              onclick: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CommonButton(
            buttontitle: "Calculate",
            onTap: () {
              CalcLogic results = CalcLogic(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage(
                      bmi: results.calculateBMI(),
                      bmiresult: results.getresults(),
                      bmisuggestion: results.getsuggestion(),
                    );
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
