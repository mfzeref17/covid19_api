import 'package:flutter/material.dart';

class StatisticsWidget extends StatelessWidget {
  StatisticsWidget({
    required this.value,
    required this.name,
    required this.image,
    required this.color,
  });

  String value;
  String name;
  String image;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffdddddd),
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text(name, style: TextStyle(color: color)),
              ],
            ),
            Image.network(image)
          ],
        ),
      ),
    );
  }
}
