// lib/widgets/booking_status_card.dart
import 'package:flutter/material.dart';

enum BookingStatus { success, pending, cancelled }

class BookingStatusCard extends StatelessWidget {
  final BookingStatus status;

  const BookingStatusCard({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    IconData icon;
    Color color;
    String text;

    switch (status) {
      case BookingStatus.success:
        icon = Icons.check_circle;
        color = Colors.green;
        text = 'Booking Successful';
        break;
      case BookingStatus.pending:
        icon = Icons.access_time;
        color = Colors.orange;
        text = 'Booking Pending';
        break;
      case BookingStatus.cancelled:
        icon = Icons.cancel;
        color = Colors.red;
        text = 'Booking Cancelled';
        break;
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 50, color: color),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
