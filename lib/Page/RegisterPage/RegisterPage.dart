import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kasir/Component/Button/CommonTextButton.dart';
import 'package:kasir/Component/TextField/EmailField.dart';
import 'package:kasir/Component/TextField/PasswordField.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Buat Akun",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 25,),
          MyCustomEmailField(controller: email),
          SizedBox(height: 15,),
          PasswordField(controller: password),
          SizedBox(height: 15,),
          PasswordField(controller: confirm_password, label: 'Confirm Password',),
          SizedBox(height: 15,),
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Punya Kode Referal ? '),
                    CommonTextButton(label: 'Input Kode Referal', onPressed: (){})
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              child: Text("Buat Akun"),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Checkbox(
                value: agreeToTerms,
                onChanged: (value) {
                  setState(() {
                    // Perbarui status checkbox
                    agreeToTerms = value!;
                  });
                },
              ),
              Expanded(
                child: RichText(
                  maxLines: 2,
                  softWrap: true,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Saya setuju dengan ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'syarat dan kondisi',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Syarat dan kondisi diklik');
                          },
                      ),
                      TextSpan(
                        text: ' serta ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'kebijakan privasi',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Kebijakan privasi diklik');
                          },
                      ),
                      TextSpan(
                        text: ' khasirun ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Divider(),
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sudah Memiliki Akun ?"),
                    CommonTextButton(label: "Masuk", onPressed: () {}),
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
