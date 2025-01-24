# Dasar API

## API
API: Application Programming Interface
Cara agar berkomunikasi antara client dan server.

## Rute
**Client** -> **HTTP**: GET, POST, DELETE, PUT -> **URL**: /surveys, /surveys/123, /surveys/123/... -> **Server** -> **JSON** -> **Client**

## Keuntungan
- Mempermudah developer.
- Menghemat waktu.


# Future
Future adalah sebuah objek di Dart yang merepresentasikan operasi async, yaitu tugas yang hasilnya mungkin tersedia di masa depan (belum tersedia langsung). Future digunakan untuk menangani tugas yang memerlukan waktu untuk selesai.

## Contoh
- Mengambil data dari internet.
- Mengambil foto dari galeri.

## Contoh code
```dart
Future<String> data() async {
  await Future.delayed(Duration(seconds: 3));
  return "Pizza Datang";
}

void main() async {
  print("Memesan pizza");
  print(await data());
}
```
Ketika program ini dijalankan maka akan memiliki output:
```
Memesan pizza
```
Lalu, 3 detik kemudian akan ada output baru yaitu:
```
Pizza datang
```
