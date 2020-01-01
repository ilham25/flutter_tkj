import 'package:flutter/material.dart';

class SshPage extends StatelessWidget {
  final String assets = "assets/images/debian/ssh_img/";
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
                      "SSH",
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
                            "1. Konfigurasi IP sudah berhasil.",
                          ),
                          generalParagraph(
                            "2. Mempunyai software PuTTY.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 1",
                        [
                          generalParagraph(
                            "Langkah pertama, kita akan menginstall paket protokol ssh. Jalankan perintah berikut :",
                          ),
                          generalScript(
                            "apt-get install ssh",
                          ),
                          cGambar(
                            context,
                            assets + "ssh_img1.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 2",
                        [
                          generalParagraph(
                            "Sebenarnya, setelah melakukan instalasi, kita sudah bisa menggunakan ssh. Akan tetapi, kita tidak dapat login sebagai user root. Nah, yang akan kita konfigurasi selanjutnya itu adalah kita akan memberikan akses login sebagai root saat menggunakan ssh.",
                          ),
                          generalParagraph(
                            "Oleh sebab itu, kita akan melakukan konfigurasi ssh dimana file konfigurasi nya bernama sshd_config yang berada pada direktori /etc/ssh/. Jalankan perintah berikut untuk membuka file tersebut :",
                          ),
                          generalScript(
                            "nano /etc/ssh/sshd_config",
                          ),
                          cGambar(
                            context,
                            assets + "ssh_img2.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      mCardStep(
                        "Tampilan awal file",
                        [
                          cGambar(
                            context,
                            assets + "ssh_img3.png",
                            BoxFit.fill,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 3",
                        [
                          generalParagraph(
                            "Setelah berhasil membuka file sshd_config, selanjutnya silahkan scroll sampai ke bagian ‘# Authentication’.",
                          ),
                          cGambar(
                            context,
                            assets + "ssh_img4.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 4",
                        [
                          generalParagraph(
                            "Pada script ‘#PermitRootLogin prohibit-password’ , hilangkan tanda pagar(#) yang berada di awal script tersebut, dan ubah kata ‘prohibit-password’ menjadi ‘yes’ , seperti gambar berikut :",
                          ),
                          cGambar(
                            context,
                            assets + "ssh_img5.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 5",
                        [
                          generalParagraph(
                            "Setelah itu, silahkan simpan file sshd_config tersebut.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 6",
                        [
                          generalParagraph(
                            "Seperti biasa, setelah melakukan konfigurasi suatu paket, kita akan me restart paket tersebut. Jalankan perintah berikut untuk restart paket ssh :",
                          ),
                          generalScript(
                            "service ssh restart",
                          ),
                          cGambar(
                            context,
                            assets + "ssh_img6.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 7",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan menguji apakah ssh dan akses login sebagai root nya sudah berjalan. Disini kita akan menggunakan software yang bernama PuTTY. Pada tampilan awal PuTTY, isikan beberapa hal berikut:",
                          ),
                          generalParagraph(
                            "Pada bagian ‘Host Name(or IP Address)’ isikan IP server, yaitu :",
                          ),
                          generalScript(
                            "192.168.1.1",
                          ),
                          generalParagraph(
                            "Pada bagian ‘Port’ isikan port default ssh, yaitu :",
                          ),
                          generalScript(
                            "22",
                          ),
                          generalParagraph(
                            "Pada bagian ‘Connection type:’ pilih :",
                          ),
                          generalParagraph(
                            "SSH",
                          ),
                          cGambar(
                            context,
                            assets + "ssh_img7.png",
                            BoxFit.fill,
                          ),
                          generalParagraph(
                            "Setelah mengisikan beberapa data yang kita perlukan tadi, silahkan tekan tombol ‘Open’ atau tekan ENTER pada keyboard.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 8",
                        [
                          generalParagraph(
                            "Jika koneksi berhasil, maka akan keluar sebuah dialog peringatan. Kita tekan saja tombol ‘Yes’.",
                          ),
                          cGambar(
                            context,
                            assets + "ssh_img8.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 9",
                        [
                          generalParagraph(
                            "Selanjutnya akan keluar konsol PuTTY yang dimana kita akan mengisikan data user root seperti berikut :",
                          ),
                          cGambar(
                            context,
                            assets + "ssh_img9.png",
                            BoxFit.contain,
                          ),
                          generalScript(
                            "login as: root (user root)",
                          ),
                          generalScript(
                            "password: (masukkan password user root)",
                          ),
                          generalParagraph(
                            "Lalu tekan tombol ENTER.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 10",
                        [
                          generalParagraph(
                            "Setelah berhasil login, maka akan keluar tampilan seperti berikut pada konsol PuTTY :",
                          ),
                          cGambar(
                            context,
                            assets + "ssh_img10.png",
                            BoxFit.fill,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Akhir",
                        [
                          generalParagraph(
                            "Sampai disini kita sudah berhasil remote server menggunakan protokol ssh yang dimana kita menggunakan software PuTTY untuk melakukan hal tersebut.",
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
