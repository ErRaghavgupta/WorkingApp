import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderRow(),
            Divider(color: Colors.grey[400], thickness: 1),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return _buildDataRow(data[index]);
                },
              ),
            ),
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
              _buildDataCell(row['nonCard'].toString(),
                  isHighlighted: row['nonCard'] > 0,),
              _buildDataCell(row['cardMember'].toString()),
              _buildDataCell(row['cbCoin'].toString(),
                  isHighlighted: row['cbCoin'] > 0,),
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
      width: 85,
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
