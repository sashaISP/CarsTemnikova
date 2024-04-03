import 'package:flutter/material.dart';
import 'package:temnikova_cars/model/cart.dart';
import '../model/cars.dart';

class IconButtonCart extends StatefulWidget {
  final int carId;
  final VoidCallback update;
  const IconButtonCart({super.key, required this.carId, required this.update});
  @override
  State<IconButtonCart> createState() => _IconButtonCart(carId);
}
class _IconButtonCart extends State<IconButtonCart> {
  final int carId;
  _IconButtonCart(this.carId);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Корзина',
      icon: const Icon(Icons.shopping_cart),
      selectedIcon: const Icon(Icons.shopping_cart),
      isSelected: carsList[carId].statusCartCarsButton,
      color: carsList[carId].colorCartCarsButton,
      onPressed: () {
        if (carsList[carId].statusCartCarsButton == false) {
          cartCars.add(
              CarsCart(cartCars.length,
                  carsList[carId].name,
                  carsList[carId].complete,
                  carsList[carId].cost,
                  carsList[carId].characteristics,
                  carsList[carId].specification,
                  carsList[carId].linkVideo,
                  carsList[carId].linksImages,
                  carsList[carId].statusFavoriteCarsSButton,
                  carsList[carId].colorFavoriteCarsButton,
                  carsList[carId].statusCartCarsButton,
                  carsList[carId].colorCartCarsButton,
                  carsList[carId].isButtonDisabled,
                  carsList[carId].count
              ));
          carsList[carId].colorCartCarsButton = Colors.blueAccent;
          setState(() {
            carsList[carId].statusCartCarsButton = !carsList[carId].statusCartCarsButton;
            widget.update;
          });
        } else {
          cartCars.removeWhere((element) => element.name == carsList[carId].name);
          carsList[carId].colorCartCarsButton = Colors.black;
          setState(() {
            carsList[carId].statusCartCarsButton = !carsList[carId].statusCartCarsButton;
            widget.update;
            var counter = 0;
            while (counter < cartCars.length) {
              cartCars[counter].id = counter;
              counter++;
            }
          });
        }
      },
    );
  }
}
