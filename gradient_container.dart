import 'package:flutter/material.dart';
import 'package:flutter_sample/dice_roller.dart';


var startAlign = Alignment.topLeft;
var endAlign = Alignment.bottomLeft;


class GradientContainer extends StatelessWidget  //No internal changing of data
{

  const GradientContainer(this.color1 , this.color2, {super.key});

  const GradientContainer.purple({super.key})
  : color1 = const  Color.fromARGB(235, 0, 36, 94),
    color2 = const Color.fromARGB(255, 1, 2, 57);

  final Color color1;
  final Color color2;
  
  
  @override
  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2], 
        begin: startAlign,  
        end: endAlign,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}