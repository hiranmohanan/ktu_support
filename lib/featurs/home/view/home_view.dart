import 'package:flutter/material.dart';
import 'package:ktu_support/constants/constants.dart';
import 'package:ktu_support/featurs/home/models/models.dart';
import 'package:ktu_support/services/firebase_services.dart';
import 'package:sizer/sizer.dart';

import '../../service/view/service_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final SizedBox box = SizedBox(
      height: 1.h,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseServices().getHome();
            },
            icon: const Icon(Icons.notifications_active),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 30.h,
              child: CarouselView(
                itemExtent: 90.w,
                itemSnapping: true,
                shrinkExtent: 0.8,
                children: List.generate(demoModel.iteams.length, (index) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(demoModel.iteams[index].url),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 90.w,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          demoModel.iteams[index].title,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            box,
            Text('Current Services by KTU Support',
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(
              height: 50.h,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: demoModel.services.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(demoModel.services[index].title),
                    leading: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                      child: demoModel.services[index].icon,
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ServiceView(
                              title: demoModel.services[index].title,
                            ),
                          ),
                        );
                      },
                      icon: kcArrowIcon,
                    ),
                  );
                },
              ),
            ),
            box,
          ],
        ),
      ),
    );
  }
}
