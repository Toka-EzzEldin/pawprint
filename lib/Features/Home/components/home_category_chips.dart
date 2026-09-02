import 'package:flutter/material.dart';

final listOfCategoryName = <String>[
  "All Pets",
  "Dogs",
  "Cats",
  "Rabbits",
  "Birds",
  "Mouses",
  "Fish",
];

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key});

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: listOfCategoryName.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return ChoiseChipCategory(
            chipName: listOfCategoryName[i],
            isSelected:
                i == selectedIndex,
            onSelected: (value) {
              setState(() {
                selectedIndex = i;
              });
            },
          );
        },
      ),
    );
  }
}

class ChoiseChipCategory extends StatelessWidget {
  const ChoiseChipCategory({
    super.key,
    required this.chipName,
    this.isSelected = false,
    required this.onSelected,
  });

  final String chipName;
  final bool isSelected;
  final ValueChanged<bool> onSelected; 

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: isSelected,
      onSelected: onSelected, 
      showCheckmark: false,
      selectedColor: const Color(0xFFF28F61),
      backgroundColor: const Color(0xFFFDF4EF),
      label: Text(chipName),
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : const Color(0xFF7A6A60),
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide.none,
      ),
    );
  }
}
