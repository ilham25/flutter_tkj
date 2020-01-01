import 'package:flutter/material.dart';

class FtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String assets = "assets/images/debian/ftp_img/";
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
                      "FTP",
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
                            "1. Syarat pertama untuk melakukan konfigurasi FTP, harus berhasil dalam melakukan konfigurasi IP Address pada PC.",
                          ),
                          generalParagraph(
                            "2. PC server dan PC client sudah terhubung dengan baik.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 1",
                        [
                          generalParagraph(
                            "Lakukan instalasi paket ftp yang bernama proftpd. Jalankan perintah berikut untuk melakukan hal tersebut :",
                          ),
                          generalScript(
                            "apt-get install proftpd",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 2",
                        [
                          generalParagraph(
                            "Setelah selesai instalasi proftpd, selanjutnya kita akan melakukan konfigurasi file ftp yaitu file proftpd.conf yang berada pada direktori /etc/proftpd/. Jalankan perintah berikut untuk membuka file tersebut :",
                          ),
                          generalScript(
                            "nano /etc/proftpd/proftpd.conf",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 3",
                        [
                          generalParagraph(
                            "Didalam file proftpd.conf, kita akan menambahkan akses login sebagai root. Pada bagian paling bawah file, tambahkan script berikut :",
                          ),
                          generalScript(
                            "RootLogin ON",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img1.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 4",
                        [
                          generalParagraph(
                            "Secara default, kita tidak diperbolehkan melakukan login sebagai root, jadi ftp menghambat user root untuk login. Untuk menghilangkan hambatan tersebut, kita akan mengubah isi file ftpusers yang berada pada direktori /etc/ yang berisikan nama-nama user yang tidak diperbolehkan login. Maka dari itu, kita akan menghapus user root dari list user tersebut. Jalankan perintah berikut untuk membuka file tersebut :",
                          ),
                          generalScript(
                            "nano /etc/ftpusers",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img2.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Pada list user yang di block tersebut, hapus pada bagian root. Lalu save file tersebut.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 5",
                        [
                          generalParagraph(
                            "Setelah itu, restart proftpd. Jalankan perintah berikut untuk melakukannya :",
                          ),
                          generalScript(
                            "service proftpd restart",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 6",
                        [
                          generalParagraph(
                            "Selanjutnya kita akan menggunakan software FileZilla untuk mengirim file dari PC client ke dalam server menggunakan protocol ftp. Jalankan software FileZilla.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 7",
                        [
                          generalParagraph(
                            "Pada bagian atas terdapat kolom Host, Username, Password dan Port, isikan sebagai berikut :",
                          ),
                          generalScript(
                            "Host : 192.168.1.1",
                          ),
                          generalScript(
                            "Username : root",
                          ),
                          generalScript(
                            "Password : (Password user root)",
                          ),
                          generalScript(
                            "Port : 21",
                          ),
                          generalParagraph(
                            "Lalu tekan tombol 'Quickconnect'.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img3.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 8",
                        [
                          generalParagraph(
                            "Jika keluar dialog berikut, tekan saja OK.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img4.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 9",
                        [
                          generalParagraph(
                            "Jika pada bagian kanan FileZilla sudah keluar tampilan berikut, maka konfigurasi FTP sudah berjalan dengan baik.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img5.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 10",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan membuat direktori untuk CMS kita. Disini, kita akan menggunakan Wordpress.",
                          ),
                          generalParagraph(
                            "Kita akan membuat direktori baru pada direktori /var/www/. Pada bagian Remote site di FileZilla, masukkan direktori /var/www/ dan tekan tombol ENTER.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img6.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 11",
                        [
                          generalParagraph(
                            "Jika tampilannya sudah keluar sebagai berikut, maka kita berhasil masuk ke direktori /var/www/.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img7.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        'Langkah ke 12',
                        [
                          generalParagraph(
                            "Didalam direktori /var/www/ kita akan menambahkan direktori baru yaitu direktori ‘wordpress’. Caranya, dibawah direktori ‘html’ di FileZilla, lakukan click kanan lalu pilih ‘Create Directory’.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img8.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 13",
                        [
                          generalParagraph(
                            "Setelah itu akan keluar dialog untuk memasukkan nama direktori yang akan dibuat. Ganti nama ‘New directory’ menjadi ‘wordpress’.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img9.png",
                            BoxFit.contain,
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img10.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 14",
                        [
                          generalParagraph(
                            "Setelah berhasil, maka dibawah direktori ‘html’ akan ada direktori baru yang telah kita buat tadi, yaitu direktori ‘wordpress’.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img11.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Selanjutnya, double click pada direktori ‘wordpress’ untuk masuk ke dalam direktori tersebut.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 15",
                        [
                          generalParagraph(
                            "Setelah masuk ke direktori ‘wordpress’, kita akan mengirim file Wordpress ke dalam direktori tersebut. Caranya, siapkan terlebih dahulu file wordpress.",
                          ),
                          generalParagraph(
                            "Biasanya, setelah di download dari internet, file wordpress tersebut akan berbentuk archive. Jadi, kita harus mengekstrak file tersebut menggunakan WinRAR.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 16",
                        [
                          generalParagraph(
                            "Setelah melakukan ekstrak, maka berikut tampilan file-file wordpress.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img12.png",
                            BoxFit.fill,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 17",
                        [
                          generalParagraph(
                            "Untuk memasukkan semua file tersebut ke dalam FileZilla, kita harus memilih semua file wordpress tersebut. Caranya :",
                          ),
                          generalScript(
                            "Tekan tombol CTRL dan A secara bersamaan.",
                          ),
                          generalParagraph(
                            "Setelah semua file telah dipilih, tarik semua file tersebut ke FileZilla.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img13.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Nantinya akan terjadi proses pemindahan file dari PC client ke PC Server yang dimana pada bagian bawah FileZilla akan terlihat kira-kira sebagai berikut.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img14.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Setelah pengiriman file dari PC client ke PC server sudah selesai, maka akan muncul pesan berikut di bagian bawah PC client.",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img15.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Akhir",
                        [
                          generalParagraph(
                            "Dengan berakhirnya pengiriman file dari PC client ke PC server tadi, maka kita sudah berhasil melakukan konfigurasi ftp, melakukan pembuatan direktori pada server menggunakan ftp, dan mengirim data dari PC client ke PC server menggunakan ftp dengan bantuan software FileZilla.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Pemecahan Masalah",
                        [
                          generalParagraph(
                            "1. Jika pada saat melakukan restart proftpd terjadi error, silahkan cek lagi konfigurasi file proftpd.conf yang berada pada direktori /etc/proftpd/ apakah sudah benar dan sesuai dengan tutorial yang diberikan. Jika sudah dirasa benar, maka selanjutnya silahkan cek file ftpusers yang berada pada direktori /etc/ apakah sudah benar dan tidak salah dalam konfigurasi nya. Jika sudah yakin, maka silahkan lakukan restart proftpd lagi.",
                          ),
                          generalParagraph(
                            "2. Jika pada FileZilla tidak keluar tampilan berikut, maka silahkan coba untuk restart PC server dengan perintah.",
                          ),
                          generalScript(
                            "reboot",
                          ),
                          cGambar(
                            context,
                            assets + "ftp_img5.png",
                            BoxFit.contain,
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
