import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Air Terjun Ngelirip',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('asset/air.jpg'),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                  'Air Terjun Nglirip',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontFamily: 'Staatliches'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: const <Widget>[
                          Icon(Icons.calendar_today),
                          Text('Buka Setiap Hari'),
                          SizedBox(height: 8.0),
                        ],
                      ),
                      Column(children: const <Widget>[
                        Icon(Icons.access_time),
                        Text('08:00 - 16:00'),
                        SizedBox(height: 8.0),
                      ]),
                      Column(children: const <Widget>[
                        Icon(Icons.monetization_on),
                        Text('Free'),
                        SizedBox(height: 8.0)
                      ])
                    ]),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Air Terjun Nglirip merupakan salah satu destinasi wisata andalan Kabupaten Tuban, Jawa Timur. Dengan suasana pepohonan yang masih rindang, disini kamu bisa menikmati keindahan air terjun dan sejuknya udara disekitar.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('asset/air1.jpg'),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('asset/air2.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('asset/air3.jpg'),
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
