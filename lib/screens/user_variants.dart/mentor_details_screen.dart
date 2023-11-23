import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../services/shared/page_service.dart';
import '../../utilities/appcolors.dart';
import '../../utilities/category_box.dart';
import '../../utilities/data.dart';
import '../../utilities/feature_item.dart';
import '../../utilities/genaral.dart';

class MentorDetailsScreen extends StatefulWidget {
  const MentorDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MentorDetailsScreen> createState() => _MentorDetailsScreenState();
}

class _MentorDetailsScreenState extends State<MentorDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double width = size.width;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,

      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Stack(
                  children: [

                    Center(
                      child:SizedBox(
                        height: 130,
                        child: Stack(
                          children: [
                            ClipPath(
                              clipper: AvatarClipper(),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  color: AppColor.primaryColor,

                                ),
                              ),
                            ),
                            Positioned(
                              left: 11,
                              top: 30,
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
                                                    color: AppColor.primaryColor))
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
                    ),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.all(13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mentoring Style",
                        style: PageService.headerStyle,
                      ),
                       const Text( 'I tailor mentoring to your unique learning needs, blending structured guidance with flexibility. Whether you prefer a curriculum, hands-on projects, or open discussions, I adapt to your style. Lets collaborate to explore concepts, tackle challenges, and build a roadmap for your tech industry growth, making your learning journey effective and enjoyable',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          height: 2),),
                      PageService.textSpacexL,
                      Text(
                        "Courses",
                        style: PageService.headerStyle,
                      ),

                      _buildFeatured(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  _buildFeatured() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 290,
        enlargeCenterPage: true,
        disableCenter: true,
        viewportFraction: .75,
      ),
      items: List.generate(
        features.length,
            (index) => FeatureItem(
          data: features[index],
        ),
      ),
    );
  }

}
