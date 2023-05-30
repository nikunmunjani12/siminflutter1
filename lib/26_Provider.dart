import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Provider1 extends StatefulWidget {
  const Provider1({Key? key}) : super(key: key);

  @override
  State<Provider1> createState() => _Provider1State();
}

class _Provider1State extends State<Provider1> {
  TextEditingController agecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChangeNotifierProvider<ElegibilityChek>(
      create: (context) => ElegibilityChek(),
      child: Consumer<ElegibilityChek>(
        builder: (context, provider, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (provider.isEligible == null
                      ? Colors.blue
                      : provider.isEligible!
                          ? Colors.deepOrange
                          : Colors.blueGrey),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: agecontroller,
                  decoration: InputDecoration(
                    labelText: 'Enter your age',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  provider.checkEligible(
                    int.parse(agecontroller.text.trim()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text('Chek Eligibility'),
                  ),
                  color: Colors.greenAccent,
                  height: 50,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(provider.eligibilityMessage),
            ],
          );
        },
      ),
    ));
  }
}

class ElegibilityChek extends ChangeNotifier {
  String _eligibleMessage = '';
  bool? isEligible;
  void checkEligible(int age) {
    if (age >= 18) {
      eligibleforLince();
    } else {
      notEligibleForLicence();
    }
  }

  void eligibleforLince() {
    _eligibleMessage = 'Eligible for Licence';
    isEligible = true;
    notifyListeners();
  }

  void notEligibleForLicence() {
    _eligibleMessage = 'not eligiblefor Licence';
    isEligible = false;
    notifyListeners();
  }

  String get eligibilityMessage => _eligibleMessage;
  bool get isEligibility => isEligible!;
}
