// ignore_for_file: dead_code

import 'package:flutter/material.dart';

import 'MyPages/Login.dart';
import 'MyPages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      color: Color.fromARGB(255, 102, 7, 255),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'H O M E',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Builder(builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 24, 3, 99),
              Color.fromARGB(255, 59, 5, 17)
            ]),
          ),
          child: ListView(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      'lib/images/kblogo2.png',
                      matchTextDirection: true,
                      height: 250,
                      width: 300,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        height: 40,
                        width: 130,
                        child: TextButton.icon(
                            icon: const Text(
                              'LAUNCH',
                            ),
                            label: const Icon(Icons.start_sharp),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const Login()))))),
              ],
            )
          ]),
        );
      }),
    );
  }
}

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'G A L L E R Y',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('lib/images/viddiqposter.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 82, 190, 19),
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
                  child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'WE TRUST OURSELF ENOUGH TO ALWAYS DELIVER '
                        'A SERVICE BEYOND YOUR EXPECTATIONS.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ),
            ),
            //const SizedBox(height: 10),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      width: 350,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(230, 0, 0, 0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.asset(
                              'lib/images/kblogo2.png',
                              matchTextDirection: true,
                              height: 250,
                              width: 300,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                alignment: Alignment.center,
                                width: 70,
                                height: 50,
                                child: const Text(
                                  'LOGO',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )),
                          ),
                        ],
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      width: 350,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(230, 0, 0, 0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'lib/images/paytoll.png',
                              height: 250,
                              width: 300,
                              matchTextDirection: true,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.purpleAccent,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                alignment: Alignment.center,
                                width: 70,
                                height: 50,
                                child: const Text(
                                  'LOGO',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )),
                          ),
                        ],
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      width: 350,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(230, 0, 0, 0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.asset(
                              'lib/images/Mtnappremake.png',
                              matchTextDirection: true,
                              height: 250,
                              width: 300,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.yellowAccent,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                alignment: Alignment.center,
                                width: 70,
                                height: 50,
                                child: const Text(
                                  'LOGO',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )),
                          ),
                        ],
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      width: 350,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(230, 0, 0, 0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(400),
                            child: Image.asset(
                              'lib/images/viddiqposter.png',
                              matchTextDirection: true,
                              height: 250,
                              width: 300,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                alignment: Alignment.center,
                                width: 70,
                                height: 50,
                                child: const Text(
                                  'POSTER',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )),
                          ),
                        ],
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      width: 350,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(230, 0, 0, 0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(400),
                            child: Image.asset(
                              'lib/images/PartyPoster1KB.png',
                              matchTextDirection: true,
                              height: 250,
                              width: 300,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.lime,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                alignment: Alignment.center,
                                width: 110,
                                height: 50,
                                child: const Text(
                                  'EVENT POSTER',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )),
                          ),
                        ],
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      width: 350,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(230, 0, 0, 0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(400),
                            child: Image.asset(
                              'lib/images/kbBC.png',
                              matchTextDirection: true,
                              height: 250,
                              width: 300,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                alignment: Alignment.center,
                                width: 130,
                                height: 50,
                                child: const Text(
                                  'BUSINESS CARD',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )),
                          ),
                        ],
                      ),
                    )),
              ],
            )),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                      ),
                      child: OutlinedButton.icon(
                          icon: const Text(
                            'DASHBOARD',
                          ),
                          label: const Icon(Icons.dashboard_customize_rounded),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Dashboard())))),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                      ),
                      child: OutlinedButton.icon(
                          icon: const Text(
                            'HOME',
                          ),
                          label: const Icon(Icons.home_max_rounded),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Home())))),
                ),
              ],
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
