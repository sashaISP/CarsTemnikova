import 'package:flutter/material.dart';
import 'package:temnikova_cars/pages/card_car.dart';
import '../model/cars.dart';
import '../model/history_pay_list.dart';

class ExampleGridViewHistoryPay extends StatefulWidget {
  final int carId;
  final VoidCallback update;
  const ExampleGridViewHistoryPay({super.key, required this.carId, required this.update});
  @override
  State<ExampleGridViewHistoryPay> createState() => _ExampleGridViewHistoryPay(carId);
}
class _ExampleGridViewHistoryPay extends State<ExampleGridViewHistoryPay> {
  final int carId;
  _ExampleGridViewHistoryPay(this.carId);
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
                  id: carsList.firstWhere((element) => element.name == historyPayCars[carId].name).id,
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
                    historyPayCars[carId].images[0],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      historyPayCars[carId].name,
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
                    child:  Text(
                      historyPayCars[carId].equipment,
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
                      'В количестве ${historyPayCars[carId].count} штук',
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child:  Text(
                      '${historyPayCars[carId].price * historyPayCars[carId].count} рублей',
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
