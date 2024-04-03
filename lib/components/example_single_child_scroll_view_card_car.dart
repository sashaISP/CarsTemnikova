import 'package:flutter/material.dart';
import 'package:temnikova_cars/model/cars.dart';

class ExampleSingleChildScrollViewSpecification extends StatelessWidget {
  final int id;
  const ExampleSingleChildScrollViewSpecification({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text(
        carsList[id].specification,
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}