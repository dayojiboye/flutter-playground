import 'package:flutter/material.dart';

class HeaderWithBackground extends StatelessWidget {
  const HeaderWithBackground({super.key});

  @override
  Widget build(BuildContext context) {
    // double appBarHeight = AppBar().preferredSize.height * 4;

    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   toolbarHeight: appBarHeight,
      //   backgroundColor: Colors.transparent,
      //   flexibleSpace: Container(
      //     decoration: const BoxDecoration(
      //       image: DecorationImage(
      //         image: AssetImage("assets/images/night_sky.png"),
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //   ),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            // snap: true,
            // floating: true,
            floating: false,
            expandedHeight: 150,
            automaticallyImplyLeading: false,
            flexibleSpace: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/night_sky.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const FlexibleSpaceBar(
                  title: Text(
                    'App bar',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    width: 50,
                    height: 50,
                    child: const Placeholder(),
                  ),
                  title: Text(
                    'Place ${index + 1}',
                    style: const TextStyle(fontSize: 20),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
