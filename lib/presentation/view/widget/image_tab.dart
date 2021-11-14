import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/util/unit.dart';
import 'package:rxdart/rxdart.dart';

class ImageTab extends StatelessWidget {
  final Widget image;
  final PublishSubject<Unit> _tapSubject = PublishSubject<Unit>();

  ImageTab({
    required final this.image,
  }) : super();

  @override
  Widget build(final BuildContext context) => Expanded(
    child: InkWell(
      onTap: () => _tapSubject.add(Unit()),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: image,
      ),
    ),
  );

  Stream<Unit> taps() => _tapSubject;
}