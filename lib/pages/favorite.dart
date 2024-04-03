import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_bottom_app_bar.dart';
import 'package:temnikova_cars/components/example_grid_view_favorite.dart';
import 'package:temnikova_cars/model/favorite.dart';

class FavoriteCars extends StatefulWidget {
  const FavoriteCars({super.key});

  @override
  State<FavoriteCars> createState() => _FavoriteCars();
}

class _FavoriteCars extends State<FavoriteCars> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo[300],
        alignment: Alignment.center,
        child: GridView.builder(
          itemCount: favoriteCars.length,
          itemBuilder: (BuildContext context, index) {
            return ExampleGridViewFavorite(
              carId: favoriteCars[index].id,
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
          "Избранное",
          style: TextStyle(
            fontSize: 45,
          ),
        ),
      ),
      bottomNavigationBar: const ExampleBottomAppBar(
        home: true,
        favoriteCars: false,
        cartCars: true,
        personalAccount: true,
      ),
    );
  }
  void update() {
    setState(() {});
  }
}