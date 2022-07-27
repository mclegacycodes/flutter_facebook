import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:todolist/config/palette.dart';

class ProfileAvatar extends StatelessWidget {
  final bool isActive;
  final String imgUrl;
  const ProfileAvatar({Key? key, this.isActive = false, required this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundImage: CachedNetworkImageProvider(imgUrl),
        ),
        isActive
            ? const Positioned(
                bottom: 0,
                right: 0,
                child: Icon(
                  Icons.circle,
                  size: 15,
                  color: Palette.online,
                ))
            : const SizedBox.shrink()
      ],
    );
  }
}
