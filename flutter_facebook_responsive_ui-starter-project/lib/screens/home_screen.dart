import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/data/data.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'facebook', 
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                letterSpacing: -1.2,
                fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: false, 
              floating: true,
              actions: [
                CircleButton(
                  icon: Icons.search,
                  iconSize: 30.0,
                  onPressed: () => print('Search'),
                ),
                CircleButton(
                  icon: MdiIcons.facebookMessenger,
                  iconSize: 30.0,
                  onPressed: () => print('Messenger'),
                )
              ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
            
          )
        ],
      ),
    );
  }
}