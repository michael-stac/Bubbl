import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../services/shared/page_service.dart';
import '../../../utilities/appcolors.dart';
import '../../../utilities/genaral.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double width = size.width;
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: width,
                    height: 250,
                    padding: const EdgeInsets.fromLTRB(30, 50, 20, 20),
                    color: AppColor.primaryColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                                onTap: () {
                                },
                                child: Icon(
                                  Icons.edit,
                                  color: AppColor.white,
                                )),
                          ),
                        ),

                        const Center(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/22/22a4f44d8c8f1451f0eaa765e80b698bab8dd826_full.jpg"),
                          ),
                        ),
                        PageService.textSpaceL,
                        Center(
                          child: Text(
                            "Max Weber",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Inter',
                              color: AppColor.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: AppColor.primaryColor,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Card(
                          margin:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                          color: Colors.white70,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:  ListTile(
                            leading: Icon(
                              MdiIcons.security,
                              color: AppColor.primaryColor,
                            ),
                            title:  Text(
                              'Privacy',
                              style: PageService.labelStyle,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white70,
                          margin:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:  ListTile(
                            leading: Icon(
                              MdiIcons.history,
                              color: AppColor.primaryColor,
                            ),
                            title: Text(
                              'Purchase History',
                              style: PageService.labelStyle,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white70,
                          margin:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:  ListTile(
                            leading:
                             Icon(Icons.help_outline, color: AppColor.primaryColor),
                            title: Text(
                              'Help & Support',
                              style: PageService.labelStyle,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white70,
                          margin:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:  ListTile(
                            leading: Icon(
                              Icons.privacy_tip_sharp,
                              color: AppColor.primaryColor,
                            ),
                            title: Text(
                              'Settings',
                              style:  PageService.labelStyle,
                            ),
                            trailing: const Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ),
                        Card(
                          color: Colors.white70,
                          margin:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:  ListTile(
                            leading: Icon(
                              Icons.add_reaction_sharp,
                              color: AppColor.primaryColor,
                            ),
                            title: Text(
                              'Invite a Friend',
                              style: PageService.labelStyle,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white70,
                          margin:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            leading: Icon(
                              Icons.logout,
                              color: AppColor.primaryColor,
                            ),
                            title: Text(
                              'Logout',
                              style: PageService.labelStyle,
                            ),
                            trailing: const Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
