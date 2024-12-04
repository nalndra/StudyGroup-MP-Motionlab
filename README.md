rangkuman study group week 2:

important:
"setiap menulis line direkomendasikan untuk menambahkan , (koma.)"

about WIDGET:
"widget adalah komponen yang saling terhubung untuk membentuk UI di flutter."
"tiap elemen visual adalah widget."
"flutter menggunakan konsep widget tree (tiap widget bisa bercabang seperti widget parent dan child.)"

pohon widget memiliki cabang dengan root yaitu "MyApp > Material App > scaffold > dst."

about SCAFFOLD:
"scaffold adalah widget utama dari tiap halaman di flutter."

about <pubspec.yaml>:
"untuk konfigurasi."
"harap hati hati karna file ini sangat sensitif terhadap perubahan."
"agar file img bisa terbaca oleh flutter kita bisa menulis:
assets:
    - assets/
dibawah
flutter:
  uses-material-design: true
agar semua file yang dimasukkan ke folder assets bisa terbaca flutter.
"

kita bisa menulis "stl" agar flutter menginisiasi widget langsung.

about COLORS:
"untuk inisiasi warna kita bisa menggunakan color: Colors.<warna>"
"kita juga bisa menggunakan hex color sesuai kemauan kita dengan cara color: Color(X0FF<hex code>)"
