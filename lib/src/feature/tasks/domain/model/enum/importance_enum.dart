import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:y_todo/src/core/l10n/l10n.dart';

/// variants - low || basic || important
enum Importance {
  @JsonValue('basic')
  basic,
  @JsonValue('low')
  low,
  @JsonValue('important')
  important,
}

extension ImportanceExtension on Importance {
  String get name => describeEnum(this);

  String displayTitle(BuildContext context) {
    final l = AppLocalizations.of(context);
    switch (this) {
      case Importance.basic:
        return l?.basicImp ?? '';
      case Importance.low:
        return l?.lowImp ?? '';
      case Importance.important:
        return l?.highImp ?? '';
      default:
        return 'SelectedScheme Title is null';
    }
  }
}
