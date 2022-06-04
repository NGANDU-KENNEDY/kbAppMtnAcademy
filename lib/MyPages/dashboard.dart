import 'package:flutter/material.dart';
import 'package:my_app/MyPages/Login.dart';
import 'package:my_app/MyPages/edit_register.dart';
import 'package:my_app/main.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'D A S H B O A R D ',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color.fromARGB(255, 77, 5, 5), Colors.red])),
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              offset: Offset(6, 2),
                              blurRadius: 8.0,
                              spreadRadius: 5.0,
                            ),
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              offset: Offset(-6, -2),
                              blurRadius: 6.0,
                              spreadRadius: 3.0,
                            ),
                          ]),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 77, 5, 5),
                                Color.fromARGB(255, 6, 8, 100)
                              ])),
                          child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                'WE TRUST OURSELF ENOUGH TO ALWAYS DELIVER '
                                'A SERVICE BEYOND YOUR EXPECTATIONS.',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                      //edit profil
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          height: 200,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: OutlinedButton.icon(
                              icon: const Text(
                                'SIGN UP',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              label: const Icon(Icons.app_registration),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Register()))))),
                ),
                Center(
                  child: Padding(
                      //Gallery
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          height: 200,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: OutlinedButton.icon(
                              icon: const Text(
                                'GALLERY',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                              label: const Icon(Icons.photo),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Gallery()))))),
                ),
                Center(
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          height: 200,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)),
                          child: OutlinedButton.icon(
                              icon: const Text(
                                'HOME',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              label: const Icon(Icons.app_registration),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Home()))))),
                ),
                //register
                Center(
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          height: 200,
                          width: 500,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 48, 255, 7),
                              borderRadius: BorderRadius.circular(10)),
                          child: OutlinedButton.icon(
                              icon: const Text(
                                'EDIT',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              label: const Icon(
                                Icons.edit_sharp,
                              ),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const EditProfil()))))),
                ),
                Center(
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          height: 200,
                          width: 500,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 146, 71, 161)),
                          child: OutlinedButton.icon(
                              icon: const Text(
                                'LOGIN',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              label: const Icon(Icons.login_rounded),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Login()))))),
                ),
              ])),
        ));
  }
}
