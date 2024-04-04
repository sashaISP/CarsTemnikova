import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_elevated_button_buy.dart';
import 'package:temnikova_cars/model/cars.dart';
import 'package:temnikova_cars/model/favorite.dart';
import 'package:temnikova_cars/pages/card_car.dart';
import 'icon_button_cart.dart';

class ExampleGridViewFavorite extends StatefulWidget {
  final int carId;
  final VoidCallback update;
  const ExampleGridViewFavorite({super.key, required this.carId, required this.update});
  @override
  State<ExampleGridViewFavorite> createState() => _ExampleGridViewFavorite(carId);
}
class _ExampleGridViewFavorite extends State<ExampleGridViewFavorite> {
  final int carId;
  _ExampleGridViewFavorite(this.carId);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Card(
        color: Colors.white70,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CardCar(
                  id: carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id,
                  update: widget.update,
                ),
              ),
            );
          },
          child: Container(
            color: Colors.black12,
            child:Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Image.network(
                    favoriteCars[carId].linksImages[0],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      favoriteCars[carId].name,
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      favoriteCars[carId].complete,
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '${favoriteCars[carId].cost} рублей',
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: IconButton(
                          tooltip: 'Избранное',
                          icon: const Icon(Icons.favorite),
                          selectedIcon: const Icon(Icons.favorite),
                          isSelected: carsList[carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id].statusFavoriteCarsSButton,
                          color: carsList[carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id].colorFavoriteCarsButton,
                          onPressed: () {
                            setState(() {
                              var id = carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id;
                              carsList[id].statusFavoriteCarsSButton = false;
                              carsList[id].colorFavoriteCarsButton = Colors.black;
                              favoriteCars.removeWhere((element) => element.id == carId);
                              widget.update();
                              var counter = 0;
                              while (counter < favoriteCars.length) {
                                favoriteCars[counter].id = counter;
                                counter++;
                              }
                            });
                          }
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: ExampleElevatedButtonBuy(
                        carId: carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id,
                      ),
                    ),
                    Expanded(
                      child: IconButtonCart(
                        carId: carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id,
                        update: widget.update,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
