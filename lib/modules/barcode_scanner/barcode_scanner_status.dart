import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isAvailable;
  final String error;
  final String barcode;

  CameraController? cameraController;
  BarcodeScannerStatus(
      {this.isAvailable = false,
      this.error = "",
      this.cameraController,
      this.barcode = ""});

  factory BarcodeScannerStatus.available(CameraController controller) =>
      BarcodeScannerStatus(isAvailable: true, cameraController: controller);

  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message);

  factory BarcodeScannerStatus.barcode(String barcode) =>
      BarcodeScannerStatus(barcode: barcode);

  bool get showCamera => isAvailable && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}
