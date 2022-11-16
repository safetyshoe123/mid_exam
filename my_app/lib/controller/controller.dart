import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class StoreController extends GetxController {

  final input1 = TextEditingController();
  final input2 = TextEditingController();

  int num1 = 0, num2 = 0;
  int total = 0;
  String operator = '';

  calc(String operator){

    num1 = int.parse(input1.text);
    num2 = int.parse(input2.text);

    switch (operator) {
      case '+':
        total = num1 + num2;
        update();
        break;
      case '-':
        total = num1 - num2;
        update();
        break;
      case '*':
        total = num1 * num2;
        update();
        break;
      case '/':
        total = num1 ~/ num2;
        update();
        break;
    }
  }
}