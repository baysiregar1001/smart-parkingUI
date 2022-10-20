import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './Home.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Image.asset(
                    "assets/image/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Login to your account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  style: TextStyle(
                    fontSize: 12.0,
                    height: 0,
                  ),
                  decoration: InputDecoration(
                    hintText: "Your Email",
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  style: TextStyle(
                    fontSize: 12.0,
                    height: 0,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const Home();
                      }),
                    );
                  },
                  child: const Text(
                    'Login',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: Text(
                    'Or sign up using',
                    style: TextStyle(color: Color.fromARGB(255, 14, 107, 184)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                            const Size(150, 50),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          side: MaterialStateProperty.all(const BorderSide(
                              color: const Color.fromARGB(255, 25, 127, 210)))),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset('assets/icons/facebook.png'),
                          const Text(
                            ' Facebook',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(
                          const Size(150, 50),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Color.fromARGB(255, 183, 28, 16),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset('assets/icons/google.png'),
                          const Text(
                            ' Google',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                /*CheckboxListTile(
                  value: false,
                  onChanged: (value) {},
                  controlAffinity: ListTileControlAffinity.leading,
                  title: RichText(
                    text: const TextSpan(
                        text: 'Saya menyetujui ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              text: 'Syarat',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                              children: [
                                TextSpan(
                                    text: ',',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' ketentuan',
                                        style: TextStyle(
                                          color: Colors.blue,
                                        ),
                                      )
                                    ])
                              ])
                        ]),
                  )),*/
              ],
            )));
  }
}
