import 'package:flutter/material.dart';

class MysqlPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String assets = "assets/images/debian/mysql_img/";
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
                      "MySQL / phpmyadmin",
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
                            "1. Setidaknya harus selesai melakukan konfigurasi IP Address.",
                          ),
                          generalParagraph(
                            "2. Sudah memasang instalasi paket webserver yaitu Apache2.",
                          ),
                          generalParagraph(
                            "3. Jika konfigurasi DNS sudah berhasil, maka akan mempermudah pekerjaan kita nantinya untuk phpmyadmin.",
                          ),
                          generalScript(
                            "Catatan :",
                          ),
                          generalScript(
                            "Kita akan membuat user untuk database MySQL dengan data sebagai berikut :",
                          ),
                          generalScript(
                            "         User : tkj",
                          ),
                          generalScript(
                            "         Password : 1234",
                          ),
                          generalScript(
                            "Untuk kebutuhan masing-masing, silahkan disesuaikan.",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 1",
                        [
                          generalParagraph(
                            "Langkah pertama, kita akan melakukan instalasi paket MySQL yaitu mysql-server dan mysql-client, serta phpmyadmin supaya kita bisa mengakses database MySQL dengan tampilan web. Untuk paket phpmyadmin, kita harus menginstal paket php, karena jika tidak ada paket php, make paket phpmyadmin tidak akan bisa berjalan. Berikut perintah untuk memasang semua paket yang kita butuhkan :",
                          ),
                          generalScript(
                            "apt-get install php phpmyadmin mysql-server mysql-client",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 2",
                        [
                          generalParagraph(
                            "Pada saat ditengah-tengah instalasi, nanti kita akan dihentikan sementara oleh sebuah dialog. Berikut dialog dan pilihan yang harus kita pilih :",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 1",
                        [
                          cGambar(
                            context,
                            assets + "mysql_img1.png",
                            BoxFit.fill,
                          ),
                          generalParagraph(
                            "Pilih ‘Yes’ dan tekan tombol ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 2",
                        [
                          cGambar(
                            context,
                            assets + "mysql_img2.png",
                            BoxFit.fill,
                          ),
                          generalParagraph(
                            "Isikan password untuk phpmyadmin nya, disini kita akan menggunakan password 1234. Tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 3",
                        [
                          cGambar(
                            context,
                            assets + "mysql_img3.png",
                            BoxFit.fill,
                          ),
                          generalParagraph(
                            "Masukkan password sekali lagi untuk konfirmasi lalu tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Dialog ke 4",
                        [
                          cGambar(
                            context,
                            assets + "mysql_img4.png",
                            BoxFit.fill,
                          ),
                          generalParagraph(
                            "Dialog terakhir, pada ‘apache2’ tekan spasi. Jika sudah keluar * disamping tulisan ‘apache2’, tekan ENTER.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 3",
                        [
                          generalParagraph(
                            "Setelah instalasi berhasil, selanjutnya kita akan menambahkan user database MySQL sesuai dengan data user diatas. Caranya kita harus masuk dulu ke dalam console MySQL, jalankan perintah berikut :",
                          ),
                          generalScript(
                            "mysql -p -u root",
                          ),
                          generalParagraph(
                            "Nanti kita akan diminta memasukkan password root, silahkan masukkan.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 4",
                        [
                          generalParagraph(
                            "Setelah memasukkan password root, maka akan keluar tampilan konsol MySQL.",
                          ),
                          cGambar(
                            context,
                            assets + "mysql_img5.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 5",
                        [
                          generalParagraph(
                            "Pada console MySQL, jalankan perintah berikut untuk menambahkan user baru.",
                          ),
                          generalParagraph(
                            "Formatnya sebagai berikut :",
                          ),
                          generalScript(
                            "create user ‘(nama user)’@’%’ identified by ‘(password)’;",
                          ),
                          generalParagraph(
                            "Sesuai dengan data user diatas yang sudah diberikan, maka kita akan menggunakan perintah :",
                          ),
                          generalScript(
                            "create user ‘tkj’@’%’ identified by ‘1234’;",
                          ),
                          cGambar(
                            context,
                            assets + "mysql_img7.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 6",
                        [
                          generalParagraph(
                            "Selanjutnya kita akan memberikan semua akses database MySQL ke user yang baru saja kita buat tadi.",
                          ),
                          generalParagraph(
                            "Format perintahnya :",
                          ),
                          generalScript(
                            "grant all privileges on *.* to ‘(nama user)’@’%’;",
                          ),
                          generalParagraph(
                            "Sesuai dengan data user kita, maka kita akan menggunakan perintah :",
                          ),
                          generalScript(
                            "grant all privileges on *.* to ‘tkj’@’%’;",
                          ),
                          cGambar(
                            context,
                            assets + "mysql_img6.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 7",
                        [
                          generalParagraph(
                            "Sampai disini kita sudah berhasil membuat user yang memiliki akses penuh ke database MySQL.",
                          ),
                          generalScript(
                            "Tekan tombol CTRL dan X secara bersamaan untuk keluar dari console MySQL.",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 8",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan mengakses phpmyadmin di PC client. Caranya, buka lah browser pada PC client, dan akses :",
                          ),
                          generalParagraph(
                            "Jika belum melakukan konfigurasi DNS, format nya sebagai berikut : ",
                          ),
                          generalScript(
                            "(IP Address)/phpmyadmin",
                          ),
                          generalScript(
                            "Contoh : 192.168.1.1/phpmyadmin",
                          ),
                          generalParagraph(
                            "Jika sudah melakukan konfigurasi DNS, format nya sebagai berikut :",
                          ),
                          generalScript(
                            "(nama domain)/phpmyadmin",
                          ),
                          generalScript(
                            "Contoh : tkj.com/phpmyadmin",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 9",
                        [
                          generalParagraph(
                            "Karena pada tutorial kali ini kita sudah menkonfigurasi DNS, maka di browser kita akan mengakses : tkj.com/phpmyadmin",
                          ),
                          cGambar(
                            context,
                            assets + "mysql_img8.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 10",
                        [
                          generalParagraph(
                            "Jika instalasi paket php dan phpmyadmin berhasil, maka akan keluar tampilan sebagai berikut di browser pada PC client.",
                          ),
                          cGambar(
                            context,
                            assets + "mysql_img9.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 11",
                        [
                          generalParagraph(
                            "Supaya kita bisa mengakses database menggunakan phpmyadmin, maka kita harus login terlebih dahulu menggunakan user MySQL yang sebelumnya sudah kita buat.",
                          ),
                          generalScript(
                            "Username : tkj",
                          ),
                          generalScript(
                            "Password : 1234",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 12",
                        [
                          generalParagraph(
                            "Jika sudah keluar tampilan sebagai berikut, maka konfigurasi user MySQL sudah berhasil.",
                          ),
                          cGambar(
                            context,
                            assets + "mysql_img10.png",
                            BoxFit.fill,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Akhir",
                        [
                          generalParagraph(
                            "Sampai disini kita sudah berhasil melakukan konfigurasi pada MySQL.",
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

  SizedBox cardStep(String title, List<Widget> content, double bot) {
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
