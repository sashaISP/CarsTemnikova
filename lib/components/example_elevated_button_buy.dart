import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_alert_dialog.dart';

class ExampleElevatedButtonBuy extends StatefulWidget {
  final int carId;
  const ExampleElevatedButtonBuy({super.key, required this.carId});
  @override
  State<ExampleElevatedButtonBuy> createState() => _ExampleElevatedButtonBuy(carId);
}
class _ExampleElevatedButtonBuy extends State<ExampleElevatedButtonBuy> {
  final int carId;
  _ExampleElevatedButtonBuy(this.carId);
  @override

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return ExampleAlertDialog(
              carId: carId,
            );
          },
        );
      },
      child: const Text(
        'Купить',
      ),
    );
  }
}