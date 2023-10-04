import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 370,
          width: 200,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(3),),
          ),
          child: Column(
            children: [
              smuctLogoImage(),
              const SizedBox(
                height: 15,
              ),
              blueBoxContainerForStudentAndImage(),
              const SizedBox(
                height: 16,
              ),
              columnForStudentsDetails(),
              const Divider(
                color: Colors.amber,
                thickness: 3,
              ),
              const Text(
                "Registrar",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding smuctLogoImage() {
    return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                'https://smuct.ac.bd/wp-content/uploads/2020/10/SMUCT-Logo-1-Converted.png',
                scale: 5,
              ),
            );
  }

  Padding columnForStudentsDetails() {
    return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mostafejur Rahman"),
                  Text(
                    "ID: 201071030",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  Text(
                    "REG.NO.: 200007397",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  Text("Dept Of Computer Science & Engineering (B.Sc. CSE)"),
                  Text(
                    "Blood Group: O+",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
  }

  Container blueBoxContainerForStudentAndImage() {
    return Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "STUDENT",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 3),
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.amber,
                      child: CircleAvatar(

                        radius: 45,

                        foregroundImage: NetworkImage('https://media.licdn.com/dms/image/D4D03AQHVbWMQXuE1KQ/profile-displayphoto-shrink_200_200/0/1690303199734?e=1701302400&v=beta&t=k91tXTfg6O7VhB7nSymLnBUODnJ_YWZjJWIB50C2ZL8'),
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}
