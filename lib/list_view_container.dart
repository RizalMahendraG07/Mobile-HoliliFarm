import 'package:flutter/material.dart';

class ListViewContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // Increased height for the ListView
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10, // Number of items in the list
              itemBuilder: (context, index) {
                int itemNumber = index + 1; // To start numbering from 1

                return GestureDetector(
                  onTap: () {
                    // Show the dialog when the card is clicked
                    _showPopup(context, itemNumber);
                  },
                  child: Card(
                    margin: EdgeInsets.all(8),
                    elevation: 8, // Increased elevation for better shadow
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Rounded corners
                    ),
                    color: Colors
                        .white, // Mengubah warna latar belakang kartu menjadi putih
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // Menghapus gradient agar kartu berwarna putih
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, // This makes the texts align on opposite ends
                            children: [
                              Text(
                                'History $itemNumber',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  _showPopup(context, itemNumber);
                                },
                                child: Text(
                                  'View Detail',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Click here to see more details about Item $itemNumber.',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Function to show a popup dialog
  void _showPopup(BuildContext context, int itemNumber) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Item $itemNumber Clicked'),
          content: Container(
            width: double.maxFinite, // Set width to max for the dialog
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5, // Number of details to show
              itemBuilder: (context, index) {
                // Generate a random date and time for demonstration
                DateTime now = DateTime.now().subtract(Duration(days: index));
                String formattedDate =
                    "${now.day}/${now.month}/${now.year} ${now.hour}:${now.minute}";

                return Card(
                  margin: EdgeInsets.symmetric(
                      vertical: 4), // Margin between detail cards
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Detail ${index + 1}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Date: $formattedDate',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
