import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Teamleader2 extends StatelessWidget {
  const Teamleader2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Level 2 Team"),
        actions: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: Colors.black)),
              child: Text(
                'Total Size: 75',
                style: TextStyle(
                  fontSize: 13,
                ),
              )),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        // padding: EdgeInsets.all(8),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                // width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    // Header Section
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.centerLeft,
                      child: Center(
                        child: const Text(
                          'My Direct FBA Network',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    // Content Section
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          // Profile Picture
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.person,
                                size: 36, color: Colors.black),
                          ),
                          const SizedBox(width: 12),

                          // Details
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Name : Satish Jaywant Kadam',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Joining Date: 14/March/2024',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 65, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.red.shade100,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          width: 2, color: Colors.red)),
                                  child: Text("Non FBA Member"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Action Section
                    // Container(
                    //   padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    //   decoration: const BoxDecoration(
                    //     border: Border(
                    //       top: BorderSide(color: Colors.grey),
                    //     ),
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       ElevatedButton(
                    //         onPressed: () {},
                    //         style: ElevatedButton.styleFrom(
                    //           backgroundColor: Colors.orangeAccent,
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(4),
                    //           ),
                    //         ),
                    //         child: const Text('Connect Your Account Manager'),
                    //       ),
                    //       Row(
                    //         children: [
                    //           IconButton(
                    //             onPressed: () {},
                    //             icon: const Icon(Icons.call, color: Colors.green),
                    //           ),
                    //           IconButton(
                    //             onPressed: () {},
                    //             icon: const Icon(Icons.message, color: Colors.blue),
                    //           ),
                    //           IconButton(
                    //             onPressed: () {},
                    //             icon: const Icon(Icons.add, color: Colors.green),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ));
  }
}
