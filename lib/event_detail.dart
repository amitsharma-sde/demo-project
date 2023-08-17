import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demo_project/constants.dart';

class EventDetail extends StatefulWidget {
  const EventDetail({super.key});

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  final List<Map<String, String>> monthdata = [
    {
      "date": "6",
      "title": 'Sun',
    },
    {
      "date": "7",
      "title": 'Mon',
    },
    {
      "date": "8",
      "title": 'Tue',
    },
    {
      "date": "9",
      "title": 'Wed',
    },
    {
      "date": "10",
      "title": 'Thu',
    },
    {
      "date": "11",
      "title": 'Fri',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:
            customText("Upcoming Events", kTextColor, 25.sp, FontWeight.w500),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu, size: 30)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 12.h),
          Row(
            children: [
              Container(
                width: 85.w,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                decoration: const BoxDecoration(
                  color: red,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(0.0),
                      bottomLeft: Radius.circular(0.0)),
                ),
                child: customText("SEP", white, 18.sp, FontWeight.w500),
              ),
              Expanded(
                child: SizedBox(
                  height: 50.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: monthdata.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customText(monthdata[index]["date"]!, kTextColor,
                                  16.sp, FontWeight.w700),
                              customText(
                                  monthdata[index]["title"]!,
                                  kTextColor.withOpacity(.5),
                                  16.sp,
                                  FontWeight.w400),
                            ],
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
          SizedBox(height: 35.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset("assets/images/1.jpg",
                  width: 1.sw, fit: BoxFit.fill),
            ),
          )
        ],
      ),
    );
  }
}
