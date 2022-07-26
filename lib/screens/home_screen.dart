import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:todolist/config/palette.dart';
import 'package:todolist/data/data.dart';

import '../models/models.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Facebook',
            style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
          floating: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(MdiIcons.facebookMessenger),
              iconSize: 30.0,
              color: Colors.black,
            )
          ],
        ),
        SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser)),
        SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(child: Rooms(onlineUsers: onlineUsers))),
        SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
                child: Stories(
              currentUser: currentUser,
              stories: stories,
            ))),
        SliverList(
            delegate: SliverChildBuilderDelegate(childCount: posts.length,
                (context, index) {
          final Post post = posts[index];
          return PostContainer(post: post);
        }))
      ],
    ));
  }
}
