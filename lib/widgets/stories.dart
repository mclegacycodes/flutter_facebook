import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/story_model.dart';
import '../models/user_model.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({Key? key, required this.currentUser, required this.stories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.purple,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          itemCount: stories.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: _StoryCard(isAddStory: true, currentUser: currentUser),
              );
            }
            final Story story = stories[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: _StoryCard(story: story),
            );
          }),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User? currentUser;
  final Story? story;
  const _StoryCard(
      {Key? key, this.currentUser, this.isAddStory = false, this.story})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: isAddStory ? currentUser!.imageUrl : story!.imageUrl,
          height: double.infinity,
          width: 110.0,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
