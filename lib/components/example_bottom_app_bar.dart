import 'package:flutter/material.dart';
import 'package:temnikova_cars/pages/cart.dart';
import 'package:temnikova_cars/pages/favorite.dart';
import 'package:temnikova_cars/pages/home.dart';
import '../pages/personal_account.dart';

class ExampleBottomAppBar extends StatelessWidget {
  final bool home;
  final bool favoriteCars;
  final bool cartCars;
  final bool personalAccount;
  const ExampleBottomAppBar({Key? key,
    required this.home,
    required this.favoriteCars,
    required this.cartCars,
    required this.personalAccount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blueGrey,
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              tooltip: 'Главная',
              icon: const Icon(Icons.home_outlined),
              onPressed: () {
                if (home == true) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          Expanded(
            child: IconButton(
              tooltip: 'Избранное',
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                if (favoriteCars == true) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const FavoriteCars(
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          Expanded(
            child: IconButton(
              tooltip: 'Корзина',
              icon: const Icon(Icons.shopping_bag_outlined),
              onPressed: () {
                if (cartCars == true) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CartCars(
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          Expanded(
            child: IconButton(
              tooltip: 'Личный кабинет',
              icon: const Icon(Icons.person_2),
              onPressed: () {
                if (personalAccount == true) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const PersonalAccount(
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}