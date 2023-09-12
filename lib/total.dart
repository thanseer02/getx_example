import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mycart_getx/home.dart';

import 'controller.dart';
class total extends StatelessWidget {
   total({super.key});
  final Mycontroller c=Get.put(Mycontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Total Items :',style: TextStyle(fontSize: 35),),
              SizedBox(height: 30,),
              Obx(() => Text("${c.sum.toString()}",style: TextStyle(fontSize: 35),),),
              SizedBox(height: 30,),
              Container(
                height: 70,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                    onPressed: ()=>
                        Get.to(()=>my_cart())
                    , child: Text(
                  'back',style: TextStyle(
                    fontSize: 30,
                    color: Colors.green
                ),
                )),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
