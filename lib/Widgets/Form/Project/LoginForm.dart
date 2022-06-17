import 'package:flupro/Common/MyRoutes.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    "My uplifting playlist",
                    style: TextStyle(
                      fontSize: 40,
                      //letterSpacing: 10,
                      fontFamily: "Catalina",
                      color: Colors.blueGrey,
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Image(
                            image:
                          AssetImage("assets/images/music.gif"),
                            width: 300,
                            height: 300,
                            fit: BoxFit.cover,
                      ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: TextFormField(
                        controller: emailCtrl,
                        decoration:
                        decoration("e-mail", Icons.email_outlined),
                        validator: (value) {
                          String pattern =
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                          RegExp regExp = new RegExp(pattern);
                          if (value?.length == 0) {
                            return "E-mail is needed!";
                          } else if (!regExp.hasMatch(value.toString())) {
                            return "Incorrect e-mail!";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: TextFormField(
                        controller: passwordCtrl,
                        decoration:
                        decoration("password", Icons.lock_outline),
                        obscureText: true,
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: RichText(
                              text: TextSpan(
                                  text: "¿Forgot got it again? ",
                                  style:
                                  TextStyle(color: Colors.blueGrey),
                                  children: [
                                    TextSpan(
                                        text: "Get it back",
                                        style: TextStyle(
                                            color: Colors.pink[100],
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                            TextDecoration.underline)
                                    )
                                  ])
                          )
                      )
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              elevation: 4,
                              backgroundColor: Colors.pink[100],
                              primary: Colors.blueGrey,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30)
                                  )
                              )
                          ),
                          onPressed: () {
                            Navigator.popAndPushNamed(context, ROUTE_HOME);
                          },
                          child: Text("Go ahead!")
                      )
                  )
                ],
              )
          ),
        )
    );
  }

  decoration(String text, IconData icon) {
    return InputDecoration(
        labelText: text,
        prefixIcon: Icon(
          icon,
          color: Colors.pink[100],
        ),
        labelStyle: TextStyle(color: Colors.blueGrey),
        enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: Colors.pink.withOpacity(0.3), width: 1)),
        focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: Colors.pink.withOpacity(0.3), width: 1)));
  }

  save() {
    if (formKey.currentState!.validate()) {
      print("Name ${emailCtrl.text}");
      formKey.currentState?.reset();
    }
  }
}