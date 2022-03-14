import 'package:flutter/material.dart';
import 'package:nft_marketplace/constant/colors.dart';
import 'package:nft_marketplace/details/widgets/art_info.dart';
import 'package:nft_marketplace/details/widgets/bidder.list.dart';
import 'package:nft_marketplace/details/widgets/buy_now.dart';
import 'package:nft_marketplace/details/widgets/detail_banner.dart';
import 'package:nft_marketplace/models/art.dart';
import 'package:nft_marketplace/profile/widgets/tab_sliver_delegate.dart';

class DetailsPage extends StatelessWidget {
  final Art art;
  DetailsPage({required this.art});
  final tabs = ['Info', 'Bidder', 'History'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        initialIndex: 1,
          length: 3,
          child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScroll) {
                return [
                  SliverAppBar(
                    elevation: 0.0,
                    expandedHeight: 330,
                    backgroundColor: btnColor,
                    leading: _buildIcon(
                        context, Icons.arrow_back_ios_new_outlined,
                        isBack: true),
                    actions: [_buildIcon(context, Icons.more_horiz_outlined)],
                    flexibleSpace: FlexibleSpaceBar(
                      background: DeatailBanner(art: art),
                    ),
                    pinned: true,
                  ),
                  SliverToBoxAdapter(
                    child: ArtInfo(art: art),
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
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(left: 5, right: 40),
                    )),
                    pinned: true,
                  )
                ];
              },
              body: TabBarView(children: [
                ListView(
                  children: [],
                ),
                BidderList(scrollKey: 'birds', bidderList: art.birds),
                BidderList(scrollKey: 'birds', bidderList: art.history)
              ]))),
              floatingActionButton:const BuyButton(),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildIcon(BuildContext context, IconData icon, {isBack = false}) {
    return IconButton(
        onPressed: isBack
            ? () {
                Navigator.of(context).pop();
              }
            : null,
        icon: Icon(
          icon,
          color: Colors.black,
          size: 20,
        ));
  }
}
