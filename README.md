# 📌 Firebase pada Flutter

## Apa itu Firebase?
Firebase adalah platform backend-as-a-service (BaaS) yang disediakan oleh Google untuk membantu pengembangan aplikasi dengan fitur seperti autentikasi, database, penyimpanan cloud, dan banyak lagi.

## Mengapa Menggunakan Firebase di Flutter?
- **Autentikasi**: Mendukung login dengan email, Google, Facebook, dll.
- **Database**: Gunakan Firestore atau Realtime Database.
- **Cloud Storage**: Simpan dan kelola file seperti gambar dan video.
- **Push Notification**: Kirim notifikasi ke pengguna dengan Firebase Cloud Messaging (FCM).
- **Analitik**: Lacak aktivitas pengguna dengan Firebase Analytics.

## Cara Mengintegrasikan Firebase dengan Flutter
### Buat Proyek Firebase
1. Create firebase project
2. Create Firestore database service
3. Integrate firebase to your flutter
   a. Install Firebase CLI
   b. Instal FlutterFire CLI
   c. Add firebase core to your flutter application
5. Add firestore service to your flutter application

### Tambahkan Firebase ke Flutter
1. Tambahkan dependency di `pubspec.yaml`:
   ```yaml
   dependencies:
     firebase_core: latest_version
     firebase_auth: latest_version # Contoh untuk autentikasi
   ```
2. Jalankan perintah:
   ```sh
   flutter pub get
   ```
3. Inisialisasi Firebase di `main.dart`:
   ```dart
   import 'package:firebase_core/firebase_core.dart';
   void main() async {
     WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp();
     runApp(MyApp());
   }
   ```

## Kesimpulan
Firebase sangat berguna untuk mengembangkan aplikasi Flutter dengan fitur backend yang lengkap dan mudah digunakan. Dengan Firebase, pengembang dapat fokus pada pengembangan fitur aplikasi tanpa harus khawatir dengan infrastruktur backend.

