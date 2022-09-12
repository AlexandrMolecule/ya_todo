import 'package:flutter/material.dart';
import 'package:y_todo/src/core/constants/app_icons.dart';
import 'package:y_todo/src/feature/tasks/domain/model/enum/importance_enum.dart';

class HighImportanceItem extends StatelessWidget {
  final Importance item;
  final double? selectedFontSize;
  const HighImportanceItem(
      {Key? key, required this.item, this.selectedFontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
              child: Icon(
                AppIcons.exclam,
                size: selectedFontSize == null ? 12 : 10,
                color: theme.colorScheme.onError,
              ),
              alignment: PlaceholderAlignment.middle),
          TextSpan(
              text: item.displayTitle(context),
              style: theme.textTheme.labelLarge?.copyWith(
                  height: 16 / (selectedFontSize ?? 16),
                  color: theme.colorScheme.onError,
                  fontSize: selectedFontSize ?? 16))
        ],
      ),
    );
  }
}
