import 'package:equatable/equatable.dart';

class Comic extends Equatable {

  const Comic( this.number, this.title, this.date);

  final int number;
  final String title;
  final String date;

  @override
  List<Object> get props => [number, title, date];
}