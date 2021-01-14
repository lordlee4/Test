import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_feed/bloc/bloc/auth_bloc.dart';
import 'package:simple_feed/injectable.dart';
import 'package:simple_feed/screens/feedScreen.dart';
import 'package:simple_feed/screens/postScreen.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
        body: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  AuthBloc _authBloc;
  final _formKey = GlobalKey<FormState>();
  final _phoneTextController = TextEditingController();
  final _otpTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);

    final data = MediaQuery.of(context);
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      if (state is FailedToSendCodeState || state is OtpExceptionState) {
        String message;
        if (state is FailedToSendCodeState) {
          message = state.message;
        } else if (state is OtpExceptionState) {
          message = state.message;
        }
        Scaffold.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(message), Icon(Icons.error)],
              ),
              backgroundColor: Colors.red,
            ),
          );
      } else if (state is AuthenticatedState) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Feeds()));
      }
    }, builder: (context, state) {
      print(state);
      if (state is UninitializedState) {
        return Center(
            child: CircularProgressIndicator(
          value: null,
          strokeWidth: 5.0,
        ));
      } else if (state is CodeSentState || state is OtpExceptionState) {
        return _otpInput(context);
      } else if (state is UnAuthenticatedState ||
          state is FailedToSendCodeState) {
        return _numberInput(context);
      } else {
        return Center(
            child: CircularProgressIndicator(
          value: null,
          strokeWidth: 5.0,
        ));
      }
    });
  }

  Widget _numberInput(BuildContext context) {
    AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
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
                    if (_formKey.currentState.validate()) {
                      // _sendCode(_phoneTextController.text);
                      _authBloc.add(
                          SendCode(phoneNumber: _phoneTextController.text));
                    }
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
    AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 9)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  Widget _otpInput(BuildContext context) {
    AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    final data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            _authBloc.add(AppStart());
          },
        ),
      ),
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
                    if (_formKey.currentState.validate()) {
                      // _signInWithCode(_otpTextController.text);
                      _authBloc.add(
                          VerifyPhoneNumber(smsCode: _otpTextController.text));
                    }
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

  _signInWithCode(String smsCode) {
    AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    // now that the user has entered the sms code, its time to signIn the user with their phone number
    _authBloc.add(VerifyPhoneNumber(
        smsCode:
            smsCode)); // this event will either send back Authenticated or UnAuthenticated
  }

  String validateNumber(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 6)
      return 'OTP Number must be of 6 digit';
    else
      return null;
  }
}
