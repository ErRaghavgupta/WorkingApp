import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Teamleader1.dart';
import 'nonfbamember.dart';

class MyReferralsPage extends StatefulWidget {
  @override
  State<MyReferralsPage> createState() => _MyReferralsPageState();
}

class _MyReferralsPageState extends State<MyReferralsPage> {
  final _controller = TextEditingController();
  String button = "update";
  final List<Map<String, dynamic>> data = [
    {
      "level": "Level 1",
      "nonCard": 10,
      "cardMember": 3,
      "cbCoin": 00,
      "total": "3000"
    },
    {
      "level": "Level 2",
      "nonCard": 10,
      "cardMember": 143,
      "cbCoin": 0,
      "total": 30980
    },
    {
      "level": "Level 3",
      "nonCard": 30,
      "cardMember": 1143,
      "cbCoin": 0,
      "total": 130555
    },
    {
      "level": "Level 4",
      "nonCard": 50,
      "cardMember": 11043,
      "cbCoin": 00,
      "total": 3134530
    },
    {
      "level": "Level 5",
      "nonCard": 40,
      "cardMember": 11043,
      "cbCoin": 0,
      "total": 433334
    },
    {
      "level": "Level 6",
      "nonCard": 20,
      "cardMember": 411043,
      "cbCoin": 0,
      "total": 13130
    },
    {
      "level": "Level 7",
      "nonCard": 60,
      "cardMember": 311043,
      "cbCoin": 0,
      "total": 123130
    },
  ];

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
            // Top Row with FBA and Non-FBA counts
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Text(
                      'Total FBA Member: 75',
                      style: TextStyle(fontSize: 13),
                    )),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Text(
                      'Total NonFBA Member: 177',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    )),
              ],
            ),
            SizedBox(height: 16),

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
                          onChanged: (value) {
                            button = value.isNotEmpty ? "verify" : "update";
                            setState(() {});
                          },
                          controller: _controller,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Referral Code',
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          button = "update";
                          setState(() {});
                        },
                        child: Text(button),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    '(Note: code is onetime update only)',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My Direct FBA Network',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Container(
                  height: 800,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeaderRow(),
                      Divider(color: Colors.grey[400], thickness: 1),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return _buildDataRow(data[index]);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Account Manager Info
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Row(
      children: [
        _buildHeaderCell('Non-Card'),
        _buildHeaderCell('Card Member'),
        _buildHeaderCell('CB Coin'),
        _buildHeaderCell('Total CB Coin'),
      ],
    );
  }

  Widget _buildHeaderCell(String text) {
    return Expanded(
      flex: 1,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildDataRow(Map<String, dynamic> row) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              "${row['level']}",
            )),
        Card(
          elevation: 8.0,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return NonfbaApp();
                    },
                  ));
                },
                child: _buildDataCell(
                  row['nonCard'].toString(),
                  isHighlighted: row['nonCard'] > 0,
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return Teamleader1();
                      },
                    ));
                  },
                  child: _buildDataCell(row['cardMember'].toString())),
              _buildDataCell(
                row['cbCoin'].toString(),
                isHighlighted: row['cbCoin'] > 0,
              ),
              _buildDataCell(row['total'].toString(), isTotal: true),
            ],
          ),
        ),
        Divider(color: Colors.grey[300], thickness: 0.8),
      ],
    );
  }

  Widget _buildDataCell(String text,
      {bool isHighlighted = false, bool isTotal = false}) {
    return SizedBox(
      height: 40,
      width: 80,
      child: Center(
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            fontWeight:
                isHighlighted || isTotal ? FontWeight.bold : FontWeight.normal,
            color: isHighlighted
                ? Colors.red
                : isTotal
                    ? Colors.green
                    : Colors.black,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
