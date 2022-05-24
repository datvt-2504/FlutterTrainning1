import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:suntrainning1/common/logo_login.dart';
import 'package:suntrainning1/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          alignment: Alignment.center,
          height: 60,
          color: const Color(0xFFD42053),
          child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                      text: "DON'T HAVE ACCOUNT ? ",
                      style: TextStyle(color: Color(0xFFFF8F50), fontSize: 14)),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpScreen()),
                      );
                    },
                    text: "SIGN UP",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                 )
                ],
              )),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFF774E), Color(0xFFFE3370)]),
          ),
          constraints: const BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.only(top: 40)),
                LogoText(),
                const Padding(padding: EdgeInsets.only(bottom: 20)),
                const Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w300,
                    fontFamily: "RubikRegular",
                    color: Colors.white,
                  ),
                ),
                _inputField(),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Theme(
                          data: Theme.of(context).copyWith(
                            unselectedWidgetColor: Colors.white,
                          ),
                          child: Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.orange,
                            visualDensity: const VisualDensity(horizontal: -4),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            value: _isSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                _isSelected = value!;
                              });
                            },
                          )),
                      const Text(
                        "Remember Password",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                _signInButton(),
                _loginWithFaceBookTwitter(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "FORGOT PASSWORD",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontFamily: "RubikRegular"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _inputField() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: TextFormField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              style: const TextStyle(color: Colors.white, fontSize: 22),
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(-5, 0, 0, 5),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF4B2AF))),
                  hintText: "Enter Email",
                  hintStyle: TextStyle(color: Color(0xFFF4B2AF), fontSize: 16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 35, 35, 0),
            child: TextFormField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              style: const TextStyle(color: Colors.white, fontSize: 22),
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(-5, 0, 0, 5),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF4B2AF))),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Color(0xFFF4B2AF), fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _signInButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: Colors.white,
          minimumSize: const Size.fromHeight(60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: GradientText(
          "GET STARTED",
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "RubikRegular"),
          colors: const [Color(0xFFFE3370), Color(0xFFFF774E)],
          gradientType: GradientType.values[0],
        ),
      ),
    );
  }

  Widget _loginWithFaceBookTwitter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Image.asset(
            'assets/images/ic_facebook.png',
            width: 40,
            height: 40,
          ),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), //<-- SEE HERE
            padding: const EdgeInsets.all(15),
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
        ElevatedButton(
          onPressed: () {},
          child: Image.asset(
            'assets/images/ic_twitter.png',
            width: 40,
            height: 40,
          ),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), //<-- SEE HERE
            padding: const EdgeInsets.all(15),
          ),
        ),
      ],
    );
  }
}
