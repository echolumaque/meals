import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_provider.dart';

import '../enums/filter.dart';

class FilterTile extends ConsumerWidget {
  const FilterTile({
    super.key,
    required this.filterToUse,
  });

  final Filter filterToUse;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return SwitchListTile(
      value: activeFilters[filterToUse]!,
      onChanged: (isChecked) {
        ref.read(filtersProvider.notifier).setFilter(filterToUse, isChecked);
      },
      title: Text(
        filterToUse.title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
      subtitle: Text(
        filterToUse.description,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: EdgeInsets.only(left: 34, right: 22),
    );
  }
}
