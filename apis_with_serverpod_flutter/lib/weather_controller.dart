import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main.dart';

class WeatherController extends GetxController {
  RxString resultMessage = ''.obs;
  final textEditingController = TextEditingController();

  void fetchWeather() async {
    try {
      final result = await client.weather.getWeather(textEditingController.text);
      resultMessage.value = result.toString();
    } catch (e) {
      resultMessage.value = '$e';
    }
  }
}
