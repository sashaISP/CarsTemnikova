import 'package:flutter/material.dart';
import 'package:temnikova_cars/model/cart.dart';
import 'package:temnikova_cars/pages/card_car.dart';
import '../model/cars.dart';

class ExampleGridViewCart extends StatefulWidget {
  final int carId;
  final VoidCallback updateSum;
  const ExampleGridViewCart(
      {super.key, required this.carId, required this.updateSum});
  @override
  State<ExampleGridViewCart> createState() => _ExampleGridViewCart(carId);
}
class _ExampleGridViewCart extends State<ExampleGridViewCart> {
  final int carId;
  _ExampleGridViewCart(this.carId);
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
            child:Column(
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
                      cartCars[carId].complete,
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
                      flex: 2,
                      child: ElevatedButton(
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
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        cartCars[carId].count.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            cartCars[carId].count++;
                            widget.updateSum();
                            cartCars[carId].isButtonDisabled = false;
                          });
                        },
                        child: const Text(
                          '+',
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '${cartCars[carId].cost * cartCars[carId].count} рублей',
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
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
                      'Удалить',
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
