import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/custom_button_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/my_main_title.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20),
          ),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "What are\nyou looking for?",
              style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),
            ),
            Gap(AppLayout.getHeight(20)),
            FittedBox(
              child: Container(
                padding: const EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: const Color(0xFFf4f6fd),
                ),
                child: Row(
                  children: [
                    Container(
                      // Airline Tickets
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.white,
                      ),
                      child: const Center(child: Text("Airline Tickets")),
                    ),
                    Container(
                      // Hotels
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.transparent,
                      ),
                      child: const Center(child: Text("Hotels")),
                    ),
                  ],
                ),
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(AppLayout.getHeight(15)),
            const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
            Gap(AppLayout.getHeight(25)),
            const AppButtonCustom(text: "Find Tickets"),
            Gap(AppLayout.getHeight(40)),
            const MyMainTitle(title: "Upcoming flights", actionText: "View All"),
            Gap(AppLayout.getHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(400),
                  width: size.width * 0.42,
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(15)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3))
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/sit.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Text(
                        "20% discount on the early booking of this flight. Dont miss this chance",
                        style: Styles.headLineStyle2.copyWith(fontSize: AppLayout.getWidth(20)),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                            color: const Color(0xff3abbbb),
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                "Take the survey about our services and get a discount",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white, fontSize: AppLayout.getWidth(18), fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(width: 18, color: Color(0xff189999)),
                                color: Colors.transparent),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(190),
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xffec6545),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Take Love",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Gap(AppLayout.getHeight(10)),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "😍",
                                  style: TextStyle(fontSize: 25),
                                ),
                                TextSpan(
                                  text: "🥰",
                                  style: TextStyle(fontSize: 40),
                                ),
                                TextSpan(
                                  text: "😘",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
