import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/navigationDrawer.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/round_icon_dart.dart';
import 'package:bmi_calculator/Fragements/result_BodyFatPercentage.dart';
enum Gender{ male, female}

class InputPageBFP extends StatefulWidget {

  @override
  _InputPageMBIState createState() => _InputPageMBIState();
}

class _InputPageMBIState extends State<InputPageBFP> {

  Gender? selectedGender ;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BODY FAT PERCENTAGE CALCULATOR',  style: TextStyle(
          fontSize: 15,
             fontWeight: FontWeight.w600,
        )),
       
      ),
      drawer: navigationDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          Flexible(
            flex: 1,
              child: Row( 
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                    ),),),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),),
                ],
              ),
          ),
        Flexible(
            flex: 1,
              child: ReusableCard(
                  colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WAIST',
                    style: kLabelTextStyle,
                    
                  ),
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      
                      Text(
                        height.toString(),
                        style: kDigitLabelStyle,
                      ),
                      Text(
                        'inches',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],),
              ),),
        Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'WEIGHT (pounds)',
                            style: kLabelTextStyle,
                          ),
                      
                          Text(
                            weight.toString(),
                            style: kDigitLabelStyle,
                          ),
                          Row(
                          
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){
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
               Flexible(
              flex: 1,
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                  
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ 
                         Text(
                            'WRIST (inches)',
                          style: kLabelTextStyle,
                        ),
                        Text(
                            age.toString(),
                          style: kDigitLabelStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                              setState(() {
                                age--;
                              });
                            }),
                            SizedBox(
                              width: 10.0,
                             
                            ),
                            RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
                              setState(() {
                                age++;
                              });
                            })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
  Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'FOREARM (inches)',
                            style: kLabelTextStyle,
                          ),
                      
                          Text(
                            weight.toString(),
                            style: kDigitLabelStyle,
                          ),
                          Row(
                          
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){
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
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                  
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ 
                         Text(
                            'HIPS (inches)',
                          style: kLabelTextStyle,
                        ),
                        Text(
                            age.toString(),
                          style: kDigitLabelStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                              setState(() {
                                age--;
                              });
                            }),
                            SizedBox(
                              width: 10.0,
                             
                            ),
                            RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
                              setState(() {
                                age++;
                              });
                            })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          BottomButton(
            
            buttonTitle: 'CALCULATE',
            onTap: (){
              CalculatorBrain calc = CalculatorBrain(weight: weight, height: height);

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPageBFP(
                  bmiResult: calc.calculateBMI(),
                  resultText: calc.getResult(),
                  interpretation: calc.getInterpretation(),
                ),),);
          },),
        ],
      )
    );
    
  }
}
