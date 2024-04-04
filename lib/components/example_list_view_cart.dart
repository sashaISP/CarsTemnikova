import 'package:flutter/material.dart';
import 'package:temnikova_cars/model/cart.dart';
import 'package:temnikova_cars/pages/card_car.dart';
import '../model/cars.dart';

class ExampleListViewCart extends StatefulWidget {
  final int carId;
  final VoidCallback updateSum;
  const ExampleListViewCart(
      {super.key, required this.carId, required this.updateSum});
  @override
  State<ExampleListViewCart> createState() => _ExampleListViewCart(carId);
}
class _ExampleListViewCart extends State<ExampleListViewCart> {
  final int carId;
  _ExampleListViewCart(this.carId);
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
                  id: carsList.firstWhere((element) => element.name == cartCars[carId].name).id,
                  update: widget.updateSum,
                ),
              ),
            );
          },
          child: Container(
            color: Colors.black12,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: 150,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Image.network(
                            cartCars[carId].linksImages[0],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              cartCars[carId].name,
                              style: const TextStyle(
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: 150,
                    child: Column(
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 160,
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                    onPressed: cartCars[carId].isButtonDisabled ? null : () {
                                      if (cartCars[carId].count < 1) {}
                                      else if (cartCars[carId].count == 2) {
                                        cartCars[carId].isButtonDisabled = true;
                                        setState(() {
                                          cartCars[carId].count--;
                                          widget.updateSum();
                                        });
                                      }
                                      else {
                                        setState(() {
                                          cartCars[carId].count--;
                                          widget.updateSum();
                                        });
                                      }
                                    },
                                    child: const Text(
                                      '-',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    cartCars[carId].count.toString(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        cartCars[carId].count++;
                                        widget.updateSum();
                                        cartCars[carId].isButtonDisabled = false;
                                      });
                                    },
                                    child: const Text(
                                      '+',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              '${cartCars[carId].cost * cartCars[carId].count} рублей',
                              style: const TextStyle(
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        var id = carsList.firstWhere((element) => element.name == cartCars[carId].name).id;
                        carsList[id].statusCartCarsButton = false;
                        carsList[id].colorCartCarsButton = Colors.black;
                        cartCars.removeWhere((element) => element.id == carId);
                        widget.updateSum();
                        var counter = 0;
                        while (counter < cartCars.length) {
                          cartCars[counter].id = counter;
                          counter++;
                        }
                      });
                    },
                    child: const Text(
                      'X',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                      ),
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
