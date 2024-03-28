import 'package:flutter/material.dart';
import 'package:pizza_app/ui/screen/home/widgets/my_search_bar.dart';
import 'package:pizza_app/ui/screen/home/widgets/pizza_list.dart';
import 'package:provider/provider.dart';

import '../../../provider/app_state.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Provider.of<AppStateProvider>(context, listen: false).loadPizzas();
  }

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
