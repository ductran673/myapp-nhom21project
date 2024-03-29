import 'package:flutter/material.dart';

class PageBanner extends StatelessWidget {
  final String title;
  final String image;
  const PageBanner({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(children: [
        Image(
          image: AssetImage(image),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
            top: 36,
            right: 10,
            child: IconButton(
                onPressed: null,
                icon: Icon(Icons.search, color: Colors.white),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(61, 88, 88, 88))))),
        Positioned(
            bottom: 6,
            left: 18,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Colors.black45,
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}