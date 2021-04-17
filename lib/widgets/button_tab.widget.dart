import 'package:flutter/material.dart';

class ButtonTab extends StatelessWidget {
  final bool isSelected;
  final String text;

  const ButtonTab({this.isSelected, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: isSelected
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            )
          : null,
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        style: TextButton.styleFrom(
          primary: Colors.black,
        ),
      ),
    );
  }
}
