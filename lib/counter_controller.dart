import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt rxCount = 0.obs; //by getx
  int count = 0;

  addToCountUsingRx() {
    rxCount++;
    print(rxCount.value);
  }

  addToCount() {
    count++;

    print(count);
  }
}
