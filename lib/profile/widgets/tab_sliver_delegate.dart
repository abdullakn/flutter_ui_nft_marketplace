import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabSliverDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final bool space;
  TabSliverDelegate({required this.tabBar, this.space = false});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
        print("here");
        print(tabBar.preferredSize.height);
    // TODO: implement build
    return Container(
      
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(
          color: Colors.grey,
          width: 1
        ))
      ),
      padding: EdgeInsets.only(
        left: 50,
        right: space?120:0
      ),
      child: tabBar,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
