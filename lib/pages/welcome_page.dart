import 'package:flutter/material.dart';
import 'package:temnikova_cars/pages/home.dart';
import 'package:temnikova_cars/pages/registration_page.dart';
import '../components/example_text_field.dart';
import '../model/list_login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage ({super.key});
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.indigo[300],
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: listLogin.length,
                itemBuilder: (BuildContext context, int index){
                  return ExampleTextField(
                    information: listLogin[index],
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 8),
              child: ElevatedButton(
                child: const Text(
                  'Войти',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage())
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                child: const Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Registration())
                  );
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          'Авторизация',
          style: TextStyle(
            fontSize: 45,
          ),
        ),
      ),
    );
  }
}