import 'package:temnikova_cars/model/cart.dart';

int sumPriceCarsInCart() {
  int sum = 0;
  int counter = 0;
  while (counter < cartCars.length) {
    sum = sum + cartCars[counter].cost * cartCars[counter].count;
    counter++;
  }
  return sum;
}