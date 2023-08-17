import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:demo_project/constants.dart';
import 'package:demo_project/event_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          title:
              customText("Upcoming Events", kTextColor, 25.sp, FontWeight.w500),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.amp_stories_sharp, size: 30)),
          ],
        ),
        body: ListView.separated(
            itemCount: eventData.length,
            separatorBuilder: (context, index) {
              return SizedBox(height: 35.h);
            },
            itemBuilder: (context, index) {
              var item = eventData[index];
              return InkWell(
                onTap: () {
                  Get.to(() => const EventDetail());
                },
                child: Column(
                  children: [
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Container(
                          width: 85.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 12.h),
                          decoration: const BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.0),
                                bottomRight: Radius.circular(40.0),
                                topLeft: Radius.circular(0.0),
                                bottomLeft: Radius.circular(0.0)),
                          ),
                          child: customText(
                              item["month"]!, white, 18.sp, FontWeight.w500),
                        ),
                        const Spacer(),
                        customText(item["title"].toString(),
                            kTextColor.withOpacity(.5), 18.sp, FontWeight.w400),
                        SizedBox(width: 20.w),
                      ],
                    ),
                    SizedBox(height: 25.h),
                    ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 30.h);
                        },
                        itemCount: eventData[index]['monthData'].length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: ((context, i) {
                          var item2 = eventData[index]['monthData'][i];
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 15.h),
                                    customText(item2['date'].toString(),
                                        kTextColor, 18.sp, FontWeight.w800),
                                    SizedBox(height: 4.h),
                                    customText(
                                        item2['day'].toString(),
                                        kTextColor.withOpacity(.5),
                                        16.sp,
                                        FontWeight.w400),
                                  ],
                                ),
                                SizedBox(width: 20.w),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 120.w,
                                      height: 170.h,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        child: Image.asset(item2['image'],
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        customText(item2['title'], kTextColor,
                                            17.sp, FontWeight.w700),
                                        SizedBox(height: 12.h),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 120.w,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  customText(
                                                      "Beginning",
                                                      kTextColor
                                                          .withOpacity(.3),
                                                      15.sp,
                                                      FontWeight.w600),
                                                  SizedBox(height: 8.h),
                                                  customText(
                                                      "End",
                                                      kTextColor
                                                          .withOpacity(.3),
                                                      15.sp,
                                                      FontWeight.w600),
                                                  SizedBox(height: 8.h),
                                                  customText(
                                                      "Location",
                                                      kTextColor
                                                          .withOpacity(.3),
                                                      15.sp,
                                                      FontWeight.w600),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                customText(
                                                    item2['start'],
                                                    kTextColor,
                                                    15.sp,
                                                    FontWeight.w500),
                                                SizedBox(height: 8.h),
                                                customText(
                                                    item2['end'],
                                                    kTextColor,
                                                    15.sp,
                                                    FontWeight.w500),
                                                SizedBox(height: 8.h),
                                                customText(
                                                    item2['location'],
                                                    kTextColor,
                                                    15.sp,
                                                    FontWeight.w500),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        }))
                  ],
                ),
              );
            }));
  }

  final List<Map<String, dynamic>> eventData = [
    {
      "month": "SEP",
      "title": '2 Events',
      "monthData": [
        {
          "date": "7",
          "day": "Mon",
          "image": "assets/images/1.jpg",
          "title": "Air Legend",
          "start": "09:00 AM",
          "end": "06:00 PM",
          "location": "Melum"
        },
        {
          "date": "9",
          "day": "Wed",
          "image": "assets/images/2.jpg",
          "title": "Meeting Auto",
          "start": "01:00 PM",
          "end": "06:00 PM",
          "location": "Saint Cloud"
        }
      ]
    },
    {
      "month": "OCT",
      "title": '1 Events',
      "monthData": [
        {
          "date": "31",
          "day": "Sat",
          "image": "assets/images/3.jpg",
          "title": "Halloween Party",
          "start": "08:00 AM",
          "end": "06:00 PM",
          "location": "La Rochette"
        }
      ]
    },
    {
      "month": "NOV",
      "title": '2 Events',
      "monthData": [
        {
          "date": "10",
          "day": "Mon",
          "image": "assets/images/2.jpg",
          "title": "Air Legend",
          "start": "09:00 AM",
          "end": "06:00 PM",
          "location": "Melum"
        },
        {
          "date": "12",
          "day": "Wed",
          "image": "assets/images/1.jpg",
          "title": "Meeting Auto",
          "start": "01:00 PM",
          "end": "06:00 PM",
          "location": "Saint Cloud"
        }
      ]
    },
  ];

  final List<Map<String, dynamic>> monthData = [
    {
      "date": "7",
      "day": "Mon",
      "image": "assets/images/1.jpg",
      "title": "Air Legend",
      "start": "09:00 AM",
      "end": "06:00 PM",
      "location": "Melum"
    },
    {
      "date": "9",
      "day": "Wed",
      "image": "assets/images/2.jpg",
      "title": "Meeting Auto",
      "start": "01:00 PM",
      "end": "06:00 PM",
      "location": "Saint Cloud"
    }
  ];
}
