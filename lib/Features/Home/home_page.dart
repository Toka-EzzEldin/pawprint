import 'package:flutter/material.dart';
import 'package:pawprint/Features/Home/components/home_category_chips.dart';
import 'package:pawprint/Features/Home/home_drawer.dart';
import 'package:pawprint/Features/Home/model/pets_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),

      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Color(0xff9b4500),
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        title: Text("PawPrint"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            const HomeCategory(),
            const SizedBox(height: 20),
            const Text(
              "Find a friend",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                mainAxisExtent: 270,
              ),
              itemCount: listOfPets.length,
              itemBuilder: (context, index) => Pet(petModel: listOfPets[index]),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
