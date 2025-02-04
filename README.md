# Local Storage

Local storage adalah metode penyimpanan data secara lokal di perangkat pengguna. Dalam Flutter, ada beberapa cara untuk menyimpan data secara lokal, di antaranya:

## 1. Shared Preferences
Shared Preferences adalah cara yang paling sederhana untuk menyimpan data dalam bentuk pasangan kunci-nilai. Cocok untuk menyimpan data sederhana seperti pengaturan aplikasi atau preferensi pengguna.

### Contoh Penggunaan:
```dart
import 'package:shared_preferences/shared_preferences.dart';

void saveData() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('key', 'value');
}

void loadData() async {
  final prefs = await SharedPreferences.getInstance();
  String value = prefs.getString('key') ?? 'default';
}
```

## 2. Hive
Hive adalah database NoSQL yang ringan dan cepat. Cocok untuk menyimpan data dalam jumlah besar dan kompleks.

### Box pada Hive
- **Box** adalah tempat untuk menyimpan data terstruktur dalam bentuk **Key-Value**.
- Tiap Box di Hive memiliki nama yang unik untuk membuka dan mengakses.
- Data pada Box disimpan secara **asinkron**, artinya kita harus menggunakan operasi **async** untuk membuka dan mengelola data dalam Box

### Contoh Penggunaan:
```dart
import 'package:hive/hive.dart';

void saveData() async {
  var box = await Hive.openBox('myBox');
  box.put('key', 'value');
}

void loadData() async {
  var box = await Hive.openBox('myBox');
  String value = box.get('key');
}
```

## SQLite
SQLite adalah database relasional yang cocok untuk aplikasi yang membutuhkan struktur data yang kompleks dan relasi antar tabel.

### Contoh Penggunaan:
```dart
import 'package:sqflite/sqflite.dart';

void saveData() async {
  var database = await openDatabase('my_db.db');
  await database.insert('my_table', {'key': 'value'});
}

void loadData() async {
  var database = await openDatabase('my_db.db');
  List<Map> result = await database.query('my_table');
}
```

## Kesimpulan:

metode penyimpanan lokal/local storage **Shared Preference** untuk kebutuhan data yang ringan, **Hive** untuk pengelolaan data yang lebih kompleks, dan **SQLite** untuk struktur data yang lebih terorganisir.
