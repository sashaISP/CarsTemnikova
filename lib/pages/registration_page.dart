import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temnikova_cars/pages/welcome_page.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../components/example_text_field.dart';
import '../model/list_sign_up.dart';
bool? checkedValue;
int? selectedGenderIndex = 0;

class Registration extends StatefulWidget {
  const Registration({super.key});
  @override
  State<Registration> createState() => _RegistrationState();
}
class _RegistrationState extends State<Registration> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          'Регистрация',
          style: TextStyle(
            fontSize: 45,
          ),
        ),
      ),
      body: Container(
        color: Colors.indigo[300],
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                margin: const EdgeInsets.only(bottom: 8),
                alignment: Alignment.center,
                child: ListView.builder(
                  itemCount: listSignUp.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExampleTextField(
                      information: listSignUp[index],
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: " Номер телефона",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: ToggleSwitch(
                  minWidth: 100.0,
                  initialLabelIndex: selectedGenderIndex,
                  cornerRadius: 18.0,
                  totalSwitches: 2,
                  labels: const ['Мужчина', 'Женщина'],
                  onToggle: (index) {
                    setState(() {
                      selectedGenderIndex = index;
                    },
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: CheckboxListTile(
                  title: const Text(
                    "Я согласен получать рекламную рассылку на электронную почту",
                  ),
                  value: checkedValue ?? false,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue;
                    },
                    );
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                child: const Text('Зарегистрироваться'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WelcomePage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}