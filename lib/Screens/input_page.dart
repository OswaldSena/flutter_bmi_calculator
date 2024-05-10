import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/icon_content.dart';
import '../Components/reusable_card.dart';
import '../constants.dart';
import 'results_page.dart';
import '../Components/bottom_button.dart';
import '../Components/round_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Color maleCardColour = kInactiveCardColour;
Color femaleCardColour = kInactiveCardColour;

class _InputPageState extends State<InputPage> {


  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: ReUsableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars, text: 'MALE',),
                colour: selectedGender == Gender.male
                    ? kActiveCardColour
                    : kInactiveCardColour,),),
              Expanded(child: ReUsableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus, text: 'FEMALE',),
                colour: selectedGender == Gender.female
                    ? kActiveCardColour
                    : kInactiveCardColour,),),
            ],
          ),
          ),
          Expanded(child: ReUsableCard(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT', style: kLabelTextStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: kNumberTextStyle,),
                    Text('cm', style: kLabelTextStyle,),
                  ],
                ),
                SliderTheme(
                  //Tapping into the SliderTheme widget for customization without having to set all the
                  //properties but only targeting the properties you need. While keeping the original slider theme
                  // of Context (from the build widget)
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15,),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30,),
                      thumbColor: Color(0xFFEB1555)
                  ),
                  child: Slider(
                    inactiveColor: Color(0XFF8D8E98),
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    min: 120.0,
                    max: 220.0,
                  ),
                ),
              ],
            ),
            colour: kActiveCardColour,),),
          Expanded(child: Row(
            children: [
              Expanded(child: ReUsableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT KG', style: kLabelTextStyle,),
                    Text(weight.toString(), style: kNumberTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                          icon: FontAwesomeIcons.minus,
                        ),
                        SizedBox(width: 10),
                        RoundIconButton(
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          icon: FontAwesomeIcons.plus,
                        ),
                      ],
                    ),
                  ],
                ),
                colour: kActiveCardColour,),),
              Expanded(child: ReUsableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE', style: kLabelTextStyle,),
                    Text(age.toString(), style: kNumberTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                          icon: FontAwesomeIcons.minus,
                        ),
                        SizedBox(width: 10),
                        RoundIconButton(
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          icon: FontAwesomeIcons.plus,
                        ),
                      ],
                    ),
                  ],
                ),
                colour: kActiveCardColour,),),
            ],
          ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc =
              CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

