import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  final List<String>filters  = const [
    'All',
    'Adidas',
    'Nike',
    'Puma'
  ];
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
                      borderSide:  BorderSide(
                        color: Color.fromRGBO(225, 225, 225, 1),
                      ),
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                    
                    );
    return  Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            Row(
              children: [
             const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Shoes\nCollection', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize : 35,
                    )
                  ),
                ),
                const Expanded(child:
                 TextField(
                  decoration: InputDecoration(
                    hintText: 'Search', 
                    prefixIcon: Icon(Icons.search),
                    border: border,
                    enabledBorder: border,
                    focusedBorder: border,
                  ), 
                 )
                ),
                ListView.builder(
                  itemCount : filters.length,
                  itemBuilder: (context , index) {
                    final filter = filters[index];
                    return Chip(
                      label: Text(filter),);
                  },
                )
              ],
            ) 
          ],
        ), 
     )
   );  
 }
}