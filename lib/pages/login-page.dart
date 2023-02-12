
import 'package:flutter/material.dart';
import 'package:ueableague/constants/constants.dart';
import 'package:ueableague/pages/league-information-page.dart';
import 'package:ueableague/widgets/custom-text-field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/pitch2.jpg"), fit: BoxFit.cover),
          color: tabColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            fractionWithSize: 0.04,
            hintText: "Enter User name",
            isObsecure: false,
            textController: username,
          ),
          CustomSizedBox(height: 30),
          CustomTextField(
            fractionWithSize: 0.04,
              hintText: "Enter password",
              isObsecure: true,
              textController: password),
          CustomSizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                color: buttonColor1,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdminPage()));
                },
                child: const Text(
                  "Signin",
                  style:
                      TextStyle(color: white, fontSize: 17, letterSpacing: 1.3),
                ),
              ),
              MaterialButton(
                color: buttonColor1,
                onPressed: ()async {
 
                },
                child: const Text(
                  "Signup",
                  style:
                      TextStyle(color: white, fontSize: 17, letterSpacing: 1.3),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
