import 'package:flutter/material.dart';
import 'package:temnikova_cars/model/cars.dart';
import '../model/history_pay_list.dart';
import '../pages/history_pay.dart';

class ExampleAlertDialog extends StatefulWidget {
  final int carId;
  const ExampleAlertDialog({super.key, required this.carId});
  @override
  _ExampleAlertDialog createState() => _ExampleAlertDialog();
}
class _ExampleAlertDialog extends State<ExampleAlertDialog> {
  @override

  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Подтверждение покупки',
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              carsList[widget.carId].linksImages[0],
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                carsList[widget.carId].name,
                style: const TextStyle(
                  fontSize: 21,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                carsList[widget.carId].complete,
                style: const TextStyle(
                  fontSize: 21,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: carsList[widget.carId].isButtonDisabled ? null : () {
                      if (carsList[widget.carId].count < 1) {}
                      else if (carsList[widget.carId].count == 2) {
                        carsList[widget.carId].isButtonDisabled = true;
                        setState(() {
                          carsList[widget.carId].count--;
                        });
                      }
                      else {
                        setState(() {
                          carsList[widget.carId].count--;
                        });
                      }
                    },
                    child: const Text(
                      '-',
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    carsList[widget.carId].count.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        carsList[widget.carId].count++;
                        carsList[widget.carId].isButtonDisabled = false;
                      });
                    },
                    child: const Text(
                      '+',
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                '${carsList[widget.carId].cost * carsList[widget.carId].count} рублей',
                style: const TextStyle(
                  fontSize: 21,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          child: const Text(
            'Закрыть',
            style: TextStyle(
              fontSize: 21,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          onPressed: () {
            var existingCar = historyPayCars.where((element) => element.name == carsList[widget.carId].name);
            if (existingCar.isNotEmpty) {
              historyPayCars[historyPayCars.firstWhere((element) => element.name == carsList[widget.carId].name).id].count =
                  historyPayCars[historyPayCars.firstWhere((element) => element.name == carsList[widget.carId].name).id].count +
                      carsList[widget.carId].count;
            }
            else {
              historyPayCars.add(
                  HistoryCars(historyPayCars.length,
                      carsList[widget.carId].name,
                      carsList[widget.carId].complete,
                      carsList[widget.carId].cost,
                      carsList[widget.carId].characteristics,
                      carsList[widget.carId].specification,
                      carsList[widget.carId].linkVideo,
                      carsList[widget.carId].linksImages,
                      carsList[widget.carId].statusFavoriteCarsSButton,
                      carsList[widget.carId].colorFavoriteCarsButton,
                      carsList[widget.carId].statusCartCarsButton,
                      carsList[widget.carId].colorCartCarsButton,
                      carsList[widget.carId].count,
                      carsList[widget.carId].isButtonDisabled
                  )
              );
            }
            carsList[widget.carId].isButtonDisabled = true;
            carsList[widget.carId].count = 1;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                const HistoryPay(
                ),
              ),
            );
          },
          child: const Text(
            'Купить',
            style: TextStyle(
              fontSize: 21,
            ),
          ),
        ),
      ],
    );
  }
}
