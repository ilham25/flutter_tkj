import 'package:flutter/material.dart';

class WebmPage extends StatelessWidget {
  final String assets = "assets/images/debian/webmail_img/";
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
                      "Webmail",
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
                        'Syarat',
                        [
                          generalParagraph(
                            "1. Harus berhasil dalam konfigurasi IP Address.",
                          ),
                          generalParagraph(
                            "2. Harus berhasil dalam konfigurasi DNS.",
                          ),
                          generalParagraph(
                            "3. Harus berhasil dalam konfigurasi MySQL dan phpmyadmin.",
                          ),
                          generalParagraph(
                            "4. Harus berhasil dalam konfigurasi mail server.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 1",
                        [
                          generalParagraph(
                            "Langkah pertama kita akan menginstal paket webmail, yaitu roundcube. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "apt-get install roundcube",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img1.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 2",
                        [
                          generalParagraph(
                            "Pada saat pertama kali instal, maka akan keluar tampilan error. Hal ini disebabkan karena kita belum menambahkan repository(sumber instalan) roundcube yang berada pada disc 3.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img2.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 3",
                        [
                          generalParagraph(
                            "Maka dari itu, kita harus menambahkan repository yang berada pada disc 3. Caranya, silahkan masukkan disc 3 dan jalankan perintah :",
                          ),
                          generalScript(
                            "apt-cdrom add",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img3.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 4",
                        [
                          generalParagraph(
                            "Jika sudah keluar tampilan seperti berikut, maka kita sudah berhasil menambahkan repository yang berada pada disc 3.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img4.png",
                            BoxFit.fill,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 5",
                        [
                          generalParagraph(
                            "Setelah itu, kita coba lagi melakukan instalasi roundcube. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "apt-get install roundcube",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 6",
                        [
                          generalParagraph(
                            "Biasanya, setelah instal akan terjadi error. Hal itu disebabkan karena roundcube memerlukan beberapa paket php yang harus di instal. Maka dari itu, kita akan memperbaiki/melakukan instalasi terhadap paket php yang diperlukan oleh roundcube. Untuk itu, manajer instalasi apt sudah menyediakan fitur untuk menginstalasi paket paket yang hilang/diperlukan untuk di instal. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "apt-get install -f",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img5.png",
                            BoxFit.contain,
                          ),
                          generalScript(
                            "Tampilan Error",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img6.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Langkah langkah nya sama saja seperti saat melakukan instalasi paket paket yang lain.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 7",
                        [
                          generalParagraph(
                            "Setelah berhasil melakukan instalasi paket yang hilang/diperlukan, maka lakukan instalasi paket roundcube sekali lagi. Jalankan perintah :",
                          ),
                          generalScript(
                            "apt-get install roundcube",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 8",
                        [
                          generalParagraph(
                            "Saat proses instalasi, akan keluar beberapa tampilan dialog. Berikut tutorial untuk masing-masing dialog.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 1",
                        [
                          cGambar(
                            context,
                            assets + "webmail_img7.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pilih Yes dan tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 2",
                        [
                          cGambar(
                            context,
                            assets + "webmail_img8.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Silahkan masukkan password, lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 3",
                        [
                          cGambar(
                            context,
                            assets + "webmail_img9.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Ulangi memasukkan password, lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 9",
                        [
                          generalParagraph(
                            "Setelah tampilan beberapa dialog tadi, sekali lagi akan keluar error pada saat setelah instalasi. Lakukan lagi perintah berikut untuk melakukan perbaikan error tersebut :",
                          ),
                          generalScript(
                            "apt-get install -f",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 10",
                        [
                          generalParagraph(
                            "Setelah dilakukan perbaikan terhadap error, maka akan keluar beberapa tampilan berikut yang menandakan bahwa instalasi roundcube sudah berhasil.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img10.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 11",
                        [
                          generalParagraph(
                            "Untuk memastikan apakah roundcube sudah benar-benar berhasil di instal, jalankan perintah instalasi roundcube sekali lagi.",
                          ),
                          generalScript(
                            "apt-get install roundcube",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 12",
                        [
                          generalParagraph(
                            "Jika sudah keluar tampilan seperti pada gambar, maka roundcube sudah berhasil di instal.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img11.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 13",
                        [
                          generalParagraph(
                            "Selanjutnya kita akan konfigurasi file roundcube yaitu file config.inc.php yang berada pada direktori /etc/roundcube/. Jalankan perintah berikut untuk melakukan hal tersebut :",
                          ),
                          generalScript(
                            "nano /etc/roundcube/config.inc.php",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img12.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 14",
                        [
                          generalParagraph(
                            "Setelah itu, scroll file tersebut ke bawah. Lalu pada bagian berikut, ubah sesuai dengan gambar :",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img13.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Setelah itu simpan file.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 15",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan menambahkan file konfigurasi web server apache2 untuk webmail kita. Untuk itu, pertama kali kita masuk terlebih dahulu ke direktori file konfigurasi apache2 yaitu direktori /etc/apache2/sites-available/. Jalankan perintah berikut untuk melakukan hal tersebut :",
                          ),
                          generalScript(
                            "cd /etc/apache2/sites-available/",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img14.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 16",
                        [
                          generalParagraph(
                            "Setelah itu, kita akan menyalin file 000-default.conf menjadi file mail.conf. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "cp 000-default.conf mail.conf",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img15.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 17",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan mengubah beberapa isi dari file mail.conf. Jalankan perintah berikut untuk membuka file mail.conf :",
                          ),
                          generalScript(
                            "nano mail.conf",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img16.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 18",
                        [
                          generalParagraph(
                            "Ubah beberapa script didalam file tersebut sesuai dengan gambar :",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img17.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Simpan file mail.conf",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 19",
                        [
                          generalParagraph(
                            "Setelah itu, kita aktifkan file tersebut agar webmail bisa diakses dan dibaca oleh web server apache2. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "a2ensite mail.conf",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img18.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 20",
                        [
                          generalParagraph(
                            "Selanjutnya, restart web server apache2. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "service apache2 restart",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img19.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 21",
                        [
                          generalParagraph(
                            "Agar bisa diakses oleh client, kita harus menambahkan DNS/domain baru pada file db.forward dan db.reverse yang berada pada direktori /etc/bind/. Pertama kali kita harus masuk ke direktori /etc/bind/ terlebih dahulu, jalankan perintah berikut :",
                          ),
                          generalScript(
                            "cd /etc/bind/",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 22",
                        [
                          generalParagraph(
                            "Pertama kali, kita tambahkan beberapa script didalam file db.forward terlebih dahulu. Jalankan perintah berikut untuk membuka file db.forward :",
                          ),
                          generalScript(
                            "nano db.forward",
                          ),
                          generalParagraph(
                            "Tambahkan beberapa script berikut dibawah file tersebut :",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img20.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Simpan file db.forward",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 23",
                        [
                          generalParagraph(
                            "Kedua, kita tambahkan beberapa script juga ke dalam file db.reverse. Jalankan perintah berikut untuk membuka file db.reverse :",
                          ),
                          generalScript(
                            "nano db.reverse",
                          ),
                          generalParagraph(
                            "Tambahkan script berikut dibawah file tersebut :",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img21.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Simpan file db.reverse.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 24",
                        [
                          generalParagraph(
                            "Selanjutnya restart paket DNS yaitu bind9. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "service bind9 restart",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img22.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 25",
                        [
                          generalParagraph(
                            "Setelah itu kita akan memeriksa apakah domain mail sudah terdaftar pada domain utama.",
                          ),
                          generalParagraph(
                            "Format perintah nya :",
                          ),
                          generalScript(
                            "host (nama domain utama)",
                          ),
                          generalParagraph(
                            "Yang akan kita pakai :",
                          ),
                          generalScript(
                            "host tkj.com",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img23.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 26",
                        [
                          generalParagraph(
                            "Selanjutnya kita akan coba akses domain mail kita yaitu mail.tkj.com. Pada PC client silahkan akses domain mail tersebut di browser. Jika sudah keluar tampilan roundcube di browser, maka konfigurasi roundcube sudah berhasil.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img24.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 27",
                        [
                          generalParagraph(
                            "Setelah itu silahkan login menggunakan user dan password yang sudah kita buat pada saat konfigurasi mail server.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img25.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 28",
                        [
                          generalParagraph(
                            "Tekan tombol ‘Compose’ untuk membuat pesan.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img26.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 29",
                        [
                          generalParagraph(
                            "Pada tampilan pembuatan pesan, isikan sebagai berikut :",
                          ),
                          generalScript(
                            "To : penerima@tkj.com (user penerima@domain utama)",
                          ),
                          generalScript(
                            "Subject : isi terserah saja",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 30",
                        [
                          generalParagraph(
                            "Pada kotak putih dibawah itu adalah kotak tempat pesan yang akan dikirimkan. Isikan saja terserah.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img27.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 31",
                        [
                          generalParagraph(
                            "Tekan tombol ‘Send’ untuk mengirimkan mail ke user penerima.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img28.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 32",
                        [
                          generalParagraph(
                            "Selanjutnya tekan tombol ‘logout’ untuk keluar dari roundcube.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img29.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 33",
                        [
                          generalParagraph(
                            "Selanjutnya login sebagai user penerima.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img30.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 34",
                        [
                          generalParagraph(
                            "Sekarang kita periksa, apakah pesan yang dikirim oleh user pengirim sudah masuk kedalam kotak masuk user penerima. Berikut tampilan kotak masuk jika pesan yang dikirim sudah masuk.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img31.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 35",
                        [
                          generalParagraph(
                            "Klik 2 kali pesan tersebut untuk melihat isi pesan.",
                          ),
                          cGambar(
                            context,
                            assets + "webmail_img32.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Akhir",
                        [
                          generalParagraph(
                            "Sampai disini kita sudah bisa konfigurasi webmail dan saling mengirimkan pesan antar user melalui webmail.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Pemecahan Masalah",
                        [
                          generalParagraph(
                            ". . .",
                          ),
                        ],
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
        elevation: 2,
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
        elevation: 1,
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
