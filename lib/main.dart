import 'package:flutter/material.dart';
import 'package:flutter_provider/bloc_post.dart';
import 'package:flutter_provider/home_page.dart';
import 'package:provider/provider.dart';

 var theme=ThemeData(
   primarySwatch:Colors.deepPurple,
   textTheme:TextTheme(
     headline1:TextStyle(
       fontSize:30,
       fontWeight: FontWeight.w800,
       color: Colors.black,
     ),
     headline2:TextStyle(
       fontSize:30,
       fontWeight: FontWeight.w700,
       color: Colors.black,
     ),
     bodyText2:TextStyle(fontSize:22,height: 1.4),
     caption:TextStyle(fontSize:15,height: 1.4),
   ),
 );

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<List<BlohPost>>(create: (_) => blogPost),
        ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme:theme,
            home: HomePage(),
          ),
    );
  }
}
 
final blogPost=[
  BlogPost(
    title: 'What is provider?', publishedDate: DateTime(2022,5,25),
    data:'A wrapper around Inherited Widget to make them easier to use and more resubale.',
  ),
  BlogPost(
    title: 'What is multi-provider?', publishedDate: DateTime(2022,5,26),
    data:'A provider that merges multiple providers into a single linears widget tree. It is used to improve readability and reduce boilerplate code of having to nest multiple layers of providers.',
  ),
];
