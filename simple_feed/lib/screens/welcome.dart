import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_feed/bloc/bloc/auth_bloc.dart';
import 'package:simple_feed/injectable.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>(),
      child: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _phoneTextController = TextEditingController();
  final _otpTextController = TextEditingController();
  AuthBloc _authBloc;
  @override
  Widget build(BuildContext context) {
    _authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, loginState) {
      if (loginState is UninitializedState) {
        _authBloc.add(AppStart());
        Center(
            child: CircularProgressIndicator(
          value: null,
          strokeWidth: 5.0,
        ));
      } else if (loginState is CodeSentState) {
        return _otpInput(context);
      } else if (loginState is UnAuthenticatedState) {
        return _numberInput(context);
      } else if (loginState is AuthenticatedState) {
        Scaffold.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Authenticated Successfully"), Icon(Icons.check)],
            ),
            backgroundColor: Theme.of(context).textTheme.button.color,
          ));
      }
    }, builder: (context, state) {
      return _numberInput(context);
    });
  }

  Widget _numberInput(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      body: Center(
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
                padding:
                    EdgeInsets.symmetric(horizontal: data.size.width * 0.1),
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
                    _sendCode(_phoneTextController.text);
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
      ),
    );
  }

  _sendCode(String phoneNumber) async {
    this._authBloc.add(SendCode(phoneNumber: phoneNumber));
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 9)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  Widget _otpInput(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      body: Center(
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
                                text: '+251' +
                                    _phoneTextController.text.toString(),
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
                padding:
                    EdgeInsets.symmetric(horizontal: data.size.width * 0.1),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: (value) {
                      return validateNumber(value);
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
      ),
    );
  }

  String validateNumber(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 6)
      return 'OTP Number must be of 6 digit';
    else
      return null;
  }
}
