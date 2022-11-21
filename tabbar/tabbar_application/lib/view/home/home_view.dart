import 'package:flutter/material.dart';
import 'package:tabbar_application/core/app_colors.dart';
import 'package:tabbar_application/core/app_constants.dart';
import 'package:tabbar_application/view/home/pages/account_view.dart';
import 'package:tabbar_application/view/home/pages/contact_view.dart';
import 'package:tabbar_application/view/home/pages/history_view.dart';
import 'package:tabbar_application/view/home/pages/menu_view.dart';
import 'package:tabbar_application/view/home/pages/recent_view.dart';
import 'package:tabbar_application/view/home/widget/tabbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin{  
  late TabController _tabController;
  final PageController _pageController = PageController();
  final List<Tab> topTabs = <Tab>[
    const Tab(icon: TabbarWidget(iconname: Icons.access_time)),
    const Tab(icon: TabbarWidget(iconname: Icons.phone)),
    const Tab(icon: TabbarWidget(iconname: Icons.people_alt)),
    const Tab(icon: TabbarWidget(iconname: Icons.list)),
    const Tab(icon: TabbarWidget(iconname: Icons.account_circle)),
  ];
  final _screens = [
    const RecentView(),
    const HistoryView(),
    const ContactView(),
    const MenuView(),
    const AccountView(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: topTabs.length, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {  
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: screenheight * 0.059,
          decoration: const BoxDecoration(
            color: AppColors.whitecolor
          ),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
              hintText: AppConstants.search,
            ),
          ),
        ),
        bottom: TabBar(
          onTap: (value) {
            _pageController.jumpToPage(value);
          },
          controller: _tabController,
          tabs: topTabs,
        ),
      ),
      body: PageView(
        onPageChanged: (value) {
          _tabController.animateTo(value);
        },
        controller: _pageController,
        children: _screens
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}

