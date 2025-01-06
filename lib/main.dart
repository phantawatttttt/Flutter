import 'dart:math';
import 'package:flutter/material.dart';
import 'FaceMenu.dart'; // Import ไฟล์ FaceMenu.dart
void main() {
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Demo',
     theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
       useMaterial3: true,
     ),
     home: const MyHomePage(),
   );
 }
}
class MyHomePage extends StatefulWidget {
 const MyHomePage({super.key});
 @override
 State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
 final List<FaceMenu> _menuList = FaceMenu.getSampleMenu();
 final List<FaceMenu> _selectedMenus = [];
 final Random _random = Random();
 int _totalPrice = 0;
 // ฟังก์ชันสำหรับเพิ่มข้อมูลใหม่ใน List
 void _addItem() {
   setState(() {
     int index = _random.nextInt(_menuList.length);
     FaceMenu selectedMenu = _menuList[index];
     _selectedMenus.add(selectedMenu);
     _totalPrice += selectedMenu.price; // เพิ่มราคารวม
   });
 }
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       title: Text('Flutter Demo : Food Order - Total Price : $_totalPrice'),
     ),
     body: ListView.builder(
       itemCount: _selectedMenus.length,
       itemBuilder: (context, index) {
         FaceMenu menu = _selectedMenus[index];
         return Card(
           margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
           child: ListTile(
             contentPadding: const EdgeInsets.all(10),
             leading: CircleAvatar(
               backgroundColor: Colors.deepPurple,
               radius: 30,
               child: Text(
                 '${menu.price}',
                 style: const TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
             title: Text(
               "Dish $index is ${menu.name}",
               style: const TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.bold,
               ),
             ),
             subtitle: Text(
               "This menu ingredient are ${menu.ingredients.join(", ")}",
               style: const TextStyle(fontSize: 14),
             ),
           ),
         );
       },
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: _addItem,
       tooltip: 'Add Item',
       child: const Icon(Icons.add),
     ),
   );
 }
}