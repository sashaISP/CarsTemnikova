import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:temnikova_cars/components/example_elevated_button_buy.dart';
import 'package:temnikova_cars/components/example_single_child_scroll_view_specification.dart';
import 'package:temnikova_cars/model/cars.dart';
import 'package:temnikova_cars/model/video.dart';
import 'icon_button_cart.dart';
import 'icon_button_favorite.dart';

class ExampleSingleChildScrollViewCardCar extends StatefulWidget {
  final int idCar;
  final VoidCallback update;
  const ExampleSingleChildScrollViewCardCar({super.key, required this.idCar, required this.update});
  @override
  State<ExampleSingleChildScrollViewCardCar> createState() => _ExampleSingleChildScrollViewCardCar(idCar);
}
class _ExampleSingleChildScrollViewCardCar extends State<ExampleSingleChildScrollViewCardCar> {
  final int idCar;
  _ExampleSingleChildScrollViewCardCar(this.idCar);
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: <Widget>[
          FlutterCarousel(
            options: CarouselOptions(
              height: 300,
            ),
            items: [1, 2, 3].map((number) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.network(
                    carsList[idCar].linksImages[number],
                  );
                },
              );
            },
            ).toList(),
          ),
          Text(
            '${carsList[idCar].name} ${carsList[idCar].complete}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            '${carsList[idCar].cost} рублей',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 150,
            child: ExampleSingleChildScrollViewSpecification(
              id: idCar,
            ),
          ),
          Table(
            border: TableBorder.all(),
            children: <TableRow>[
              TableRow(
                children: <Widget>[
                  const Text(
                    'Объем',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    carsList[idCar].characteristics[0],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  const Text(
                    'Мощность',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    carsList[idCar].characteristics[1],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  const Text(
                    'Расход',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    carsList[idCar].characteristics[2],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  const Text(
                    'Тип топлива',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    carsList[idCar].characteristics[3],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  const Text(
                    'Трансмиссия',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    carsList[idCar].characteristics[4],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  const Text(
                    'Привод',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    carsList[idCar].characteristics[5],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  const Text(
                    'Кол-во мест',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    carsList[idCar].characteristics[6],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  const Text(
                    'Кол-во дверей',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    carsList[idCar].characteristics[7],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  const Text(
                    'Клиренс',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    carsList[idCar].characteristics[8],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  const Text(
                    'Объем багажника',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    carsList[idCar].characteristics[9],
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
          YoutubeMediaPlayer(
            id: idCar,
          ),
          Row(
            children: [
              Expanded(
                child: IconButtonFavorite(
                  carId: idCar,
                  update: widget.update,
                ),
              ),
              Expanded(
                flex: 5,
                child: ExampleElevatedButtonBuy(
                  carId: idCar,
                ),
              ),
              Expanded(
                child: IconButtonCart(
                  carId: idCar,
                  update: widget.update,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
