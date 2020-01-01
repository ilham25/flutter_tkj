import 'package:flutter/material.dart';

class MailServPage extends StatelessWidget {
  final String assets = "assets/images/debian/mailserv_img/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.07,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/pattern.jpg",
                  ),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeat,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Mail Server",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      cardStep(
                        "Syarat",
                        [
                          generalParagraph(
                            "1. Harus berhasil dalam konfigurasi IP Address.",
                          ),
                          generalParagraph(
                            "2. Harus berhasil dalam konfigurasi DNS.",
                          ),
                          generalScript(
                            "Catatan :",
                          ),
                          generalScript(
                            "Nama direktori penyimpanan mail : Maildir",
                          ),
                          generalScript(
                            "Nama domain utama : tkj.com",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 1",
                        [
                          generalParagraph(
                            "Langkah pertama, kita akan menginstall paket mail server yaitu postfix, dovecot-imapd dan dovecot-pop3d. Akan tetapi, pada tutorial kali ini kita akan menginstall postfix terlebih dahulu. Jalankan perintah berikut untuk melakukan instalasi postfix :",
                          ),
                          generalScript(
                            "apt-get install postfix",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img1.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 2",
                        [
                          generalParagraph(
                            "Nantinya, saat instalasi kita akan dihadapkan dengan beberapa dialog. Berikut petunjuk untuk masing-masing dialog.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 1",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img2.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pilih ‘Internet Site’ lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 2",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img3.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pada ‘System mail name:’ isikan domain utama kita yaitu ‘tkj.com’.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 3",
                        [
                          generalParagraph(
                            "Setelah itu, kita akan mengkonfigurasi ulang postfix lagi karena dialog pada saat awal instalasi tidak lengkap, oleh karena itu kita perlu melakukan konfigurasi ulang postfix. Jalankan perintah berikut untuk menampilkan konfigurasi ulang postfix :",
                          ),
                          generalScript(
                            "dpkg-reconfigure postfix",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img4.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 4",
                        [
                          generalParagraph(
                            "Nantinya akan keluar banyak dialog, berikut panduan untuk masing-masing dialog :",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 1",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img5.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pilih ‘Internet Site’ lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 2",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img6.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pada ‘System mail name:’ isikan domain utama kita yaitu ‘tkj.com’.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 3",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img7.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pada ‘Root and postmaster mail recipient:’ kosongkan saja lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 4",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img8.png",
                            BoxFit.fill,
                          ),
                          generalParagraph(
                            "Isikan dengan format sebagai berikut :",
                          ),
                          generalScript(
                            "(domain utama), mail.(domain utama), localhost",
                          ),
                          generalParagraph(
                            "Pada tutorial ini, kita akan mengisikan :",
                          ),
                          generalScript(
                            "tkj.com, mail.tkj.com, localhost",
                          ),
                          generalParagraph(
                            "Lalu tekan ENTER",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 5",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img9.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pilih ‘No’ lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 6",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img10.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pada bagian akhir, tambahkan :",
                          ),
                          generalScript(
                            "0.0.0.0/0",
                          ),
                          generalParagraph(
                            "Lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 7",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img11.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 8",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img12.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 9",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img13.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pilih ‘ipv4’ lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 5",
                        [
                          generalParagraph(
                            "Setelah itu, kita akan menambahkan script pada file konfigurasi postfix yaitu file main.cf yang berada pada direktori /etc/postfix/. Jalankan perintah berikut untuk membuka file konfigurasi :",
                          ),
                          generalScript(
                            "nano /etc/postfix/main.cf",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img14.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 6",
                        [
                          generalParagraph(
                            "Selanjutnya, scroll sampai ke bagian bawah file konfigurasi.",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img15.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pada bagian ‘myhostname’ ubah nilainya menjadi domain utama yaitu ‘tkj.com’.",
                          ),
                          generalParagraph(
                            "Pada bagian bawah, tambahkan script berikut :",
                          ),
                          generalScript(
                            "home_mailbox = Maildir/",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 7",
                        [
                          generalParagraph(
                            "Setelah itu, silahkan simpan file konfigurasi dan lakukan restart postfix. Jalankan perintah berikut :",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img16.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 8",
                        [
                          generalParagraph(
                            "Setelah selesai melakukan restart postfix, selanjutnya kita akan menginstal paket dovecot-imapd dan dovecot-pop3d. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "apt-get install dovecot-imapd dovecot-pop3d",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img17.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 9",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan menambahkan direktori mail yang dimana direktori tersebut berfungsi untuk tempat menyimpan pesan(mail). Sebagai catatan, letak direktori tempat penyimpanan mail berada pada direktori /etc/skel. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "maildirmake.dovecot /etc/skel/Maildir",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img18.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 10",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan mengkonfigurasi beberapa file didalam direktori dovecot. Jalankan perintah berikut untuk masuk ke dalam direktori dovecot yaitu direktori /etc/dovecot :",
                          ),
                          generalScript(
                            "cd /etc/dovecot/",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img19.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "File ke 1",
                        [
                          generalParagraph(
                            "File pertama yang akan kita konfigurasi yaitu file dovecot.conf. Jalankan perintah berikut untuk membuka file tersebut :",
                          ),
                          generalScript(
                            "nano dovecot.conf",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img20.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Selanjutnya di dalam file :",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img21.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pada bagian ‘ #listen = *, :: ’ hilangkan # pada bagian awal. Hingga menjadi ‘listen = *, ::’",
                          ),
                          generalParagraph(
                            "Lalu simpan file.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "File ke 2",
                        [
                          generalParagraph(
                            "File kedua yang akan kita konfigurasi yaitu file 10-auth.conf yang berada pada direktori conf.d dan masih didalam direktori /etc/dovecot/. Jalankan perintah berikut untuk membuka file 10-auth.conf :",
                          ),
                          generalScript(
                            "nano conf.d/10-auth.conf",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img22.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Selanjutnya di dalam file :",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img23.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pada script ‘#disable_plaintext_auth = yes’ hilangkan # pada bagian awal dan ubah value ‘yes’ menjadi ‘no’. Sehingga script nya menjadi :",
                          ),
                          generalScript(
                            "disable_plaintext_auth = no",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img24.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Lalu simpan file.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "File ke 3",
                        [
                          generalParagraph(
                            "File ketiga yang akan kita konfigurasi yaitu file 10-mail.conf yang berada pada direktori conf.d dan masih didalam direktori /etc/dovecot/. Jalankan perintah berikut untuk membuka file 10-mail.conf :",
                          ),
                          generalScript(
                            "nano conf.d/10-mail.conf",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img25.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Tampilan awal file :",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img26.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Selanjutnya di dalam file tersebut kita akan mengubah beberapa script :",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img27.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Hingga menjadi seperti :",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img28.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Lalu simpan file.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 11",
                        [
                          generalParagraph(
                            "Selanjutnya, restart dovecot. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "service dovecot restart",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img29.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 12",
                        [
                          generalParagraph(
                            "Setelah selesai restart dovecot, kita arahkan direktori kita ke direktori awal. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "cd",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 13",
                        [
                          generalParagraph(
                            "Selanjutnya kita akan melihat status postfix, apakah sudah aktif dan berjalan atau belum. Jalankan perintah berikut untuk melakukan hal tersebut :",
                          ),
                          generalScript(
                            "service postfix status",
                          ),
                          generalParagraph(
                            "Jika hasilnya sama seperti pada gambar, maka postfix sudah berjalan dengan baik.",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img30.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 14",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan melihat status dovecot, apakah sudah berjalan dengan benar atau belum. Jalankan perintah :",
                          ),
                          generalScript(
                            "service dovecot status",
                          ),
                          generalParagraph(
                            "Jika hasilnya sama seperti pada gambar, maka dovecot sudah berjalan dengan baik.",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img31.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Untuk keluar dari perintah tersebut :",
                          ),
                          generalScript(
                            "Tekan tombol CTRL dan C secara bersamaan.",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 15",
                        [
                          generalParagraph(
                            "Setelah selesai, selanjutnya kita akan menambahkan 2 user untuk mail server yaitu user pengirim dan user penerima.",
                          ),
                          generalParagraph(
                            "Kita akan membuat user pertama dulu, yaitu user pengirim. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "adduser pengirim",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img32.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "(untuk penamaan user terserah, sesuai kebutuhan)",
                          ),
                          generalParagraph(
                            "Setelah itu isikan password, dan untuk data-data yang lain cukup kosongkan saja dan tekan ENTER.",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img33.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 16",
                        [
                          generalParagraph(
                            "Setelah menambahkan user pengirim, selanjutnya kita akan menambahkan user kedua yaitu user penerima. Caranya sama saja seperti user pengirim :",
                          ),
                          generalScript(
                            "adduser penerima",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img34.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 17",
                        [
                          generalParagraph(
                            "Setelah penambahan kedua user tersebut sudah berhasil, langkah selanjutnya kita akan coba melakukan koneksi dan pengiriman email melalui protokol SMTP yang port nya adalah port 25 menggunakan telnet. Jalankan perintah berikut untuk melakukan hal tersebut :",
                          ),
                          generalScript(
                            "telnet localhost 25",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img35.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 18",
                        [
                          generalParagraph(
                            "Jika berhasil terhubung ke protokol SMTP, maka akan keluar tampilan sebagai berikut :",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img36.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 19",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan mengirimkan mail ke user penerima. Jalankan perintah-perintah dibawah sesuai dengan urutan.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Perintah ke 1",
                        [
                          generalParagraph(
                            "Jalankan perintah berikut untuk menentukan user yang akan mengirim mail :",
                          ),
                          generalScript(
                            "mail from: pengirim",
                          ),
                          generalParagraph(
                            "Lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        'Perintah ke 2',
                        [
                          generalParagraph(
                            "Setelah itu, kita akan memasukkan user penerima. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "rcpt to: penerima",
                          ),
                          generalParagraph(
                            "Lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Perintah ke 3",
                        [
                          generalParagraph(
                            "Untuk memasukkan pesan, jalankan perintah berikut :",
                          ),
                          generalScript(
                            "data",
                          ),
                          generalParagraph(
                            "Lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Perintah ke 4",
                        [
                          generalParagraph(
                            "Setelah itu, masukkan pesan yang akan dikirimkan. Isinya terserah saja.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Perintah ke 5",
                        [
                          generalParagraph(
                            "Setelah selesai membuat pesan yang akan dikirimkan, tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Perintah ke 6",
                        [
                          generalParagraph(
                            "Untuk keluar dari konsol telnet SMTP, Jalankan perintah :",
                          ),
                          generalScript(
                            ".",
                          ),
                          generalParagraph(
                            "Lalu jalankan perintah :",
                          ),
                          generalScript(
                            "quit",
                          ),
                        ],
                        10,
                      ),
                      mCardStep(
                        "Tampilan keseluruhan perintah",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img37.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 20",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan melihat apakah pesan dari user pengirim sudah sampai ke user penerima. Caranya kita harus terhubung ke protokol POP3 milik dovecot yang port nya adalah port 110 menggunakan telnet. Jalankan perintah berikut untuk melakukannya :",
                          ),
                          generalScript(
                            "telnet localhost 110",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 21",
                        [
                          generalParagraph(
                            "Jika terhubung, maka akan keluar tampilan berikut :",
                          ),
                          cGambar(
                            context,
                            assets + "mailserv_img38.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 22",
                        [
                          generalParagraph(
                            "Setelah terhubung, kita akan melakukan login user penerima dan melihat pesan yang sudah di kirim tadi. Jalankan perintah-perintah dibawah :",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Perintah ke 1",
                        [
                          SizedBox(
                            height: 10,
                          ),
                          generalScript(
                            "user penerima",
                          ),
                          generalParagraph(
                            "Tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Perintah ke 2",
                        [
                          SizedBox(
                            height: 10,
                          ),
                          generalScript(
                            "pass 1 (Password user penerima)",
                          ),
                          generalParagraph(
                            "Tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Perintah ke 3",
                        [
                          generalParagraph(
                            "Untuk melihat kotak masuk, apakah mail yang dikirim user pengirim sudah masuk atau belum, jalankan perintah :",
                          ),
                          generalScript(
                            "stat",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Perintah ke 4",
                        [
                          generalParagraph(
                            "Nanti akan keluar output yang berisikan nomor index pesan. Nomor ini akan kita gunakan untuk menampilkan pesan. Jalankan perintah berikut untuk melakukannya :",
                          ),
                          generalScript(
                            "retr 1 (nomor index)",
                          ),
                          generalParagraph(
                            "Jika berhasil, maka pesan yang dikirim dari user penerima tadi akan terlihat.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Perintah ke 5",
                        [
                          generalParagraph(
                            "Selanjutnya, jalankan perintah berikut untuk keluar dari konsol telnet POP3 :",
                          ),
                          generalScript(
                            "quit",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Tampilan keseluruhan perintah",
                        [
                          cGambar(
                            context,
                            assets + "mailserv_img39.png",
                            BoxFit.fill,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Pemecahan Masalah",
                        [generalParagraph(". . .")],
                        0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox mCardStep(String title, List<Widget> content, double bot) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * 0.2,
      child: Card(
        elevation: 0.1,
        child: Container(
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                  ),
                ),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Nunito",
                        fontSize: 15),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10, left: 10, bottom: bot),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: content,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox cardStep(String title, List<Widget> content, double bot) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * 0.2,
      child: Card(
        elevation: 0.5,
        child: Container(
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFD70751),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                  ),
                ),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Nunito",
                        fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10, left: 10, bottom: bot),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: content,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container cGambar(BuildContext context, String url, BoxFit size) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
            image: AssetImage(
              url,
            ),
            fit: size,
          )),
    );
  }

  Container generalScript(String text) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(right: 5, left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontFamily: "Montserrat", fontWeight: FontWeight.w700),
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }

  Container generalParagraph(String paragraph) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        paragraph,
        style: TextStyle(fontSize: 15, fontFamily: "Nunito"),
        textAlign: TextAlign.justify,
      ),
    );
  }

  SizedBox cDivider() {
    return SizedBox(
      height: 1,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Color(0xFFD70751),
          ),
        ),
      ),
    );
  }
}
