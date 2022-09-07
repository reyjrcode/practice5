import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  final String? tittle;
  final String? subtittle;
  final color;

  const MyCards(
      {Key? key,
      required this.tittle,
      required this.subtittle,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 200,
        height: 150,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Material(
                    color: Colors.blue, // button color
                    child: InkWell(
                      splashColor:
                          Color.fromARGB(255, 87, 104, 68), // inkwell color
                      child: const SizedBox(
                          width: 56,
                          height: 56,
                          child: Icon(
                            Icons.format_paint,
                            color: Colors.white,
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(tittle!,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  "             " + subtittle!,
                  style: TextStyle(fontSize: 17, color: Colors.white),
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                ClipOval(
                  child: Material(
                    color: Colors.transparent, // button color
                    child: InkWell(
                      splashColor: Colors.lightGreen, // inkwell color
                      child: const SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
