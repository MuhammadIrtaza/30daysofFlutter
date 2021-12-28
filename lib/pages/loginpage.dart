import 'package:day2/utils/routes.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset(
                "assets/images/w.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: "Username",
                        labelStyle: TextStyle(color: Colors.black),
                        labelText: "Enter Username",
                      ),
                      // ignore: non_constant_identifier_names
                      onChanged: (ValueKey) {
                        name = ValueKey;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      cursorColor: Colors.black,
                      obscureText: true,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: "Password",
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: "Enter Password"),
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changebutton = true;
                        });
                        await Future.delayed(
                          Duration(seconds: 1),
                        );
                        Navigator.pushNamed(context, MyRoutes.homepage);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 40,
                        width: changebutton ? 40 : 150,
                        alignment: Alignment.center,
                        child: changebutton
                            ? Icon(Icons.done)
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius:
                              BorderRadius.circular(changebutton ? 25 : 4),
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //       primary: Colors.yellowAccent,
                    //       minimumSize: Size(150, 30)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homepage);
                    //   },
                    //   child: Text(
                    //     "Login",
                    //     style: TextStyle(color: Colors.black),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
