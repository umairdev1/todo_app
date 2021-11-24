import 'package:flutter/material.dart';

class ListButtonContainer extends StatelessWidget {
  const ListButtonContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          LitsButton(
            isActive: true,
            press: () {},
            title: "Notes",
          ),
          LitsButton(
            press: () {},
            title: "To Do",
          ),
          LitsButton(
            press: () {},
            title: "Blog",
          ),
        ],
      ),
    );
  }
}

class LitsButton extends StatelessWidget {
  LitsButton({
    Key? key,
    this.isActive = false,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: press,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 19,
              color: isActive == true ? Colors.blue[400] : Colors.black54,
              fontWeight:
                  isActive == true ? FontWeight.bold : FontWeight.normal),
        ));
  }
}
