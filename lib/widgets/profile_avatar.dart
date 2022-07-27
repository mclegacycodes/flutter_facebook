import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:todolist/config/palette.dart';

class ProfileAvatar extends StatelessWidget {
  final bool isActive;
  final String imgUrl;
  final bool hasBorder;
  const ProfileAvatar(
      {Key? key,
      this.isActive = false,
      required this.imgUrl,
      this.hasBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Palette.facebookBlue,
          radius: 20.0,
          child: CircleAvatar(
            radius: hasBorder ? 18.0 : 20.0,
            backgroundImage: CachedNetworkImageProvider(imgUrl),
          ),
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
