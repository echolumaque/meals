enum Filter {
  gluttenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

extension FilterExtension on Filter {
  String get title {
    switch (this) {
      case Filter.gluttenFree:
        return "Glutten-free";
      case Filter.lactoseFree:
        return "Lactose-free";
      case Filter.vegetarian:
        return "Vegetarian";
      case Filter.vegan:
        return "Vegan";
    }
  }

  String get description {
    switch (this) {
      case Filter.gluttenFree:
        return "Only include glutten-free meals";
      case Filter.lactoseFree:
        return "Only include lactose-free meals";
      case Filter.vegetarian:
        return "Only include vegetarian meals";
      case Filter.vegan:
        return "Only include  vegan meals";
    }
  }
}
