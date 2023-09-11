import 'package:flutter/material.dart';

import '../widget/side_menu.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController emailphoneController =
        new TextEditingController();
    final TextEditingController passwordController =
        new TextEditingController();
    Color _backgroundColor = HexColor("#6495ED");
    Color _splashColor = HexColor("#7DF9FF");
    Color _textColor = HexColor("#6495ED");
    Color _bodyColor = HexColor("#28282B");

    final emailPhone = TextFormField(
      autofocus: false,
      obscureText: false,
      enableSuggestions: true,
      autocorrect: true,
      controller: emailphoneController,
      cursorColor: Colors.blueAccent,
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        //reg expression for email validation
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        RegExp regex = new RegExp(r'^.{11,}$');
        if (value.isEmpty) {
          return ("Phone Number can't be Empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid phone number (Min. 11 Character)");
        }
        return null;
      },
      onSaved: (value) {
        //new
        emailphoneController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Enter username, email or phone number",
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: _bodyColor,
          hintStyle: TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  width: 2, style: BorderStyle.solid, color: Colors.grey)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(width: 0, style: BorderStyle.solid))),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      enableSuggestions: false,
      autocorrect: false,
      controller: passwordController,
      cursorColor: Colors.blue,
      obscureText: true,
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password (Min. 6 Character)");
        }
        return null;
      },
      onSaved: (value) {
        //new
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Enter Password",
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: _bodyColor,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  width: 2, style: BorderStyle.solid, color: Colors.grey)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(width: 0, style: BorderStyle.solid))),
    );

    //login field
    final loginButon = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return _splashColor;
              }
              return _backgroundColor;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)))),
      ),
    );

    final googleSignIn = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () async {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return _splashColor;
              }
              return Colors.red;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)))),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/google.png",
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 10,
              ),
              const Text(
                "Login With Google",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
    final facebookSignIn = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () async {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return _splashColor;
              }
              return Colors.blue;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)))),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/facebook.png",
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 10,
              ),
              const Text(
                "Login With Facebook",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );

    final phoneSign = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () async {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return _splashColor;
              }
              return Colors.green;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)))),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/phone.png",
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 10,
              ),
              const Text(
                "Login With Phone",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
    bool isChecked = false;

    return Scaffold(
        backgroundColor: _bodyColor,
        drawer: NavBar(),
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: _textColor,
          ),
          backgroundColor: _bodyColor,
          title: Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 15,
                right: 15,
              ),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                key: _formKey,
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Username/Email/Phone Number",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  emailPhone,
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  passwordField,
                  SizedBox(
                    height: 10,
                  ),
                  loginButon,
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (newValue) {},
                        activeColor: Colors
                            .grey, // Sets the color when the checkbox is checked
                        checkColor:
                            Colors.white, // Sets the color of the checkmark
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Remember Me",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                                color: _textColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  phoneSign,
                  googleSignIn,
                  facebookSignIn,
                  Row(
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ],
              ))),
        ));
  }
}
