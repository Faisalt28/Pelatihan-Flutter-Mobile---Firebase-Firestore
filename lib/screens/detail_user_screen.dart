import 'package:flutter/material.dart';
import '../model/user_model.dart';
import '../repositories/firestore_repository.dart';

class DetailUserScreen extends StatelessWidget {
  final String userId;
  final FirestoreRepository _firestoreRepository = FirestoreRepository();

  DetailUserScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pengguna'),
      ),
      body: FutureBuilder<User?>(
        future: _firestoreRepository.getUser(userId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: Text('Pengguna tidak ditemukan.'));
          }

          final user = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama: ${user.name}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Email: ${user.email}',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
