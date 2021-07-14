import 'dart:io';

import 'package:equatable/equatable.dart';

class ComicPanels extends Equatable {

  const ComicPanels(this.panel1, this.panel2, this.panel3, this.panel4);

  final File panel1;
  final File panel2;
  final File panel3;
  final File panel4;

  @override
  List<Object> get props => [panel1, panel2, panel3, panel4];
}