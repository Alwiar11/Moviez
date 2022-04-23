import 'package:flutter/material.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 24,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              // Image radius
              child: Image.asset(
                'assets/images/img.png',
                fit: BoxFit.cover,
                width: 356,
                height: 200,
              ),
            ),
          ),
          Container(
            
            margin: const EdgeInsets.only(top: 29, bottom: 5),
            width: 356,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "John Wick 4",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ...List.generate(
                        3,
                        (index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            )),
                    ...List.generate(2, (index) => const Icon(Icons.star, color: Colors.grey, size: 20,)),
                  ],
                ),
                const Text(
                  "Action, Criminal",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
