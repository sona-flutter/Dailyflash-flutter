// lib/models/salon_profile.dart
class SalonProfile {
  final String name;
  final String email;
  final String? imageUrl;
  final String phone;
  final String address;

  SalonProfile({
    required this.name,
    required this.email,
    this.imageUrl,
    required this.phone,
    required this.address,
  });

  factory SalonProfile.dummy() {
    return SalonProfile(
      name: 'Beauty Palace Salon',
      email: 'beautypalace@email.com',
      phone: '+1 234 567 890',
      address: '123 Salon Street, Beauty City',
    );
  }
}
