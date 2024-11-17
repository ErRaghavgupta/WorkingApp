import 'package:flutter/material.dart';

class MyReferralsPage2 extends StatefulWidget {
  @override
  State<MyReferralsPage2> createState() => _MyReferralsPageState();
}

class _MyReferralsPageState extends State<MyReferralsPage2> {
  final _controller = TextEditingController();
  String buttonText = "update"; // Initial button text

  @override
  void initState() {
    super.initState();
    // Button text is initialized as "update" when the page loads.
    buttonText = "update";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Referrals'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Account Manager Code Input
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter Your Account Manager Code',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          onChanged: (value) {
                            // Change button text to "verify" when typing in TextField
                            setState(() {
                              buttonText = value.isNotEmpty ? "verify" : "update";
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Referral Code',
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Reset button text to "update" on button press
                          setState(() {
                            buttonText = "update";
                          });

                          // Add functionality for button press (if needed)
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Referral code submitted!'),
                            ),
                          );
                        },
                        child: Text(buttonText),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    '(Note: code is one-time update only)',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),

            // Placeholder for other content
            SizedBox(height: 20),
            Text(
              'Other content can go here...',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
