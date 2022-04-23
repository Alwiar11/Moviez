import 'package:flutter/material.dart';

import 'components/body_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({ Key? key, product }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: BodyScreen(),
    );
  }
}