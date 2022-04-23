import 'package:flutter/material.dart';
import 'package:moviez/search/search-screen.dart';

import 'card-movie.dart';
import 'movie-list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.only(left: 25),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 15, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Moviez",
                          style: TextStyle(
                            fontFamily: "OpenSans-Bold",
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Watch much easier",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "OpenSans-Bold",
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: (){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchScreen()),
                        );
                      }, icon: const Icon(Icons.search, size: 30,))
                    
                    // ...List.generate(
                    //     1,
                    //     (index) => const Icon(
                    //           Icons.search,
                    //           size: 40,
                    //         ))
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [...List.generate(3, (index) => const CardMovie())],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "From Disney",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      fontFamily: "OpenSans-bold",
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                   ...List.generate(5, (index) => MovieList())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
