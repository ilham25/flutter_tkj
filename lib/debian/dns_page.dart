import 'package:flutter/material.dart';

class DnsPage extends StatelessWidget {
  final String assets = "assets/images/debian/dns_img/";
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
                      "DNS / Bind9",
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
                            "1. Syarat pertama untuk melakukan konfigurasi DNS, harus berhasil dalam melakukan konfigurasi IP Address pada PC server.",
                          ),
                          generalParagraph(
                            "2. Paket web server sudah terinstal dan berhasil dijalankan.",
                          ),
                          generalScript(
                            "Nama domain yang akan kita pakai untuk DNS saat ini yaitu tkj.com. Sesuaikan nama DNS sesuai dengan kebutuhan masing-masing.",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          cDivider(),
                          generalParagraph(
                            "Setelah memenuhi persyaratan diatas, silahkan lanjutkan ke langkah selanjutnya.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 1",
                        [
                          generalParagraph(
                            "Langkah pertama, masukkan disc 2. Lalu, jalankan perintah berikut :",
                          ),
                          generalScript(
                            "apt-cdrom add",
                          ),
                          generalParagraph(
                              "Selanjutnya, lakukan instalasi paket DNS yaitu bind9 dan paket tool untuk DNS yaitu dnsutils. Jalankan perintah berikut untuk melakukan hal tersebut :"),
                          generalScript(
                            "apt-get install dnsutils bind9",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 2",
                        [
                          generalParagraph(
                            "Setelah berhasil melakukan instalasi paket DNS dan tool nya, selanjutnya kita akan melakukan konfigurasi pada file DNS yang berada pada direktori /etc/bind/. Jalankan perintah berikut untuk masuk ke direktori tersebut :",
                          ),
                          generalScript(
                            "cd /etc/bind/",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 3",
                        [
                          generalParagraph(
                            "File konfigurasi yang akan kita pakai/edit yaitu file named.conf.local. Jalankan perintah berikut untuk membuka file tersebut :",
                          ),
                          generalScript(
                            "nano named.conf.local",
                          ),
                          generalParagraph(
                            "Didalam file ini, yang akan kita konfigurasi yaitu forward IP menjadi DNS, dan reverse DNS menjadi IP, yang mana sangat penting dalam konfigurasi DNS.",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 4 (Forward)",
                        [
                          generalParagraph(
                            "Pada bagian kosong dalam file named.conf.local, masukkan script berikut :",
                          ),
                          generalScript(
                            'zone "tkj.com" {',
                          ),
                          generalScript(
                            '         type master;',
                          ),
                          generalScript(
                            '         file "/etc/bind/db.forward";',
                          ),
                          generalScript(
                            "};",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 5 (Reverse)",
                        [
                          generalParagraph(
                              "Catatan : IP Address yang kita gunakan yaitu 192.168.1.1. Kita membutuhkan 3 oktet pertama dari IP tersebut, jadi kita hanya akan memakai 192.168.1. Nantinya pada konfigurasi reverse, 3 oktet IP tersebut akan dibalikkan letak nya menjadi 1.168.192."),
                          generalParagraph(
                            "Dibawah script Reverse, masukkan script berikut :",
                          ),
                          generalScript(
                            'zone "1.168.192.in-addr.arpa" {',
                          ),
                          generalScript(
                            '         type master;',
                          ),
                          generalScript(
                            '         file "/etc/bind/db.reverse";',
                          ),
                          generalScript(
                            "};",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Tampilan Script",
                        [
                          cGambar(
                            context,
                            assets + "dns_img1.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 6",
                        [
                          generalParagraph(
                            "Selanjutnya kita akan menyalin file db.local menjadi file db.forward dimana file tersebut merupakan file konfigurasi yang akan kita gunakan untuk DNS forward. Jalankan perintah berikut untuk menyalin file db.local menjadi db.forward :",
                          ),
                          generalScript(
                            "cp db.local db.forward",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 7",
                        [
                          generalParagraph(
                            "Setelah file DNS Forward selesai di salin, selanjutnya kita akan menyalin file db.127 menjadi file db.reverse dimana file tersebut merupakan file konfigurasi yang akan kita gunakan untuk DNS reverse. Jalankan perintah berikut untuk menyalin file db.127 menjadi db.reverse :",
                          ),
                          generalScript(
                            "cp db.127 db.reverse",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 8",
                        [
                          generalParagraph(
                              "Setelah melakukan copy kedua file tadi, selanjutnya kita lihat isi direktori /etc/bind/ apakah sudah ada file db.forward dan db.reverse tersebut. Jalankan perintah berikut untuk melihat isi direktori :"),
                          generalScript("ls"),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 9",
                        [
                          generalParagraph(
                            "Jika output perintah tadi sudah sama seperti gambar, maka kita sudah berhasil menyalin dan membuat file db.forward dan db.reverse",
                          ),
                          cGambar(
                            context,
                            assets + "dns_img2.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 10",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan melakukan konfigurasi pada db.forward. Tampilan awal db.forward :",
                          ),
                          cGambar(
                            context,
                            assets + "dns_img3.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Ubah beberapa isi file tersebut menjadi seperti berikut :",
                          ),
                          cGambar(
                            context,
                            assets + "dns_img4.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Setelah selesai, simpan file db.forward.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 11",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan melakukan konfigurasi pada file db.reverse. Tampilan awal db.reverse :",
                          ),
                          cGambar(
                            context,
                            assets + "dns_img5.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Ubah beberapa isi dalam file tersebut menjadi seperti berikut :",
                          ),
                          cGambar(
                            context,
                            assets + "dns_img6.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                              "Setelah itu, simpan file db.reverse"),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 12",
                        [
                          generalParagraph(
                              "Jika konfigurasi sudah dirasa benar, maka selanjutnya restart bind9. Jalankan perintah berikut :"),
                          generalScript("service bind9 restart"),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 13",
                        [
                          generalParagraph(
                              "Setelah melakukan restart bind9, selanjutnya kita akan mengubah isi file resolv.conf yang berada pada direktori /etc/. Jalankan perintah berikut untuk melakukan hal tersebut :"),
                          generalScript("nano /etc/resolv.conf"),
                          generalParagraph(
                            "Hapus semua tulisan di dalam file tersebut. Setelah kosong, tambahkan script berikutHapus semua tulisan di dalam file tersebut. Setelah kosong, tambahkan script berikut :",
                          ),
                          generalParagraph(
                            "Format script :",
                          ),
                          generalScript(
                            "nameserver <IP ADDRESS SERVER>",
                          ),
                          generalParagraph(
                            "Script yang akan kita gunakan :",
                          ),
                          generalScript(
                            "nameserver 192.168.1.1",
                          ),
                          cGambar(
                            context,
                            assets + "dns_img7.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 14",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan menguji apakah DNS forward kita sudah benar menggunakan tool nslookup. Jalankan perintah berikut :",
                          ),
                          generalParagraph(
                            "Format perintah :",
                          ),
                          generalScript(
                            "nslookup <NAMA DOMAIN>",
                          ),
                          generalParagraph(
                            "Perintah yang akan kita gunakan :",
                          ),
                          generalScript(
                            "nslookup tkj.com",
                          ),
                          cGambar(
                            context,
                            assets + "dns_img8.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Jika tampilannya sudah sama seperti gambar, maka konfigurasi DNS forward sudah berhasil.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 15",
                        [
                          generalParagraph(
                            "Selanjutnya kita akan menguji apakah DNS reverse kita sudah benar menggunakan tool nslookup. Jalankan perintah berikut :",
                          ),
                          generalParagraph(
                            "Format perintah :",
                          ),
                          generalScript(
                            "nslookup <IP ADDRESS SERVER>",
                          ),
                          generalParagraph(
                            "Perintah yang akan kita gunakan :",
                          ),
                          generalScript(
                            "nslookup 192.168.1.1",
                          ),
                          cGambar(
                            context,
                            assets + "dns_img9.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Jika tampilannya juga sudah sama seperti gambar, maka konfigurasi DNS reverse sudah berhasil.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 16",
                        [
                          generalParagraph(
                            "Selanjutnya, silahkan akses tkj.com di browser pada PC client.",
                          ),
                          cGambar(
                            context,
                            assets + "dns_img10.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Jika sudah keluar tampilan ‘Apache2 Debian Default Page’, maka konfigurasi DNS sudah berhasil.",
                          ),
                          cGambar(
                            context,
                            assets + "dns_img11.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Pemecahan Masalah",
                        [
                          generalParagraph(
                            "1. Jika pada saat melakukan nslookup mengeluarkan error SERVFAIL, maka silahkan cek file resolv.conf terlebih dahulu. Jika masih terjadi error yang sama, silahkan cek lagi file db.forward, db.reverse, named.conf.local pada direktori /etc/bind apakah sudah sama seperti yang di konfigurasi.",
                          ),
                          generalParagraph(
                            "2. Jika pada saat melakukan nslookup tidak mengeluarkan apa-apa, maka silahkan cek file db.forward, db.reverse, named.conf.local pada direktori /etc/bind apakah sudah sama seperti yang di konfigurasi.",
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
