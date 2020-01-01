import 'package:flutter/material.dart';

class WebServPage extends StatelessWidget {
  final String assets = "assets/images/debian/webserv_img/";
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
                      "Web Server",
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
                              "1. Sebelum melanjutkan, syarat supaya web server bisa diakses, harus berhasil melakukan konfigurasi IP Address terlebih dahulu pada PC server."),
                          generalParagraph(
                              "2. Pada PC Client, tambahkan IP yang satu segmen dengan server debian."),
                          generalParagraph(
                              "Dalam kasus ini kita menggunakan IP dengan segmen 192.168.1.0/24."),
                          generalParagraph(
                              "Beri IP Address pada client dalam rentang 192.168.1.2 sampai 192.168.1.254."),
                          generalParagraph(
                              "Kenapa tidak mulai dari 192.168.1.1? Karena IP Address tersebut sudah kita pakai sebagai IP Address server debian."),
                          cDivider(),
                          generalParagraph(
                              "Setelah memenuhi persyaratan diatas, silahkan lanjutkan ke langkah selanjutnya.")
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah 1",
                        [
                          generalParagraph(
                              "Langkah pertama, lakukan instalasi paket web server pada server debian. Jalankan perintah berikut :"),
                          generalScript("apt-get install apache2")
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah 2",
                        [
                          generalParagraph(
                              "Setelah berhasil melakukan instalasi paket web server pada server debian, hubungkan PC server debian dengan client."),
                          generalParagraph(
                              "Pada client, bukalah browser, lalu masukkan IP Address server ke browser."),
                          generalScript("192.168.1.1"),
                          generalParagraph(
                              "Jika web server berhasil diakses, maka pada browser di PC client akan menampilkan halaman 'Apache2 Debian Default Page'."),
                          cGambar(context, assets + "webserv_img1.png",
                              BoxFit.contain),
                        ],
                        0,
                      ),
                      cardStep(
                        "Pemecahan Masalah",
                        [
                          generalParagraph(
                              "Jika tampilan Apache2 tidak muncul pada browser di PC client, silahkan lakukan beberapa hal berikut :"),
                          generalParagraph(
                              "1. Cek IP Address pada PC client apakah sudah benar."),
                          generalParagraph(
                              "2. Jika IP Address pada PC client sudah dirasa benar, coba lakukan pengecekan koneksi dari client ke server dengan melakukan 'ping' ke IP Address server dengan menggunakan cmd/terminal. Jika pesan yang ditampilkan 'reply from --- , berarti PC client sudah tersambung dengan server. Akan tetapi, jika pesan yang ditampilkan 'request timed out' atau 'unreachable', maka silahkan cek kembali IP Address pada PC Client dan PC server."),
                          generalParagraph(
                              "3. Jika hal diatas sudah dilakukan dan masih terjadi error, silahkan cek koneksi kabel antara PC Client dengan PC server, sudah tersambung atau belum.")
                        ],
                        0,
                      )
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
}
