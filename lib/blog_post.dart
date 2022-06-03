import 'package:intl/intl.dart';

class BlogPost{
  final String title;
  final DateTime publishedDate;
  final String data;
  String get date=>DateFormat('MMMM d y').format(publishedDate);
  BlogPost({required this.title,required this.data, required this.publishedDate});
}
