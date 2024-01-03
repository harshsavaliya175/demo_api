import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getapi/homescreen/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GetBuilder<HomeController>(
              id: "userList",
              builder: (controller) {
                return controller.datalist.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: controller.datalist.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Card(
                          shadowColor: Colors.indigo,
                          elevation: 5,
                          child: ListTile(
                            leading: Text('${1 + index}'),
                            title: Text(controller.datalist[index].englishName),
                          ),
                        ),
                      );

                // GridView.builder(
                //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //           crossAxisCount: 2,
                //           mainAxisSpacing: 10,
                //           crossAxisSpacing: 10,
                //         ),
                //         itemCount: controller.datalist.length,
                //         itemBuilder: (context, index) => Card(
                //           shadowColor: Colors.black,
                //           elevation: 5,
                //           child: Column(
                //             children: [
                //               Center(
                //                 child: ClipRRect(
                //                   borderRadius: BorderRadius.circular(5),
                //                   child: ListTile(
                //                     leading: Text('${1+index}'),
                //                     title:  Text(controller.datalist[index].englishName),
                //                   ),
                //                 ),
                //               ),
                //
                //               SingleChildScrollView(
                //                 scrollDirection: Axis.horizontal,
                //                 child: Row(
                //                   children: [
                //                     Text(
                //                       controller
                //                           .dataList!.data!.surahs![index]
                //                     .englishName!,
                //
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //               // Padding(
                //               // padding: const EdgeInsets.only(
                //               // top: 10, left: 5, right: 5),
                //               //   child: Row(
                //               //     children: [
                //               //       Text(
                //               //         " \$" +
                //               //             controller
                //               //                 .imageList!.products![index].price
                //               //                 .toString(),
                //               //       ),
                //               //       Spacer(),
                //               //       Text(
                //               //         controller
                //               //             .imageList!.products![index].rating
                //               //             .toString(),
                //               //       ),
                //               //     ],
                //               //   ),
                //               // )
                //             ],
                //           ),
                //         ),
                //       );
              }),
        ),
      ),
    );
  }
}
