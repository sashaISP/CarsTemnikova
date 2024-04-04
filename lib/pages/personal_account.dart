import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_bottom_app_bar.dart';
import '../model/personal_data.dart';
import 'history_pay.dart';

class PersonalAccount extends StatefulWidget {
  const PersonalAccount({super.key});
  @override
  State<PersonalAccount> createState() => _PersonalAccount();
}
class _PersonalAccount extends State<PersonalAccount> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo[300],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                personalDataUser[0].photo,
              ),
              Text(
                'Фамилия: ${personalDataUser[0].lastName}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                'Имя: ${personalDataUser[0].firstName}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                'Отчество: ${personalDataUser[0].patronymic}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                'Электронная почта: ${personalDataUser[0].email}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                'Номер телефона: ${personalDataUser[0].phoneNumber}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              ElevatedButton(
                onPressed: () {
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
                  'История покупок',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          "Личный кабинет",
          style: TextStyle(
            fontSize: 39,
          ),
        ),
      ),
      bottomNavigationBar: const ExampleBottomAppBar(
        home: true,
        favoriteCars: true,
        cartCars: true,
        personalAccount: false,
      ),
    );
  }
}