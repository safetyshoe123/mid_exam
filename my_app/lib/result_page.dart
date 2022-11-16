// ignore_for_file: unnecessary_import, implementation_imports, unused_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:my_app/controller/controller.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    StoreController controller = Get.find();
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Result: ', style: TextStyle(fontSize: 30.0),
            ),
            Text(controller.total.toString(), style: TextStyle(fontSize: 30.0),
            ),
            Padding(padding: EdgeInsets.only(left: 140.0),
              child: 
                Row( children: [
                ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ),
                onPressed: (){Navigator.pop(context);}, 
                child: const Text('exit')),])
            )
          ]
        ),
    );
  }
}