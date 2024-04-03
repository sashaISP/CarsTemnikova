import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_bottom_app_bar.dart';
import 'package:temnikova_cars/components/example_grid_view_cart.dart';
import 'package:temnikova_cars/model/cars.dart';
import 'package:temnikova_cars/model/cart.dart';
import 'package:temnikova_cars/model/history_pay_list.dart';
import 'package:temnikova_cars/pages/history_pay.dart';
import '../model/sum.dart';

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
    sum = sumPriceCarsInCart();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo[300],
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
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
            Text(
              '$sum рублей',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  var counter = 0;
                  while (counter < cartCars.length) {
                    var existingCar = historyPayCars.where((element) => element.name == cartCars[counter].name);
                    if (existingCar.isNotEmpty) {
                      historyPayCars[historyPayCars.firstWhere((element) => element.name == cartCars[counter].name).id].count =
                          historyPayCars[historyPayCars.firstWhere((element) => element.name == cartCars[counter].name).id].count +
                              cartCars[counter].count;
                      var id = carsList.firstWhere((element) => element.name == cartCars[counter].name).id;
                      carsList[id].statusCartCarsButton = false;
                      carsList[id].colorCartCarsButton = Colors.black;
                      counter++;
                    }
                    else {
                      historyPayCars.add(
                          HistoryCars(historyPayCars.length,
                              cartCars[counter].name,
                              cartCars[counter].complete,
                              cartCars[counter].cost,
                              cartCars[counter].characteristics,
                              cartCars[counter].specification,
                              cartCars[counter].linkVideo,
                              cartCars[counter].linksImages,
                              cartCars[counter].statusFavoriteCarsSButton,
                              cartCars[counter].colorFavoriteCarsButton,
                              cartCars[counter].statusCartCarsButton,
                              cartCars[counter].colorCartCarsButton,
                              cartCars[counter].count,
                              cartCars[counter].isButtonDisabled
                          )
                      );
                      var id = carsList.firstWhere((element) => element.name == cartCars[counter].name).id;
                      carsList[id].statusCartCarsButton = false;
                      carsList[id].colorCartCarsButton = Colors.black;
                      counter++;
                    }
                  }
                  cartCars.removeWhere((element) => true);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const HistoryPay(
                      ),
                    ),
                  );
                });
              },
              child: const Text(
                'Купить',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          "Корзина",
          style: TextStyle(
            fontSize: 45,
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
      sum = sumPriceCarsInCart();
    });
  }
}