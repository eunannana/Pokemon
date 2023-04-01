import 'package:flutter/material.dart';
import 'package:pokemon/home_page.dart';
import 'package:pokemon/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible= false;
  String _errorMessage = '';

  // void _validateInputs() {
  //   if (_usernameController.text == "anns" && _passwordController.text == "123") {
  //     // Navigate to home page
  //     Navigator.pushNamed(context, "/home");
  //   } else {
  //     setState(() {
  //       _errorMessage = "Wrong name/password. Please try again.";
  //     });
  //   }
  // }
@override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/pokemon.png",
                height: 200.0,
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Let's get started!",
                style: TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 219, 168, 27), fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "There's No Sense In Going Out Of \n Your Way To Get Somebody To Like You",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 104, 102, 102)), textAlign: TextAlign.center),
              const SizedBox(height: 20.0),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue
                          )
                        ),
                        prefixIcon: Icon(Icons.person, color: Colors.blue),
                        labelText: "Enter your name",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your username";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue
                          )
                        ),
                        prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                        labelText: "Enter your name password",
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                      obscureText: !_passwordVisible,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    Text(
                      _errorMessage,
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          String username = _usernameController.text;
                          String password = _passwordController.text;
                          if (username == "Anns" && password == "Anns123") {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(name: username),));
                          } else {
                            setState(() {
                              _errorMessage =
                                  "Invalid name/password, please try again!";
                            });
                          }
                        }
                      },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 240, 193, 3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          minimumSize: const Size(double.infinity, 70),
                        ),
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 20  
                        ),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    const Text("Don't have an account?"),
    TextButton(
      onPressed: () {
        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
      },
      child: const Text("Sign up", style: TextStyle(
          color: Color.fromARGB(255, 230, 201, 18),
        ),),
    ),
  ],
),
            ],
          ),
        ),
      ),
    );
  }
}
