import 'package:counter/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  // final controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CounterController(),
      builder: (contr) => Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed the button this many times:'),

              // Obx(
              //   () => Text(
              //     '${controller.rxCount}',
              //     style: Theme.of(context).textTheme.headlineMedium,
              //   ),
              // ),
              Text(
                contr.count.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            contr.addToCount();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
    // return GetX(
    //   init: CounterController(),
    //   builder: (contr) => Scaffold(
    //     appBar: AppBar(title: Text(title)),
    //     body: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           const Text('You have pushed the button this many times:'),

    //           // Obx(
    //           //   () => Text(
    //           //     '${controller.rxCount}',
    //           //     style: Theme.of(context).textTheme.headlineMedium,
    //           //   ),
    //           // ),
    //           Text(
    //             contr.rxCount.toString(),
    //             style: Theme.of(context).textTheme.headlineMedium,
    //           ),
    //         ],
    //       ),
    //     ),
    //     floatingActionButton: FloatingActionButton(
    //       onPressed: () {
    //         contr.addToCountUsingRx();
    //       },
    //       child: const Icon(Icons.add),
    //     ),
    //   ),
    // );
  }
}
