import 'package:flutter/material.dart';
import 'package:moviez/home/components/movie-list.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Search Movies',
                  prefixIcon: Icon(Icons.search, size: 30),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 30),
              child: Row(
                children: const [
                  Text(
                    "Search Result",
                    style: TextStyle(
                        fontFamily: "OpenSans-Bold",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " (3)",
                    style: TextStyle(
                      fontFamily: "OpenSans-Bold",
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [...List.generate(3, (index) => MovieList())],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(220, 55),
                shadowColor: Colors.black,
                primary: Color.fromARGB(255, 13, 19, 83),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                textStyle:
                    const TextStyle(fontFamily: "OpenSans-Bold", fontSize: 20),
              ),
              child: Text("Suggest Movie", style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 147, 147, 147)
              ),),
            )
          ],
        ),
      ),
    );
  }
}
