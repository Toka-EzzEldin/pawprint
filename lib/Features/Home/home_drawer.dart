import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PawPrint",
                  style: TextStyle(
                    color: Color(0xFFFF914D),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFFF914D),
                      radius: 32,

                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://lumiere-a.akamaihd.net/v1/images/p_20cs_freeguy_homeent_21930_49e74453.jpeg",
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: ListTile(
                        title: Text("Alex Miller"),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pet Enthusiast",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "Member since",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text("2003", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  splashColor: Colors.white30,
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  tileColor: Color(0xFFFF914D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "myadoptions");
                  },
                  splashColor: Color(0xFFFF914D),
                  leading: Icon(Icons.pets),
                  title: Text("My Adoptions"),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "settings");
                  },
                  splashColor: Color(0xFFFF914D),
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
