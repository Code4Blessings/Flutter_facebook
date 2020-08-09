import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/user_model.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    @required this.currentUser
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0, 
                backgroundColor: Colors.grey[200],
                backgroundImage: CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  //Need to specify how big to make this text field otherwise the decoration will not render. To do this, wrap the text field in an Expanded widget.
                  decoration: InputDecoration.collapsed(
                    hintText: "What's on your mind?"),
              ),
              ),
            ],
          ),
          Divider(height: 10.0, thickness: 0.5),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed: () => print('Live'),
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ), 
                  label: Text('Live')
                ),
                VerticalDivider(width: 8.0),
                FlatButton.icon(
                  onPressed: () => print('Photo'),
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ), 
                  label: Text('Photo')
                ),
                VerticalDivider(width: 8.0),
                FlatButton.icon(
                  onPressed: () => print('Room'),
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ), 
                  label: Text('Room')
                ),
                VerticalDivider(width: 8.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
