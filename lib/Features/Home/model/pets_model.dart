import 'package:flutter/material.dart';
import 'package:pawprint/Features/animal_details/animal_details.dart';

class PetModel {
  final String name;
  final String breed;
  final String age;
  final String price;
  final String image;
  final bool isFavorite;

  PetModel({
    required this.name,
    required this.breed,
    required this.age,
    required this.price,
    required this.image,
    this.isFavorite = false,
  });
}

final listOfPets = <PetModel>[
  PetModel(
    name: "Max",
    breed: "Golden Retriever",
    age: "3 mo",
    price: "\$150",
    image: "https://images.unsplash.com/photo-1552053831-71594a27632d",
  ),
  PetModel(
    name: "Luna",
    breed: "Persian",
    age: "1 yr",
    price: "\$75",
    image: "https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba",
  ),
  PetModel(
    name: "Charlie",
    breed: "Beagle Mix",
    age: "2 yrs",
    price: "\$100",
    image: "https://images.unsplash.com/photo-1537151625747-768eb6cf92b2",
  ),
  PetModel(
    name: "Daisy",
    breed: "Holland Lop",
    age: "6 mo",
    price: "\$40",
    image: "https://images.unsplash.com/photo-1585110396000-c9ffd4e4b308",
  ),
  PetModel(
    name: "Rocky",
    breed: "German Shepherd",
    age: "5 mo",
    price: "\$200",
    image: "https://images.unsplash.com/photo-1589941013453-ec89f33b5e95",
  ),
  PetModel(
    name: "Milo",
    breed: "Siamese",
    age: "4 mo",
    price: "\$85",
    image: "https://images.unsplash.com/photo-1513360371669-4adf3dd7dff8",
  ),
  PetModel(
    name: "Bella",
    breed: "Poodle",
    age: "1.5 yrs",
    price: "\$180",
    image: "https://images.unsplash.com/photo-1583511655857-d19b40a7a54e",
  ),
  PetModel(
    name: "Coco",
    breed: "French Bulldog",
    age: "8 mo",
    price: "\$220",
    image: "https://images.unsplash.com/photo-1583511655857-d19b40a7a54e",
  ),
  PetModel(
    name: "Oliver",
    breed: "British Shorthair",
    age: "2 yrs",
    price: "\$120",
    image: "https://images.unsplash.com/photo-1573865526739-10659fec78a5",
  ),
  PetModel(
    name: "Leo",
    breed: "Golden Retriever",
    age: "2 mo",
    price: "\$160",
    image: "https://images.unsplash.com/photo-1601758228041-f3b2795255f1",
  ),
];

class Pet extends StatelessWidget {
  const Pet({super.key, required this.petModel});
  final PetModel petModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePetsDetails(petModel: petModel),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                    child: Image.network(
                      petModel.image,
                      height: 140,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        petModel.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 18,
                        color: petModel.isFavorite ? Colors.red : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                petModel.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "${petModel.breed} • ${petModel.age}",
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF0ED),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  petModel.price,
                  style: const TextStyle(
                    color: Color(0xFFE07A5F),
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
