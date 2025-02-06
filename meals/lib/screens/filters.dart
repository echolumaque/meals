import 'package:flutter/material.dart';
import 'package:meals/widgets/filter_tile.dart';
import '../enums/filter.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
      ),
      body: Column(
        children: [
          FilterTile(filterToUse: Filter.gluttenFree),
          FilterTile(filterToUse: Filter.lactoseFree),
          FilterTile(filterToUse: Filter.vegetarian),
          FilterTile(filterToUse: Filter.vegan),
        ],
      ),
    );
  }
}
