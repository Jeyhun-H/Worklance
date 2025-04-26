import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:worklance_app/app/app_view.dart';
import 'package:worklance_app/app/theme.dart';

void main() => runApp(LoginScreen());

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  int? _password;
  // ignore: prefer_typing_uninitialized_variables
  var _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'assets/images/Mobile-login.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 15),
              child: Row(
                children: [
                  Text(
                    'Login to ',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        fontFamily: 'Ubuntu'),
                  ),
                  Text(
                    'Worklance ',
                    style: TextStyle(
                        color: tdBLue,
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        fontFamily: 'Ubuntu'),
                  ),
                ],
              ),
            ),
            _formFields(),
            SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Get.offAll(AppView());
                  }
                  return;
                },
                child: Container(
                  width: 270,
                  height: 50,
                  decoration: BoxDecoration(
                      color: tdBLue, borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: tdBGColor,
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Or, sign in with...',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _socialcons(),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New to Worklance? ',
                      style: TextStyle(
                          color: tdBlack,
                          fontFamily: 'Ubuntu',
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                  Text(
                    'Register',
                    style: TextStyle(
                        color: tdBLue,
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Center _socialcons() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset('assets/images/google.png', height: 40),
          ),
          Container(
            decoration: BoxDecoration(
              color: tdBlack,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset('assets/images/facebook.png', height: 40),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: tdBGColor),
            child: Image.asset('assets/images/twitter.png', height: 40),
          ),
        ],
      ),
    );
  }

  Form _formFields() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w500,
                fontSize: 20),
            decoration: InputDecoration(
                errorStyle: TextStyle(fontFamily: 'Ubuntu'),
                labelStyle: TextStyle(fontFamily: 'Ubuntu'),
                hintStyle: TextStyle(color: tdBLue),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: tdBLue),
                    borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(
                  Icons.email,
                  size: 30,
                ),
                prefixIconColor: tdBlack,
                labelText: 'E-mail',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your e-mail';
              } else if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value)) {
                return 'Incorrect e-mail!';
              }
              return null;
            },
            onSaved: (value) => _email,
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
              autocorrect: true,
              maxLength: 8,
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              decoration: InputDecoration(
                  errorStyle: TextStyle(fontFamily: 'Ubuntu'),
                  helperStyle: TextStyle(color: tdBlack),
                  suffixIconColor: tdBlack,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                      icon: _isObscured
                          ? Icon(Iconsax.eye_slash)
                          : Icon(Iconsax.eye)),
                  labelStyle: TextStyle(fontFamily: 'Ubuntu'),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: tdBLue),
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(
                    Icons.key,
                    size: 30,
                  ),
                  prefixIconColor: tdBlack,
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value) {},
              obscureText: _isObscured,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your password';
                } else if (!RegExp(dotAll: true, '').hasMatch(value)) {}
                return null;
              },
              onSaved: (value) => _password),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 13, fontFamily: 'Ubuntu', color: tdBLue),
              ),
            ],
          )
        ],
      ),
    );
  }
}
