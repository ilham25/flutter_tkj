import 'package:flutter/material.dart';

class CmsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String assets = "assets/images/debian/cms_img/";
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
                      "CMS",
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
                            "1. Harus sudah berhasil konfigurasi IP Address.",
                          ),
                          generalParagraph(
                            "2. Harus sudah melakukan instalasi paket web server yaitu Apache2.",
                          ),
                          generalParagraph(
                            "3. Harus sudah selesai melakukan konfigurasi FTP, dan sudah memasukkan data CMS ke dalam PC Server.",
                          ),
                          generalParagraph(
                            "4. Harus sudah berhasil melakukan konfigurasi user MySQL dan phpmyadmin.",
                          ),
                          generalParagraph(
                            "5. Harus sudah berhasil melakukan konfigurasi DNS.",
                          ),
                          generalScript(
                            "Catatan :",
                          ),
                          generalScript(
                            "Direktori CMS : /var/www/wordpress/",
                          ),
                          generalScript(
                            "Nama username database : tkj",
                          ),
                          generalScript(
                            "Password username database : 1234",
                          ),
                          generalScript(
                            "Nama database yang akan kita gunakan : db_wp",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 1",
                        [
                          generalParagraph(
                            "Langkah pertama, kita akan memindahkan posisi direktori default web server dari direktori /var/ww/html ke /var/www/wordpress. Caranya, kita harus mengakses direktori konfigurasi web server yaitu direktori /etc/apache2/sites-available/. Jalankan perintah berikut untuk masuk ke direktori /etc/apache2/sites-available/ :",
                          ),
                          generalScript(
                            "cd /etc/apache2/sites-available/",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 2",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan mengubah isi file yang bernama 000-default.conf. Caranya, jalankan perintah berikut :",
                          ),
                          generalScript(
                            "nano 000-default.conf",
                          ),
                        ],
                        10,
                      ),
                      mCardStep(
                        "Tampilan awal",
                        [
                          cGambar(
                            context,
                            assets + "cms_img1.png",
                            BoxFit.fill,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 3",
                        [
                          generalParagraph(
                            "Pada ServerName, hilangkan pagarnya dan ubah www.example.com menjadi tkj.com",
                          ),
                          generalParagraph(
                            "Pada DocumentRoot, ubah html menjadi wordpress.",
                          ),
                          generalParagraph(
                            "Tampilan awal :",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img2.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Tampilan setelah diubah:",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img3.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 4",
                        [
                          generalParagraph(
                            "Setelah itu, simpan file. Selanjutnya, restart service apache2, jalankan perintah berikut :",
                          ),
                          generalScript(
                            "service apache2 restart",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 5",
                        [
                          generalParagraph(
                            "Setelah restart Apache2, coba buka kembali domain kita yaitu tkj.com di browser pada PC client. Jika tampilannya sudah berubah menjadi tampilan berikut, maka pengubahan direktori default web server kita sudah berhasil.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img4.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Selanjutnya, tekan tombol ‘Let\’s go!’.",
                          ),
                          generalParagraph(
                            "Pada halaman selanjutnya, kita akan diminta untuk membuat sebuah database. Maka selanjutnya kita harus membuat database pada MySQL melalui phpmyadmin.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 6",
                        [
                          generalParagraph(
                            "Silahkan akses phpmyadmin di browser pada PC client, lalu login menggunakan user yang sudah dibuat sebelumnya.",
                          ),
                          generalParagraph(
                            "Pada phpmyadmin, click tulisan ‘New’ yang berada pada sisi samping kiri layar.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img5.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 7",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan membuat database dengan nama ‘wp_db’. Setelah itu click tombol ‘Create’.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img6.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 8",
                        [
                          generalParagraph(
                            "Setelah berhasil membuat database baru, maka pada option samping kiri phpmyadmin akan keluar tulisan baru yaitu nama database kita.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img7.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 9",
                        [
                          generalParagraph(
                            "Selanjutnya, kembali lagi ke wordpress. Berikut yang akan kita isikan :",
                          ),
                          generalScript(
                            "Database Name : wp_db (nama database)",
                          ),
                          generalScript(
                            "Username : tkj",
                          ),
                          generalScript(
                            "Password : 1234",
                          ),
                          generalParagraph(
                            "Untuk Database Host, dan Table Prefix biarkan saja dengan nilai awalnya.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img8.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 10",
                        [
                          generalParagraph(
                            "Setelah selesai, click pada tombol ‘Submit’. Jika konfigurasi database benar, maka akan keluar tampilan berikut :",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img9.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 11",
                        [
                          generalParagraph(
                            "Selanjutnya, kita harus menyalin semua script yang telah di select secara otomatis yang berwarna biru tersebut ke dalam notepad. Untuk itu kita memerlukan notepad, cara membuka notepad :",
                          ),
                          generalScript(
                            "Tekan tombol Windows dan R secara bersamaan, lalu masukkan tulisan ‘notepad’ dan tekan ENTER.",
                          ),
                          generalParagraph(
                            "Maka akan keluar tampilan notepad sebagai berikut :",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img10.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 12",
                        [
                          generalParagraph(
                            "Selanjutnya, salin(copy) semua script yang di select pada wordpress tadi kedalam notepad.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img11.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 13",
                        [
                          generalParagraph(
                            "Setelah selesai, silahkan simpan dengan cara :",
                          ),
                          generalScript(
                            "Tekan tombol CTRL dan S",
                          ),
                          generalParagraph(
                            "Pada tampilan simpan, isikan :",
                          ),
                          generalScript(
                            "File Name : wp-config.php",
                          ),
                          generalScript(
                            "Save as type : All Files (*.*)",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img12.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 14",
                        [
                          generalParagraph(
                            "Setelah berhasil disimpan, selanjutnya akses folder dimana file tersebut disimpan.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img13.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 15",
                        [
                          generalParagraph(
                            "Selanjutnya, kita akan mengirim file tersebut ke PC server menggunakan ftp dengan software FileZilla. Silahkan buka FileZilla dan hubungkan ke server. Jika tidak tau caranya, silahkan lihat pada bagian konfigurasi FTP.",
                          ),
                          generalParagraph(
                            "Pada bagian ‘Remote site’, masukkan direktori wordpress kita yaitu ‘/var/www/wordpress’.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img14.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Tarik file wp-config.php tadi ke direktori wordpress di PC server menggunakan FileZilla.",
                          ),
                          generalParagraph(
                            "Selanjutnya, pada wordpress tadi, click pada tombol ‘Run the installation’.",
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 16",
                        [
                          generalParagraph(
                            "Jika konfigurasi dan pengiriman file wp-config.php tadi berhasil, maka akan keluar halaman baru seperti berikut.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img15.png",
                            BoxFit.contain,
                          ),
                          generalParagraph(
                            "Berikut yang akan kita isikan :",
                          ),
                          generalScript(
                            "Site Title : Wordpress TKJ (isikan nama website yang diinginkan)",
                          ),
                          generalScript(
                            "Username : tkj",
                          ),
                          generalScript(
                            "Password : 1234",
                          ),
                          generalScript(
                            "Confirm Password : ceklist",
                          ),
                          generalScript(
                            "Your Email : (isi dengan email) tkj@tkj.com",
                          ),
                        ],
                        10,
                      ),
                      cardStep(
                        "Langkah ke 17",
                        [
                          generalParagraph(
                            "Jika semua kolom yang diperlukan sudah diisi, maka selanjutnya tekan tombol ‘Install Wordpress’.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img16.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 18",
                        [
                          generalParagraph(
                            "Selanjutnya, akan keluar tampilan akhir penginstalan Wordpress.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img17.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Langkah ke 19",
                        [
                          generalParagraph(
                            "Setelah itu, coba akses kembali domain kita yaitu ‘tkj.com’ di browser pada PC client. Jika tampilannya sudah berubah seperti dibawah, maka instalasi wordpress berjalan dengan baik.",
                          ),
                          cGambar(
                            context,
                            assets + "cms_img18.png",
                            BoxFit.contain,
                          ),
                        ],
                        0,
                      ),
                      cardStep(
                        "Akhir",
                        [
                          generalParagraph(
                            "Sampai disini, kita sudah mempelajari cara :",
                          ),
                          generalParagraph(
                            "1. Membuat/menambahkan database.",
                          ),
                          generalParagraph(
                            "2. Melakukan Instalasi CMS Wordpress.",
                          ),
                          generalParagraph(
                            "3. Melakukan konfigurasi pada web server.",
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
