import 'package:flutter/material.dart';
import 'package:temnikova_cars/model/favorite.dart';
import '../model/cars.dart';

class IconButtonFavorite extends StatefulWidget {
  final int carId;
  final VoidCallback update;
  const IconButtonFavorite({super.key, required this.carId, required this.update});
  @override
  State<IconButtonFavorite> createState() => _IconButtonFavorite(carId);
}
class _IconButtonFavorite extends State<IconButtonFavorite> {
  final int carId;
  _IconButtonFavorite(this.carId);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        tooltip: 'Избранное',
        icon: const Icon(Icons.favorite),
        selectedIcon: const Icon(Icons.favorite),
        isSelected: carsList[carId].statusFavoriteCarsSButton,
        color: carsList[carId].colorFavoriteCarsButton,
        onPressed: () {
          if (carsList[carId].statusFavoriteCarsSButton == false) {
            favoriteCars.add(
                CarsFavorite(favoriteCars.length,
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
            carsList[carId].colorFavoriteCarsButton = Colors.red;
            setState(() {
              carsList[carId].statusFavoriteCarsSButton =
              !carsList[carId].statusFavoriteCarsSButton;
              widget.update;
            });
          } else {
            favoriteCars.removeWhere((element) => element.name == carsList[carId].name);
            carsList[carId].colorFavoriteCarsButton = Colors.black;
            setState(() {
              carsList[carId].statusFavoriteCarsSButton =
              !carsList[carId].statusFavoriteCarsSButton;
              widget.update;
              var counter = 0;
              while (counter < favoriteCars.length) {
                favoriteCars[counter].id = counter;
                counter++;
              }
            });
          }
        }
    );
  }
}
