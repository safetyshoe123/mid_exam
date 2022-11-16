// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'controller/controller.dart';
import 'package:get/get.dart';
import 'result_page.dart';

class MyWidget extends StatelessWidget {
   MyWidget({super.key});
 // final StoreController control = Get.put(StoreController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Calculator'),
        foregroundColor: Colors.green,
      ),
      body: MyUI(),
    );
  }
}
class MyUI extends StatelessWidget {
  MyUI({super.key});
  final StoreController controller = Get.put(StoreController());

  final numControl1 = TextEditingController();
  final numControl2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Text(storeController.calc()),
          Padding(padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: TextFormField(
              controller: controller.input1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 2.0)),
                label: Text('Enter number'),
              ),
          ),
        ),
        Padding(padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: TextFormField(
              controller: controller.input2,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 2.0)),
                label: Text('Enter number'),
              ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: GestureDetector(
              onTap: (){
                String op = '+';
                controller.calc(op);
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const ResultPage()));
              },
              child:Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green
                ),child: const Center(child: Text('+'),),
                ),
            )
            ), 
            Padding(padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: GestureDetector(
              onTap: (){
                String op = '-';
                controller.calc(op);
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const ResultPage()));
              },
              child:Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green
                ),child: const Center(child: Text('-'),),
                ),
            )
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: GestureDetector(
              onTap: (){
                String op = '*';
                controller.calc(op);
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const ResultPage()));
              },
              child:Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green
                ),child: const Center(child: Text('*'),),
                ),
            )
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: GestureDetector(
              onTap: (){
                String op = '/';
                controller.calc(op);
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const ResultPage()));
              },
              child:Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green
                ),child: const Center(child: Text('/'),),
                ),
            )
            )
          ],
        )
      ]
    );
  }
}