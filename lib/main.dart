import 'package:flutter/material.dart';
import 'package:to_do/services/class_file.dart';
import 'data.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Info> userdata = [
    Info(name: 'Fayiq', userId: 'Fayiq@123', gender: 'Male'),
    Info(name: 'shayiq', userId: 'Shayiq@123', gender: 'Male'),
    Info(name: 'Fariq', userId: 'Fariq@123', gender: 'Male'),
    Info(name: 'Fariha', userId: 'Fariha@123', gender: 'Female')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 168, 168),
      appBar: AppBar(
        title: const Text(
          'HOME PAGE',
        ),
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 53, 53, 53),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: userdata.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Data(info: userdata[index])));
                },
                title: Text(userdata[index].name),
                tileColor: const Color.fromARGB(255, 117, 117, 117),
              ),
            );
          }),
    );
  }
}
