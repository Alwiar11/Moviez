import 'package:flutter/material.dart';

Container MovieList() {
  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20), // Image border
          child: SizedBox.fromSize(
            // Image radius
            child: Image.asset(
              'assets/images/img2.png',
              fit: BoxFit.cover,
              width: 100,
              height: 127,
            ),
          ),
        ),
        const SizedBox(
          height: 127,
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Mulan Session",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "OpenSans-Bold",
                  fontWeight: FontWeight.w700),
            ),
            Container(
              margin: const EdgeInsets.only(top: 4, bottom: 20),
              child: const Text(
                "History, War",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "OpenSans-Reguler",
                    color: Colors.grey),
              ),
            ),
            Row(
              children: [
                ...List.generate(
                    5,
                    (index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ))
              ],
            )
          ],
        )
      ],
    ),
  );
}
