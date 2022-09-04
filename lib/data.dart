import 'package:flutter/material.dart';
import 'package:to_do/services/class_file.dart';

class Data extends StatelessWidget {
  final Info info;
  const Data({required this.info});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text('User Detail Screen'),
        backgroundColor: const Color.fromARGB(255, 53, 53, 53),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 169, 168, 168),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 560.0),
          child: Container(
            color: const Color.fromARGB(255, 117, 117, 117),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Name : ${info.name}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    'Gender : ${info.gender}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Text(
                    'UserId : ${info.userId}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
