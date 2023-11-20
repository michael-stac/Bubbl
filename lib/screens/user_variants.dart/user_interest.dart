import 'package:bubbl/services/shared/page_service.dart';
import 'package:flutter/material.dart';

import '../../utilities/appcolors.dart';
import '../../utilities/custom_button.dart';
import '../../utilities/tech_start.dart';


class UserInterestScreen extends StatefulWidget {
  @override
  _UserInterestScreenState createState() => _UserInterestScreenState();
}

class _UserInterestScreenState extends State<UserInterestScreen> {
  List<String> selectedTechStack = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select your tech interests',
                      style: PageService.bigHeaderStyle,
                    ),
                    PageService.textSpaceL,
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.primaryColor, width: 1)

                      ),
                      child: Text(
                        ' ${selectedTechStack.join(', ')}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    PageService.textSpaceL,
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: techStackList
                          .map(
                            (tech) => FilterChip(
                          backgroundColor: AppColor.primaryColor,
                          label: Text(tech, style: PageService.whitelabelStyle,),
                          selected: selectedTechStack.contains(tech),
                          onSelected: (bool selected) {
                            setState(() {
                              if (selected) {
                                selectedTechStack.add(tech);
                              } else {
                                selectedTechStack.remove(tech);
                              }
                            });
                          },
                        ),
                      )
                          .toList(),
                    ),
                    PageService.textSpacexL,
                    customButton(context,
                        onTap: () {
                        },
                        text: 'Proceed',
                        bgColor: AppColor.primaryColor),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


