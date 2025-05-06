import 'package:flutter/material.dart';

class SwitchListTileItem extends StatelessWidget {
  const SwitchListTileItem({
    super.key,
    required this.checkParameter,
    required this.mainText,
    required this.subText,
    required this.onToggle,
  });

  final bool checkParameter;
  final String mainText;
  final String subText;
  final void Function(bool) onToggle;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: checkParameter,
      onChanged: onToggle,
      contentPadding: const EdgeInsets.only(left: 35, right: 35),
      title: Text(
        mainText,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      subtitle: Text(
        subText,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
    );
  }
}
