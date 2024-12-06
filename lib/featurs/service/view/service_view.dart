import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(5.w),
          children: [
            Title(color: Colors.black, child: Text('Select Your Branch')),
            SizedBox(
              height: 90.h,
              width: 100.w,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: Text('Branch Name'),
                      subtitle: Text('Branch Address'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Navigate to service
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
