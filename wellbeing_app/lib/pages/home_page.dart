import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: SafeArea(
      
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hi Terry',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '23 Jan 2025',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),

                 
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.notifications, color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              //search bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: const [
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 8),
                    Text('Search', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),

           
              const SizedBox(height: 20),

            
              Expanded(
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Welcome'),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                
                        //list view of items
                        Container(
                          child: const ListTile(
                            leading: Icon(Icons.favorite),
                            title: Text('Machine learning'),
                            subtitle: Text('3 various types'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
