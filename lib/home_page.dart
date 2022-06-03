// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_provider/bloc_post.dart';
import 'package:flutter_provider/page_details.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final posts = Provider.of<List<BlogPost>>(context);
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
              Center(child:SelectableText(
                'Hello, I\'m a Flutter developer',
                style:TextStyle(
                  fontSize: 27,color:Colors.black))),
              SizedBox( height:18,),
              SelectableText(
                'Blog',
                style:TextStyle(
                  fontSize: 35,fontWeight: FontWeight.bold,color:Colors.black)),
              SizedBox(height:5),
              for (var post in posts)
              BlogList(post: post,),
            ]
            ),
        ),
      ),
    );
  }
}
class BlogPost extends StatelessWidget {
  final BlogPost post;
  const BlogList({ Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => BlogPage(blogPost: post,)));
                },
                child:Text(post.title, style:TextStyle(
                   fontSize: 18,color:Colors.blue),
              )),
               SizedBox(height: 10,),
              SelectableText(
              post.date,
              style: Theme.of(context).textTheme.caption,),
              SizedBox(height: 10),  
      ],
    );
  }
}
