import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pawprint/Features/Home/model/pets_model.dart';

class MyAdoptionsPage extends StatelessWidget {
  const MyAdoptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Adoptions",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(0xff9b4500),
          ),
        ),
      ),
      body: ListView(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              mainAxisExtent: 270,
            ),
            itemCount: listOfPets.length,
            itemBuilder: (context, index) => Pet(petModel: listOfPets[index]),
          ),
        ],
      ),
    );
  }
}
