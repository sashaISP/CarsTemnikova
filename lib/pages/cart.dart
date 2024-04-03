import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_bottom_app_bar.dart';
import 'package:temnikova_cars/components/example_grid_view_cart.dart';
import 'package:temnikova_cars/model/cart.dart';

class CartCars extends StatefulWidget {
  const CartCars({super.key});

  @override
  State<CartCars> createState() => _CartCars();
}

class _CartCars extends State<CartCars> {
  int sum = 0;
  @override
  void initState() {
    super.initState();
    // sum = sumPriceCarsInCart();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        alignment: Alignment.center,
        child: GridView.builder(
          itemCount: cartCars.length,
          itemBuilder: (BuildContext context, index) {
            return ExampleGridViewCart(
                carId: cartCars[index].id,
                updateSum: update,
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
          "Корзина",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      bottomNavigationBar: const ExampleBottomAppBar(
        home: true,
        favoriteCars: true,
        cartCars: false,
        personalAccount: true,
      ),
    );
  }
  void update() {
    setState(() {
      // sum = sumPriceCarsInCart();
    });
  }
}