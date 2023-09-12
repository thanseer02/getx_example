import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mycontroller extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum=>books.value+pens.value;
  add() {
    books.value++;
  }

  sub() {
    if (books.value <= 0) {
      Get.snackbar("Buying Books", "Cannot be less than Zero",
          icon: Icon(Icons.add_alert,color: Colors.red,),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3)
      );
    }
    else {
      books.value--;
    }
  }
  add_pen() {
    pens.value++;
  }

  sub_pen() {
    if (pens.value <= 0) {
      Get.snackbar("Buying Pens", "Cannot be less than Zero",
          icon: Icon(Icons.add_alert,color: Colors.red,),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3)
      );
    }
    else {
      pens.value--;
    }
  }
}