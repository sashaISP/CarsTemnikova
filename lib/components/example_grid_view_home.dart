import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_elevated_button_buy.dart';
import 'package:temnikova_cars/model/cars.dart';
import 'package:temnikova_cars/pages/card_car.dart';
import 'icon_button_cart.dart';
import 'icon_button_favorite.dart';

class ExampleGridViewHome extends StatefulWidget {
  final int idCar;
  final VoidCallback update;
  const ExampleGridViewHome({super.key, required this.idCar, required this.update});
  @override
  State<ExampleGridViewHome> createState() => _ExampleGridViewHome(idCar);
}

class _ExampleGridViewHome extends State<ExampleGridViewHome> {
  final int idCar;

  _ExampleGridViewHome(this.idCar);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CardCar(
                id: idCar,
                update: widget.update,
              ),
            ),
          );
        },
        child: Container(
          color: Colors.black12,
          child:Column(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Image.network(
                  carsList[idCar].linksImages[0],
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  carsList[idCar].name,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 26,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  carsList[idCar].complete,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  '${carsList[idCar].cost} рублей',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IconButtonFavorite(
                      carId: idCar,
                      update: widget.update,
                    ),
                    ExampleElevatedButtonBuy(
                      carId: idCar,
                    ),
                    IconButtonCart(
                      carId: idCar,
                      update: widget.update,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
