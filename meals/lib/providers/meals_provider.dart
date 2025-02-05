import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/data/dummy_data.dart';

// Provider: Used for static objeects
final mealsProvider = Provider((ref) {
  return dummyMeals;
});
