import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:i_am_steve_flutter/domain/util/consts.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';

extension GetString on BuildContext {
  String getString(
    final String Function(AppLocalizations) selection,
  ) => AppLocalizations
    .of(this)
    ?.let((strings) => selection.call(strings))
    ?? Consts.empty;
}