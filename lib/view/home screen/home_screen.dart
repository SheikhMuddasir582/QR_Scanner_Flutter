import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/components/qr%20button/qr_button.dart';
import 'package:qr_code_scanner/view%20model/qr%20scanner/qr_scanner_model.dart';
import 'package:qr_code_scanner/view%20model/qr%20scanner/qr_scanner_model.dart';
import 'package:qr_code_scanner/view%20model/qr%20scanner/qr_scanner_model.dart';
import 'package:qr_code_scanner/view%20model/qr%20scanner/qr_scanner_model.dart';
import 'package:qr_code_scanner/view%20model/qr%20scanner/qr_scanner_model.dart';
import 'package:qr_code_scanner/view/qr%20generator/qr_generator.dart';
import 'package:qr_code_scanner/view/qr%20scanner%20screen/qr_scanner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.sizeOf(context).height * 1;
    // final size= MediaQuery.of(context).size ;
    // final size= MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner and Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QrButton(title: 'Qr Scanner', onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => QrScannerScreen()));
          }
          ),
          SizedBox(height: height * 0.01,),
         QrButton(title: 'QR Generator', onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => QrGeneratorScreen()));
         }
         ),
        ],
      ),
      ),
    );
  }
}