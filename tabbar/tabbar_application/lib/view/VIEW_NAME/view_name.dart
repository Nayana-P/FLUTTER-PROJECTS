import 'package:flutter/material.dart';
import 'package:tabbar_application/core/app_colors.dart';
import 'package:tabbar_application/core/app_constants.dart';
import 'package:tabbar_application/view/VIEW_NAME/widget/contact_items.dart';
import 'package:tabbar_application/view/VIEW_NAME/widget/tabbar_widget.dart';

class TabbarScreen extends StatefulWidget {
   const TabbarScreen({super.key});

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen>  with SingleTickerProviderStateMixin{

  List<String> cname = ["Mom","Rommates","Kevin Kim","Sunday Crew","Abuela","Russell Andrews","Chloe Bower","Roxane Clediere"];
  List<String> msg = ["Mom sent 3 photos","You: Let's meet at home ...","Nice to meet you at Elen...","You changed Kendras nick","ok","what chapter do we have to","You:did i leave my umbrella","hi"];
  List<String> msgtime = ["10:38 PM","10:27 PM","10:20 PM","10:00 PM","8:30 PM","8:00 PM","Monday","Monday"];
  List imgList = [
    "assets/images/BB.PNG",
    "assets/images/a.jpg",
    "assets/images/ab.jpg",
    "assets/images/c.jpg",
    "assets/images/d.jpg",
    "assets/images/BB.PNG",
    "assets/images/a.jpg",
    "assets/images/a.jpg",
    ];

  late TabController _tabController;
  final PageController _pageController = PageController();
  final List<Tab> topTabs = <Tab>[
    const Tab(icon: TabbarWidget(iconname: Icons.access_time)),
    const Tab(icon: TabbarWidget(iconname: Icons.phone)),
    const Tab(icon: TabbarWidget(iconname: Icons.people_alt)),
    const Tab(icon: TabbarWidget(iconname: Icons.list)),
    const Tab(icon: TabbarWidget(iconname: Icons.account_circle)),
  ];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }
@override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 45,
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
      children: [
        ListView.builder(
          itemBuilder: (context, index) {
            return  ContactWidget(
              name: cname[index], 
              message: msg[index], 
              contactimage: imgList[index], 
              time: msgtime[index],
            );
          },
          itemCount: 8,
        ),
        Container(
          width: screenwidth,
          height: screenheight,
          color: Colors.amber,
        ),
         Container(
          width: screenwidth,
          height: screenheight,
          color: Colors.blue,
        ),
         Container(
          width: screenwidth,
          height: screenheight,
          color: Colors.black,
        ),
         Container(
          width: screenwidth,
          height: screenheight,
          color: Colors.red,
        ),
      ],
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}

