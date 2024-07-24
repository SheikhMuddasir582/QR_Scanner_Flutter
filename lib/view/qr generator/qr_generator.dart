import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/components/qr%20button/qr_button.dart';
import 'package:qr_code_scanner/provider/generate_code_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGeneratorScreen extends StatefulWidget {
  const QrGeneratorScreen({super.key});

  @override
  State<QrGeneratorScreen> createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGeneratorScreen> {
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    final size= MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr Generator'),
      ),
      body: Center(
        child: SingleChildScrollView(

          child: Consumer<GenerateCodeProvider>(builder: ((context, value, child) {
            print('only build qr');
            return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            if(value.urlController.text.isNotEmpty)
            QrImageView(data: value.urlController.text, size: 200,),
            SizedBox(height: size.height * 0.01,),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                controller: value.urlController,
                decoration: InputDecoration(
                  hintText: 'enter data',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  labelText: 'enter data here',
                ),
              ),
            ),
             SizedBox(height: size.height * 0.01,),
             Consumer<GenerateCodeProvider>(builder: (context, value, child){
              return  QrButton(title: 'Generate QR Code', onTap: (){
              value.generateCode();
             }
             );
             }
             ),
            
            ],
          );
          }
          )
          ),
        ),
      ),
    );
  }
}