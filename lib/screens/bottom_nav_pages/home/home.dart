import 'package:bubbl/utilities/router.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../services/shared/page_service.dart';
import '../../../utilities/appcolors.dart';
import '../../../utilities/genaral.dart';
import '../../user_variants.dart/mentor_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double width = size.width;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: width,
                    height: 230,
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
                                  Icons.search,
                                  color: AppColor.white,
                                )),
                          ),
                        ),
                        PageService.textSpaceL,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Join Bubbl today",
                                  style: TextStyle(
                                      color: AppColor.white, fontSize: 18),
                                ),
                                PageService.textSpacexL,
                                PageService.textSpacexL,
                                Text(
                                  "Where your career path\nhave a new phase",
                                  style: TextStyle(
                                      color: AppColor.white, fontSize: 14),
                                ),
                              ],
                            ),
                            const FlutterLogo(
                              size: 80,
                            )
                          ],
                        )
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
                    child: ListView.builder(
                      itemCount: 13,
                      itemBuilder: (context, index) {

                      return GestureDetector(
                        onTap: () {
                          nextPage(context, page: const MentorDetailsScreen());
                        },
                        child: Center(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            constraints: const BoxConstraints(maxWidth: 400),
                            decoration: BoxDecoration(
                              color: AppColor.whiteSmokeColor2,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 150,
                                  child: Stack(
                                    children: [
                                      ClipPath(
                                        clipper: AvatarClipper(),
                                        child: Container(
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: AppColor.primaryColor,
                                            borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              topLeft: Radius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 11,
                                        top: 50,
                                        child: Row(
                                          children: [
                                            const CircleAvatar(
                                              radius: 50,
                                              backgroundImage: NetworkImage(
                                                  "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/22/22a4f44d8c8f1451f0eaa765e80b698bab8dd826_full.jpg"),
                                            ),
                                            const SizedBox(width: 20),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Max Weber",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Inter',
                                                    color: AppColor.white,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: 'Flutter Developer',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w700,
                                                              fontFamily: 'Inter',
                                                              color: AppColor.black))
                                                    ])),
                                                const SizedBox(height: 8),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Mentoring Style",
                                        style: TextStyle(
                                            color: AppColor.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const ReadMoreText(
                                        'I tailor mentoring to your unique learning needs, blending structured guidance with flexibility. Whether you prefer a curriculum, hands-on projects, or open discussions, I adapt to your style. Lets collaborate to explore concepts, tackle challenges, and build a roadmap for your tech industry growth, making your learning journey effective and enjoyable',
                                        trimLines: 3,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            height: 2),
                                        colorClickableText: Color(0xff006400),
                                        trimMode: TrimMode.Line,
                                        trimCollapsedText: 'read more',
                                        trimExpandedText: ' see less ',
                                      ),
                                    ],
                                  ),
                                ),
                                PageService.textSpacexxL,
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0, bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "6280",
                                            style: PageService.textEditStyle,
                                          ),
                                          Text(
                                            "Mentees",
                                            style: PageService.labelStyle,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 50,
                                        child: VerticalDivider(
                                          color: AppColor.black,
                                        ),
                                      ),

                                      Column(
                                        children: [
                                          Text(
                                            "1745",
                                            style: PageService.textEditStyle,
                                          ),
                                          Text(
                                            "Courses",
                                            style: PageService.labelStyle,
                                          )
                                        ],
                                      ),
                                       SizedBox(
                                        height: 50,
                                        child: VerticalDivider(
                                          color: AppColor.black,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "163",
                                            style: PageService.textEditStyle,
                                          ),
                                          Text(
                                            "Videos",
                                            style: PageService.labelStyle,

                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8)
                              ],
                            ),
                          ),
                        ),
                      );
                    },),
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
