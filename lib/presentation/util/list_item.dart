import 'package:flutter/material.dart';

abstract class ListItem {
  Widget toWidget({
    required final BuildContext context,
  });
}