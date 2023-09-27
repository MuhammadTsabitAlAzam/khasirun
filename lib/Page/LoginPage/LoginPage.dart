import 'package:flutter/material.dart';
import 'package:kasir/Component/Button/CommonElevatedButton.dart';
import 'package:kasir/Component/Button/CommonTextButton.dart';
import 'package:kasir/Component/TextField/EmailField.dart';
import 'package:kasir/Component/TextField/PasswordField.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Masuk",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 25,),
          MyCustomEmailField(controller: email),
          SizedBox(height: 15,),
          PasswordField(controller: password),
          SizedBox(height: 20,),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              child: Text("Masuk"),
              onPressed: () {},
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CommonTextButton(label: "Lupa Password ?", onPressed: () {}),
          ),
          SizedBox(height: 10,),
          Divider(),
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum Memiliki Akun ? "),
                    CommonTextButton(label: "Daftar", onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
