import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Dropdown extends StatefulWidget {


  @override
  State<Dropdown> createState() => _Dropdown();
}

class _Dropdown extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("DropDown Flutter"),
      ),
      body: Center(
        child: Column(
          children: [
            Image(
                image:AssetImage("images/citadel-of-herat-herat.jpg",

                ),width: double.infinity, ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                customButton: const Icon(
                  Icons.list,
                  size: 46,
                  color: Colors.red,
                ),
                items: [
                  ...MenuItems.firstItems.map(
                        (item) => DropdownMenuItem<MenuItem>(
                      value: item,
                      child: MenuItems.buildItem(item),
                    ),
                  ),
                  const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
                  ...MenuItems.secondItems.map(
                        (item) => DropdownMenuItem<MenuItem>(
                      value: item,
                      child: MenuItems.buildItem(item),
                    ),
                  ),
                ],
                onChanged: (value) {
                  MenuItems.onChanged(context, value! as MenuItem);
                },
                dropdownStyleData: DropdownStyleData(
                  width: 160,
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.redAccent,
                  ),
                  offset: const Offset(0, 8),
                ),
                menuItemStyleData: MenuItemStyleData(
                  customHeights: [
                    ...List<double>.filled(MenuItems.firstItems.length, 48),
                    8,
                    ...List<double>.filled(MenuItems.secondItems.length, 48),
                  ],
                  padding: const EdgeInsets.only(left: 16, right: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  const MenuItem({
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;
}

abstract class MenuItems {
  static const List<MenuItem> firstItems = [home, share, settings];
  static const List<MenuItem> secondItems = [logout];

  static const home = MenuItem(text: 'Download', icon: Icons.download);
  static const share = MenuItem(text: 'Share', icon: Icons.share);
  static const settings = MenuItem(text: 'Settings', icon: Icons.settings);
  static const logout = MenuItem(text: 'Cancel', icon: Icons.cancel);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.white, size: 22),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            item.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  static void onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
      //Do something
        break;
      case MenuItems.settings:
      //Do something
        break;
      case MenuItems.share:
      //Do something
        break;
      case MenuItems.logout:
      //Do something
        break;
    }
  }
}
