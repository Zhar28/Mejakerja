import 'package:flutter/material.dart';

class DetailMarketplace extends StatelessWidget {
  DetailMarketplace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Marketplace'),
      ),
      body: Column(
        children: [
          Text(
            'Item Details',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          SizedBox(height: 12),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 55, right: 55, top: 20),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/monya.jpg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Monya Wife',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_play_sharp,
                          color: Colors.yellow.shade700,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '100000000 Point',
                          style: TextStyle(
                            color: Colors.yellow.shade700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Success'),
                    content: Text('Your purchase was successful!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                          Navigator.of(context)
                              .pop(); // Go back to the previous page
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              width: 80,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text('Purchase'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
