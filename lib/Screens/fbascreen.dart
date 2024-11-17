import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FBAHomePage extends StatelessWidget {
  const FBAHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Level 1 Team"),
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
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
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Your Account Manager',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
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
                                  children: const [
                                    Text(
                                      'Name : Satish Jaywant Kadam',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Joining Date: 14/March/2024',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Total FBA Member : 75',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.green),
                                    ),
                                    Text(
                                      'Total NonFBA Member : 177',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Follow up your Team Member',
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(Icons.call, color: Colors.green),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.message, color: Colors.blue),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.green),
                            ),
                          ],
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
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       const Text(
                //         'My Direct FBA Network',
                //         style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 18,
                //         ),
                //       ),
                //       const SizedBox(height: 8),
                //
                //       // Table Header
                //       Container(
                //         color: Colors.grey[200],
                //         padding: const EdgeInsets.symmetric(vertical: 8),
                //         child: const Row(
                //           children: [
                //             Expanded(
                //               flex: 0,
                //               child: Text('Level'),
                //             ),
                //             VerticalDivider(
                //               thickness: 2,
                //             ),
                //             Expanded(flex: 2, child: Text('Non-Card')),
                //             VerticalDivider(
                //               thickness: 2,
                //             ),
                //             Expanded(
                //                 flex: 2,
                //                 child: Text(
                //                   'Card Member',
                //                 )),
                //             VerticalDivider(
                //               thickness: 2,
                //             ),
                //             Expanded(flex: 2, child: Text('CB Coin')),
                //             VerticalDivider(
                //               thickness: 2,
                //             ),
                //             Expanded(flex: 2, child: Text('Total CB Coin')),
                //           ],
                //         ),
                //       ),
                //
                //       // Table Rows
                //       ListView.builder(
                //         shrinkWrap: true,
                //         physics: const NeverScrollableScrollPhysics(),
                //         itemCount: 7, // Replace with your dynamic row count
                //         itemBuilder: (context, index) {
                //           return Container(
                //             color: index % 2 == 0
                //                 ? Colors.white
                //                 : Colors.grey[100],
                //             padding: const EdgeInsets.symmetric(vertical: 8),
                //             child: Row(
                //               children: [
                //                 Expanded(
                //                     flex: 2, child: Text('Level ${index + 1}')),
                //                 Expanded(flex: 2, child: Text('10')),
                //                 Expanded(
                //                     flex: 2,
                //                     child: Text(index == 0
                //                         ? '3'
                //                         : '${index * 1000 + 3}')),
                //                 Expanded(
                //                     flex: 2,
                //                     child: Text(
                //                       index == 0
                //                           ? '1000'
                //                           : '${(7 - index) * 500}',
                //                       style:
                //                           const TextStyle(color: Colors.green),
                //                     )),
                //                 Expanded(
                //                     flex: 2,
                //                     child: Text(
                //                       index == 0
                //                           ? '3000 (Real Cash)'
                //                           : '${(index + 1) * 3000}',
                //                       style:
                //                           const TextStyle(color: Colors.green),
                //                     )),
                //               ],
                //             ),
                //           );
                //         },
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
