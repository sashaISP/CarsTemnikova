import 'package:flutter/material.dart';
import 'package:temnikova_cars/components/example_bottom_app_bar.dart';
import '../components/example_grid_view_history_pay.dart';
import '../model/history_pay_list.dart';

class HistoryPay extends StatefulWidget {
  const HistoryPay({super.key});
  @override
  State<HistoryPay> createState() => _HistoryPay();
}
class _HistoryPay extends State<HistoryPay> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: GridView.builder(
          padding: const EdgeInsets.all(5),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.55,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemCount: historyPayCars.length,
          itemBuilder: (BuildContext context, index) {
            return ExampleGridViewHistoryPay(
              carId: historyPayCars[index].id,
              update: update,
            );
          },
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          "История покупок",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      bottomNavigationBar: const ExampleBottomAppBar(
        home: true,
        favoriteCars: true,
        cartCars: true,
        personalAccount: true,
      ),
    );
  }
  void update() {
    setState(() {});
  }
}
