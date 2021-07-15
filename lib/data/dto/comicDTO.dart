import 'package:equatable/equatable.dart';

class ComicDTO extends Equatable {

  const ComicDTO(this.number, this.title, this.date);

  final int number;
  final String title;
  final String date;

  @override
  List<Object> get props => [number, title, date];
}