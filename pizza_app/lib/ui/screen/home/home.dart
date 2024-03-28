import 'package:flutter/material.dart';

import 'package:pizza_app/ui/screen/home/widgets/my_search_bar.dart';
import 'package:pizza_app/ui/screen/home/widgets/pizza_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: true,
              stretch: true,
              expandedHeight: size.height * 0.25,
              backgroundColor: Theme.of(context).primaryColor,
              flexibleSpace: FlexibleSpaceBar(
                title: const SearchBar(),
                centerTitle: true,
                background: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ];
        },
        body: const PizzaList(),
      ),
    );
  }
}