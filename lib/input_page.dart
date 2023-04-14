import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottimContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: const IconContent(
                    icon: FontAwesomeIcons.mars,
                    lable: 'MALE',
                  ),
                ),
              ),
              Expanded(
                  child: ReusableCard(
                colour: activeCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus,
                  lable: 'FEMALE',
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
