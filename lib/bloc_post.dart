import 'package:intl/intl.dart';

class BlocPost{
  final String title;
  final DateTime publishedDate;
  final String data;
  String get date=>DateFormat('MMMM d y').format(publishedDate);
  BlocPost({required this.title,required this.data, required this.publishedDate});
}