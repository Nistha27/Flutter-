import 'package:flutter/material.dart';
//1. Create a variable that stores the currency value
//2.Create a function that multiplies the value given by the textfield by 81
//3.Store the value in the variable that we created
//4.Display the variable
class CurrencyConverterMaterialPage extends StatefulWidget {
 const CurrencyConverterMaterialPage({super.key});

  
  @override
  State<CurrencyConverterMaterialPage> createState() =>
           _CurrencyConverterMaterialPageState();

  }

class _CurrencyConverterMaterialPageState 
      extends State <CurrencyConverterMaterialPage>{
         double result = 0;
         final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context){
    final border = OutlineInputBorder(
           // Color(0xAARRGGBB)
           borderSide: const BorderSide(
              width: 2.0,
               style: BorderStyle.solid,
           ),
           borderRadius: BorderRadius.circular(5), 
    );
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar : AppBar(
          backgroundColor: Colors.blueGrey,
          elevation : 0,
          title: const Text("Currency Converter"),
          centerTitle: true, 
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // int -> string integervalue.toString
              // string -> int int.parse(String)
               Text(
                    'INR ${result.toString()}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 201, 224, 75)
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: "Please Enter the amount in USD",
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const  Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton( 
                  onPressed: () {
                    //3 modes of application
                    // debug, release, profile
                  setState(() {
                      result = double.parse(textEditingController.text)*83.33;
                  });
                },
                style:  TextButton.styleFrom  (
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  maximumSize: const Size(double.infinity,50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child : const Text("Convert"),
                  ),
                ), 
            ],    
          ), 
        ),
      ); 
   }
 } 

