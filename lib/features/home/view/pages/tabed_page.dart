import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TabedPage extends StatefulWidget {
  const TabedPage({super.key, required this.title, required this.shell});
  final String title;
  final StatefulNavigationShell shell;

  @override
  State<TabedPage> createState() => _TabedPageState();
}

class _TabedPageState extends State<TabedPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(
        length: 3, initialIndex: widget.shell.currentIndex, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            bottom: TabBar(
              onTap: widget.shell.goBranch,
              controller: tabController,
              tabs: const [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: widget.shell),
    );
  }
}
