import 'package:aquaculture/bottombar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          // key: _formKey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/aq.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Text("AQUACULTURE",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue[900],
                  )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  // controller: emailController,
                  // validator: validateEmail,
                  // keyboardType: TextInputType.phone,
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      // borderSide: BorderSide.none,
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    hintText: 'Enter your name',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  // controller: emailController,
                  // validator: validateEmail,
                  // keyboardType: TextInputType.phone,
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      // borderSide: BorderSide.none,
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    hintText: 'Enter Password',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Your onPressed logic here
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MyBottomNavigationBar()));
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: Colors.indigo[900],
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
