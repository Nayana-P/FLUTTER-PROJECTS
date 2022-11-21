import 'package:flutter/material.dart';
import 'package:tabbar_application/core/app_constants.dart';

class RecentView extends StatefulWidget {
  const RecentView({super.key});

  @override
  State<RecentView> createState() => _RecentViewState();
}

class _RecentViewState extends State<RecentView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(AppConstants.contactName[index]),
          subtitle: Text(AppConstants.message[index]),
          leading: CircleAvatar(
            backgroundImage: AssetImage(AppConstants.imgList[index]),
          ),
          trailing: Text(AppConstants.time[index]),
        );
      },
      itemCount: 10,
    );
  }
}
