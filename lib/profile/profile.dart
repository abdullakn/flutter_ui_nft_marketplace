import 'package:flutter/material.dart';
import 'package:nft_marketplace/models/profile.dart';
import 'package:nft_marketplace/profile/widgets/custom_grid.dart';
import 'package:nft_marketplace/profile/widgets/person_info.dart';
import 'package:nft_marketplace/profile/widgets/tab_sliver_delegate.dart';

class ProfilePage extends StatelessWidget {
  final profile = Profile.genrateProfile();
  final tabs = ['Creation', 'Collectio'];
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppbar(),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverToBoxAdapter(
                  child: PersonelInfo(profile: profile),
                ),
                SliverPersistentHeader(
                  delegate: TabSliverDelegate(
                      tabBar: TabBar(
                    tabs: tabs
                        .map((e) => Text(
                              e,
                              style: TextStyle(fontSize: 18),
                            ))
                        .toList(),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                  )),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(children: [CustomGrid(scrollKey: 'creations', list: profile.creation),CustomGrid(scrollKey: 'collections', list: profile.collection)]),
          ),
        ));
  }

  AppBar _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Colors.black,
        size: 20,
      ),
      actions: [
        Icon(
          Icons.more_horiz_outlined,
          color: Colors.black,
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
