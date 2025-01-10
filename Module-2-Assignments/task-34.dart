import 'dart:io';
import 'package:qr/qr.dart';

void main() {
  print('Enter the text to generate a QR code:');

  String userInput = stdin.readLineSync() ?? '';

  if (userInput.isEmpty) {
    print('No input provided!');
    return;
  }

  var qr = QrCode(4, QrErrorCorrectLevel.L);
  qr.addData(userInput);

  final qrImage = QrImage(qr);

  String qrCodeString = _generateQrCodeString(qrImage);
  print('\nQR Code:\n');
  print(qrCodeString);
}

String _generateQrCodeString(QrImage qrImage) {
  String qrCodeString = '';
  for (int y = 0; y < qrImage.moduleCount; y++) {
    for (int x = 0; x < qrImage.moduleCount; x++) {
      qrCodeString += qrImage.isDark(y, x) ? '##' : '  ';
    }
    qrCodeString += '\n';
  }
  return qrCodeString;
}
