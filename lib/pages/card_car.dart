import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_bottom_app_bar.dart';
import 'package:temnikova_cars/components/example_single_child_scroll_view_card_car.dart';
import 'package:temnikova_cars/model/cars.dart';


class CardCar extends StatefulWidget {
  final int id;
  final VoidCallback update;
  const CardCar({super.key, required this.id, required this.update});
  @override
  State<CardCar> createState() => _CardCar(id);
}
class _CardCar extends State<CardCar> {
  final int id;
  _CardCar(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[100],
        alignment: Alignment.center,
        child: ExampleSingleChildScrollViewCardCar(
          idCar: id,
          update: widget.update,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          carsList[id].name,
          style: const TextStyle(
            fontSize: 37,
          ),
        ),
      ),
      bottomNavigationBar: const ExampleBottomAppBar(
        home: true,
        favoriteCars: true,
        cartCars: true,
        personalAccount: true,
      ),
    );
  }
}
