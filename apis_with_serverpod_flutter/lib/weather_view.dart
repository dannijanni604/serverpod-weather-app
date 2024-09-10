import 'package:apis_with_serverpod_flutter/weather_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WeatherController());
    return Scaffold(
        appBar: AppBar(title: const Text('Weather App')),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: TextField(controller: controller.textEditingController, decoration: const InputDecoration(hintText: 'Enter your City Name'))),
              Padding(padding: const EdgeInsets.only(bottom: 16.0), child: ElevatedButton(onPressed: controller.fetchWeather, child: const Text('Check weather'))),
              Obx(() => controller.resultMessage.isNotEmpty
                  ? Container(
                      height: 50,
                      color: Colors.grey,
                      child: Center(child: Text("${controller.textEditingController.text} weather is :${controller.resultMessage.value}")))
                  : const SizedBox())
            ])));
  }
}
