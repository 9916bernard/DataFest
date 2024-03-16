import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Test',
      home: FirestoreTestPage(),
    );
  }
}

class FirestoreTestPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Firestore data fetch
    final firestoreData = ref.watch(firestoreDataProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Firestore Test')),
      body: Center(
        child: firestoreData.when(
          data: (String message) => Text(message),
          loading: () => CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error'),
        ),
      ),
    );
  }
}

// Firestore data provider
final firestoreDataProvider = FutureProvider<String>((ref) async {
  final snapshot = await FirebaseFirestore.instance.collection('courses').get();
  if (snapshot.docs.isNotEmpty) {
    return snapshot.docs.first.get('name');
  }
  throw Exception('No data found');
});
