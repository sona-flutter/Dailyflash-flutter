import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../widgets/booking_status_card.dart';

class BookingSuccessScreen extends StatelessWidget {
  final String reference;
  final String serviceName;
  final BookingStatus status;

  const BookingSuccessScreen({
    super.key,
    required this.reference,
    required this.serviceName,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                BookingStatusCard(status: status),
                const SizedBox(height: 20),
                Text(
                  'Successful Booking for\n$serviceName',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: QrImageView(
                    // Changed from QrImage to QrImageView
                    data: reference,
                    version: QrVersions.auto,
                    size: 200,
                    backgroundColor: Colors.white,
                    gapless: false,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Transaction Reference\n$reference',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Download Receipt'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
