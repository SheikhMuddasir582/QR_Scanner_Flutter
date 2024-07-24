import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/components/qr%20button/qr_button.dart';
import 'package:qr_code_scanner/view%20model/qr%20scanner/qr_scanner_model.dart';

class QrScannerScreen extends StatefulWidget {
  const QrScannerScreen({super.key});

  @override
  State<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  String qrResult= 'Scanned QR will appear here';
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    final size= MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        SizedBox(height: size.height * 0.03,),
        Consumer<QrScannerModel>(builder: ((context, value, child) {
          print('build text only');
          return SelectableText(value.qrResult, style: TextStyle(color: Colors.black),);
        }
        )
        ),
       
        SizedBox(height: size.height * 0.03,),
        Consumer<QrScannerModel>(builder: (context, value, child){
          return QrButton(title: 'QR Scanner', onTap: (){
         value.scanQr();
        }
        );
        }
        )
        // QrButton(title: 'QR Scanner', onTap: (){
        //  qrScanner.scanQr();
        // })
          ],
        ),
      ),
    );
  }
}