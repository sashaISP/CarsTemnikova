import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_bottom_app_bar.dart';
import 'package:temnikova_cars/components/example_grid_view_home.dart';
import 'package:temnikova_cars/model/cars.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePage();
}
class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo[300],
        alignment: Alignment.center,
        child: GridView.builder(
          itemCount: carsList.length,
          itemBuilder: (BuildContext context, index) {
            return ExampleGridViewHome(
              idCar: carsList[index].id,
              update: update,
            );
          },
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 0.55,
            maxCrossAxisExtent: 203,
          ),
          padding: const EdgeInsets.all(3),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          "Автомобили",
          style: TextStyle(
            fontSize: 45,
          ),
        ),
      ),
      bottomNavigationBar: const ExampleBottomAppBar(
        home: false,
        favoriteCars: true,
        cartCars: true,
        personalAccount: true,
      ),
    );
  }
  void update() {
    setState(() {});
  }
}