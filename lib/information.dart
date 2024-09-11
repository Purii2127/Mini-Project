import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 280,
              child: Center(
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: ClipOval(
                    child: Image.asset('asset/คน.png', fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text('Username:'),
                          const SizedBox(
                              width:
                                  10), // เพิ่มระยะห่างระหว่าง Text กับ TextField
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 6), // ปรับขนาดความสูง
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text('edit'),
                                Icon(Icons.edit_rounded, color: Colors.red),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text('Fullname:'),
                          const SizedBox(
                              width:
                                  10), // เพิ่มระยะห่างระหว่าง Text กับ TextField
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 6), // ปรับขนาดความสูง
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text('edit'),
                                Icon(Icons.edit_rounded, color: Colors.red),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text('Email:'),
                          const SizedBox(
                              width:
                                  10), // เพิ่มระยะห่างระหว่าง Text กับ TextField
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 6), // ปรับขนาดความสูง
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text('edit'),
                                Icon(Icons.edit_rounded, color: Colors.red),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text('Phone:'),
                          const SizedBox(
                              width:
                                  10), // เพิ่มระยะห่างระหว่าง Text กับ TextField
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 6), // ปรับขนาดความสูง
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text('edit'),
                                Icon(Icons.edit_rounded, color: Colors.red),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text('Password:'),
                          const SizedBox(
                              width:
                                  10), // เพิ่มระยะห่างระหว่าง Text กับ TextField
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 6), // ปรับขนาดความสูง
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text('edit'),
                                Icon(Icons.edit_rounded, color: Colors.red),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: 130,
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.pink,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center, 
                          children: [
                            Text('Log Out'),
                            SizedBox(
                                width: 5), 
                            Icon(Icons.logout, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  )
        
            
                ],
              ),
            ),
        
            
          ],
        ),
      ),
    );
  }
}
