import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import'package:flutter/foundation.dart';

class QrScannerModel with ChangeNotifier{
  String _qrResult= 'Scanned QR appear here';
  String get qrResult => _qrResult;
  bool mounted= true;
//  bool mounted= false;
Future<void> scanQr() async{
try{
  final qrCode= await FlutterBarcodeScanner.scanBarcode('#ff6666', 'cancel', true, ScanMode.QR);
  if(!mounted)
  return;
  _qrResult= qrCode.toString();
  notifyListeners();

} on PlatformException{
 _qrResult= 'failed to read QR';
}
}
}