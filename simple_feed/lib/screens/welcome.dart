import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpInput(),
    );
  }
}

class NumberInput extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _phoneTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(padding: const EdgeInsets.only(top: 50)),
            Image.asset(
              "assets/images/welcome.png",
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to ",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Simple Feed',
                    style: Theme.of(context).textTheme.headline1,
                  )
                ],
              ),
            ),
            SizedBox(
              height: data.size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: data.size.width * 0.1),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  validator: (value) {
                    return validateMobile(value);
                  },
                  keyboardType: TextInputType.number,
                  controller: _phoneTextController,
                  decoration: InputDecoration(
                    hintText: "924334356",
                    prefixText: "+251",
                    prefixStyle: Theme.of(context).textTheme.headline4,
                    labelText: "PHONE NUMBER",
                    labelStyle: Theme.of(context).textTheme.headline2,
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: data.size.height * 0.05,
            ),
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              constraints: const BoxConstraints(maxWidth: 500),
              child: RaisedButton(
                onPressed: () {
                  _formKey.currentState.validate();
                },
                color: Color(0xFFE9446A),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                padding: EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: data.size.width * 0.35),
                child: Container(
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            // Divider(
            //   color: Colors.black,
            // )
          ],
        ),
      ),
    );
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 9)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }
}

class OtpInput extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _otpTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(padding: const EdgeInsets.only(top: 50)),
            Image.asset(
              "assets/images/verify.png",
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Verify your number',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: data.size.height * 0.02,
                  ),
                  RichText(
                    text: new TextSpan(
                        style: Theme.of(context).textTheme.headline2,
                        children: <TextSpan>[
                          new TextSpan(
                              text:
                                  'We have sent a 6 digit  verification code to your  number '),
                          new TextSpan(
                              text: '+251924334356.',
                              style: Theme.of(context).textTheme.headline4)
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: data.size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: data.size.width * 0.1),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  validator: (value) {
                    return validateMobile(value);
                  },
                  keyboardType: TextInputType.number,
                  controller: _otpTextController,
                  decoration: InputDecoration(
                    hintText: "924334356",
                    labelText: "VERIFICATION CODE",
                    labelStyle: Theme.of(context).textTheme.caption,
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: data.size.height * 0.05,
            ),
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              constraints: const BoxConstraints(maxWidth: 500),
              child: RaisedButton(
                onPressed: () {
                  _formKey.currentState.validate();
                },
                color: Color(0xFFE9446A),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                padding: EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: data.size.width * 0.35),
                child: Container(
                  child: Text(
                    "Verify",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            // Divider(
            //   color: Colors.black,
            // )
          ],
        ),
      ),
    );
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 6)
      return 'OTP Number must be of 6 digit';
    else
      return null;
  }
}
