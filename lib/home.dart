import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycart_getx/controller.dart';
import 'package:mycart_getx/total.dart';
class my_cart extends StatelessWidget {
   my_cart({super.key});
  final Mycontroller c=Get.put(Mycontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Books',style: TextStyle(fontSize: 30,color: Colors.amber),),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25)

                      ),
                      child: IconButton(onPressed: () {
                        c.add();
                      },icon:Icon(CupertinoIcons.add,color: Colors.white,)  ),
                    ),
                    SizedBox(width: 20,),
                    Obx(() => Text("${c.books.toString()}",style: TextStyle(fontSize: 30),)),
                    SizedBox(width: 20),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25)

                      ),
                      child: IconButton(onPressed: () {
                        c.sub();
                      },icon:Icon(CupertinoIcons.minus,color: Colors.white,)  ),
                    ),

                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pen',style: TextStyle(fontSize: 30,color: Colors.amber),),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25)

                      ),
                      child: IconButton(onPressed: () {
                        c.add_pen();
                      },icon:Icon(CupertinoIcons.add,color: Colors.white,)  ),
                    ),
                    SizedBox(width: 20,),
                    Obx(() => Text("${c.pens.toString()}",style: TextStyle(fontSize: 30),)),
                    SizedBox(width: 20),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25)

                      ),
                      child: IconButton(onPressed: () {
                        c.sub_pen();
                      },icon:Icon(CupertinoIcons.minus,color: Colors.white,)  ),
                    ),

                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Container()),
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
                      Get.to(()=>total())
                      , child: Text(
                    'Total',style: TextStyle(
                    fontSize: 30,
                    color: Colors.green
                  ),
                  )),
                )
              ],

            )

          ],
        ),

      ),
    );
  }
}
