import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/model/comic.dart';
import 'package:i_am_steve_flutter/domain/util/extension/context.dart';
import 'package:i_am_steve_flutter/domain/util/unit.dart';
import 'package:i_am_steve_flutter/presentation/resource/styles.dart';
import 'package:i_am_steve_flutter/presentation/util/list_item.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sprintf/sprintf.dart';

class ListItem extends StatelessWidget {
  final String text;
  final PublishSubject<Unit> _tapSubject = PublishSubject<Unit>();

  ListItem({
    required final this.text,
  });

  @override
  Widget build(final BuildContext context) => Column(
    children: [
      SizedBox(
        width: double.infinity,
        child: Material(
          color: Styles.backgroundColor,
          child: InkWell(
            onTap: () => _tapSubject.add(Unit()),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
      Container(
        height: 1,
        width: double.infinity,
        color: Styles.darkerBackgroundColor
      )
    ],
  );

  Stream<Unit> taps() => _tapSubject;
}