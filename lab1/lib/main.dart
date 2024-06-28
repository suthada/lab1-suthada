import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        useMaterial3: true,
      ),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> students = [
      {"name": "ก้องภพ ตาดี ", "id": "643450321-2"},
      {"name": "สุธาดา เสนามงคล ", "id": "643450089-0"},
      {"name": "กมล จันบุตรดี ", "id": "643450063-8"},
      {"name": "ศรันย์ ซุ่นเส้ง ", "id": " 643450086-6 "},
      {"name": "นภัสสร ดวงจันทร์ ", "id": "643450326-2"},
      {"name": "ชาญณรงค์ แต่งเมือง ", "id": "643450069-6"},
      {"name": "เจษฏา พบสมัย ", "id": " 643450323-8 "},
      {"name": "ประสิทธิชัย จันทร์สม ", "id": " 643450079-3 "},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "My App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return displayNameItem(
            name: students[index]['name']!,
            studentId: students[index]['id']!,
          );
        },
      ),
    );
  }

  Widget displayNameItem({required String name, required String studentId}) {
    final Map<String, String> nameToImage = {
      "ก้องภพ ตาดี ": 'assets/images/md.jpg',
      "สุธาดา เสนามงคล ": 'assets/images/n.jpg',
      "กมล จันบุตรดี ": 'assets/images/a.jpg',
      "ศรันย์ ซุ่นเส้ง ": 'assets/images/m.jpg',
      "นภัสสร ดวงจันทร์ ": 'assets/images/c.jpg',
      "ชาญณรงค์ แต่งเมือง ": 'assets/images/j.jpg',
      "เจษฏา พบสมัย ": 'assets/images/b.jpg',
      "ประสิทธิชัย จันทร์สม ": 'assets/images/f.jpg',
    };

    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          ClipOval(
            child: Image(
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              image:
                  AssetImage(nameToImage[name] ?? 'assets/images/noimages.png'),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  color:
                      name == "สุธาดา เสนามงคล " ? Colors.blue : Colors.black,
                ),
              ),
              Text(
                'ID: $studentId',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
