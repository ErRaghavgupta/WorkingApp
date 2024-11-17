import 'package:flutter/material.dart';

class DirectfbanetworkApp extends StatelessWidget {
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
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Center(
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
                          'Connect Your Account Manager',
                          style: TextStyle(fontSize: 12),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(Icons.call, color: Colors.green),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(Icons.message, color: Colors.blue),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(Icons.add, color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
