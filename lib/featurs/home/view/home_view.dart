import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
              // Navigate to profile
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
                children: List.generate(4, (index) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmWE4o8UVZbcFdwPRxfP67Ef2fg8ps1tLFfzIxAvH_PX0deKJgR8thAKRlizc8O474-MtBv5S6VZZTJ-YoM7T-oPIqbVaNVsCzKuRttZLtZCMwc9hw4B1zwsepfBf-Wit7C4ADmwsF02fs/s640-rw/Ktu-Online-Class-on-ASAP-ktustudents.in.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                }),
              ),
            ),
            box,
            Text('Recent Updates',
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(
              height: 30.h,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Cource $index'),
                    subtitle: Text('Cource Details $index'),
                    leading: CircleAvatar(
                      child: Text('$index'),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        // Navigate to details
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  );
                },
              ),
            ),
            box,
            Text('Popular Courses',
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(
              height: 50.h,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                ),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Flexible(
                          child: Image.network(
                            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmWE4o8UVZbcFdwPRxfP67Ef2fg8ps1tLFfzIxAvH_PX0deKJgR8thAKRlizc8O474-MtBv5S6VZZTJ-YoM7T-oPIqbVaNVsCzKuRttZLtZCMwc9hw4B1zwsepfBf-Wit7C4ADmwsF02fs/s640-rw/Ktu-Online-Class-on-ASAP-ktustudents.in.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('Cource $index'),
                        Text('Cource Details $index'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
