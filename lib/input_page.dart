import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottimContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColor;
  Color femaleCardColour = inactiveCardColor;

  //1 = male , 2= female
  void updateColour(int gender) {
    //male card pressed
    if (gender == 1) {
      if (maleCardColour == inactiveCardColor) {
        maleCardColour = activeCardColor;
        femaleCardColour = inactiveCardColor;
      } else {
        maleCardColour = inactiveCardColor;
      }
    }
    // female card color
    if (gender == 2) {
      if (femaleCardColour == inactiveCardColor) {
        femaleCardColour = activeCardColor;
        maleCardColour = inactiveCardColor;
      } else {
        femaleCardColour = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(1);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColour,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColour(2);
                  });
                },
                child: ReusableCard(
                  colour: femaleCardColour,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    lable: 'FEMALE',
                  ),
                ),
              )),
            ],
          )),
          Expanded(child: ReusableCard(colour: activeCardColor)),
          Expanded(
              child: Row(
            children: [
              Expanded(child: ReusableCard(colour: activeCardColor)),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
            ],
          )),
          Container(
            color: bottimContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
