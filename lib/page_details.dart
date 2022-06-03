// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_provider/bloc_post.dart';

class BlogPage extends StatelessWidget {
  final BlogPost blogPost;
  const BlogPage({ Key? key, required this.blocPost }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 612,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width:double.infinity),
              Center(child: CircleAvatar(
                backgroundImage:NetworkImage('https://docs.flutter.dev/assets/images/docs/catalog-widget-placeholder.png'),
                radius:60)),
              SizedBox(height:18),
              Center(
                child: SelectableText(
                  'Flutter',
                  style:TextStyle(
                    fontSize: 45,fontWeight: FontWeight.w800,color:Colors.black)),
              ),
              SizedBox( height:18 ),
              SelectableText(blogPost.title,
              style:Theme.of(context).textTheme.headline2),
              SelectableText(
              blogPost.date,
              style: Theme.of(context).textTheme.caption,),
              SizedBox(height: 18),  
              SelectableText(
              blogPost.data,
              ),
              ],
    ))));
  }
}
