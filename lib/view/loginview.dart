import 'package:ecommerceapp/customwidgets/custombutton.dart';
import 'package:ecommerceapp/customwidgets/customtextformfield.dart';
import 'package:ecommerceapp/customwidgets/validation.dart';
import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:ecommerceapp/view/dashboard/dashboard.dart';
import 'package:ecommerceapp/view/signupview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Ecocontroller>(
      builder: (context, auth, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Tele Care',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: auth.loginformkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const Align(
                  //     alignment: Alignment.center,
                  //     child: Image(image: AssetImage(Appicons.blood))),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Customtextform(
                      validator: (value) {
                        if (!isEmailValid(value!)) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                      widget: const Icon(Icons.email),
                      text: 'Email/PhoneNumber',
                      controller: auth.emailcontroller),
                  const SizedBox(
                    height: 20,
                  ),
                  Customtextform(
                      validator: (value) {
                        if (!isPasswordValid(value!)) {
                          return 'invalid password';
                        }
                        return null;
                      },
                      icon: IconButton(
                          onPressed: () {
                            auth.hidepasswords();
                          },
                          icon: auth.hidepassword
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility)),
                      widget: const Icon(Icons.lock),
                      obstruct: auth.hidepassword,
                      text: 'Password',
                      controller: auth.passwordcontroller),
                  const SizedBox(
                    height: 30,
                  ),
                  auth.loading == true
                      ? Center(child: const CircularProgressIndicator())
                      : CustomButton(
                          backgroundcolor: Colors.blue,
                          text: 'Login',
                          onpressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Dashboard()));
                            if (auth.loginformkey.currentState!.validate()) {
                              auth.signIn(context);
                            }
                          }),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
