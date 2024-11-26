import "dart:io";
void main(){
  while(true) {

  print("MENU Bank Jago");
  print("Ketik angka untuk mengakses layanan.");
  print("1. Cek Saldo.");
  print("2. Tarik Tunai.");
  print("3. Deposit.");
  print("4. Exit.");

  stdout.write("Layanan yang ingin kamu akses: ");
  String? input = stdin.readLineSync();

  if (input == "1") {
    uBalance();
  }else if (input == "2"){
    withdraw();
  }else if (input == "3"){
    deposit();
  }else if (input == "4"){
    print("==========");
    print("Terima kasih :)");
    print("==========");
  }else{
    print("==========");
    print("Pilihan tidak tersedia.");
    print("==========");
  }


  }
}


dynamic balance = 100000;
//cek
void uBalance(){
  print("==========");
  print("Anda memiliki saldo sejumlah: $balance Rupiah.");
  print("==========");
}


//withdraw
void withdraw(){
  print("==========");
  print("Saldo anda saat ini adalah $balance Rupiah, silahkan masukkan nominal penarikan.");
  int? nominal;
  try{
    nominal = int.parse(stdin.readLineSync()!);
  }catch(e){
    print("==========");
    print("Maaf, input tidak valid. $e");
    print("==========");
    return;
  }
  if (balance < nominal){
    print("==========");
    print("Saldo anda tidak cukup untuk melakukan penarikan tersebut. Apakah anda ingin melakukan pinjol?");
    print("1. Iya.");
    print("2. Tidak.");
    print("==========");

    stdout.write("Apakah anda ingin pinjol? ");
    String? inputPinjol = stdin.readLineSync();

    if (inputPinjol == "1"){
      print("==========");
      print("Kurang-kurangi berhutang. Pihak berwajib akan segera menuju ke lokasi anda.");
      print("==========");
    }else if (inputPinjol == "2"){
      print("==========");
      print("Bagus. Social credit +100000.");
      print("==========");
    }else {
      print("==========");
      print("Input tidak valid");
      print("==========");

      return;
    }


  }else {
    balance = balance - nominal;
    print("==========");
    print("Penarikan sukses! Sisa saldo anda: $balance Rupiah.");
    print("==========");
  }
}


//depo
void deposit(){
  stdout.write("Ketik nominal uang yang ingin anda masukkan: ");
  int? nominal;
  try{
    nominal = int.parse(stdin.readLineSync()!);
  }catch (e){
    print("Maaf, input tidak valid. $e");
    print("==========");
    return;
}
balance = balance + nominal;
print("==========");
print("Deposit berhasil! Saldo anda menjadi: $balance Rupiah.");
print("==========");
}

void exit(){

  
}