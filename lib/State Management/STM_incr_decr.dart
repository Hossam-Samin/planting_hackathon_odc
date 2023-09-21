
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{

  var counter = 0.obs;

  increment() => counter++;
  decrement() => counter--;

  var counter2 = 0.obs;
  increment2() => counter2++;
  decrement2() => counter2--;

  var counter3 = 0.obs;
  increment3() => counter3++;
  decrement3() => counter3--;

  var counter4 = 0.obs;
  increment4() => counter4++;
  decrement4() => counter4--;
}


