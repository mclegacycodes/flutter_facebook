import 'package:flutter/material.dart';

import '../models/user_model.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Column(
        children: [
          Row(
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage:
                    NetworkImage('https://unsplash.com/photos/CqqblJOH41o'),
              )
            ],
          )
        ],
      ),
    );
  }
}
