import 'package:flutter/material.dart';

class IpAddr extends StatelessWidget {
  final String assets = "assets/images/debian/ip_img/";
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
                      "IP Address",
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
                          "Langkah ke 1",
                          [
                            generalParagraph(
                                "Langkah pertama, silahkan install net-tools terlebih dahulu."),
                            generalScript("apt-get install net-tools"),
                            generalParagraph(
                                "Kegunaannya supaya kita bisa menggunakan perintah 'ifconfig' untuk melakukan pengecekan IP Address"),
                          ],
                          0),
                      cardStep(
                          "Langkah ke 2",
                          [
                            generalParagraph(
                                "Selanjutnya, kita akan melakukan konfigurasi IP Address. Jalankan perintah berikut untuk membuka file konfigurasi IP Address server debian :"),
                            generalScript("nano /etc/network/interfaces"),
                            generalParagraph(
                                "Didalam file tersebut kita akan menambahkan IP Address untuk interface enp0s3 dengan IP Address : 192.168.1.1/24"),
                            generalScript(
                                "Nama interface dan IP Address sesuaikan dengan kebutuhan masing-masing"),
                            generalParagraph(
                                "Selanjutnya, masukkan script berikut :"),
                            generalScript("allow-hotplug enp0s3"),
                            generalScript("iface enp0s3 inet static"),
                            generalScript("         address 192.168.1.1/24"),
                            generalScript("         gateway 192.168.1.1"),
                            cGambar(
                              context,
                              assets + "ip_img1.png",
                              BoxFit.contain,
                            ),
                          ],
                          10),
                      cardStep(
                          "Langkah ke 3",
                          [
                            generalParagraph(
                                "Simpan file konfigurasi IP Address server debian dengan cara :"),
                            generalScript(
                                "Tekan tombol CTRL dan X secara bersamaan"),
                            generalScript("Tekan tombol Y dan tombol ENTER")
                          ],
                          10),
                      cardStep(
                          "Langkah ke 4",
                          [
                            generalParagraph(
                                "Selanjutnya, restart server debian. Jalankan perintah berikut :"),
                            generalScript("reboot")
                          ],
                          10),
                      cardStep(
                          "Langkah ke 5",
                          [
                            generalParagraph(
                                "Setelah selesai restart server, lakukan pengecekan IP Address. Jalankan perintah berikut :"),
                            generalScript("ifconfig"),
                            generalParagraph(
                                "Apabila sudah kelihatan IP Address yang kita masukkan sebelumnya, maka kita sudah sukses konfigurasi IP Address pada server debian."),
                            cGambar(context, assets + "ip_img2.png",
                                BoxFit.contain),
                          ],
                          0),
                      cardStep(
                          "Pemecahan Masalah",
                          [
                            generalParagraph(
                                "Jika IP Address belum berubah, sebaiknya lakukan pengecekan lagi pada file konfigurasi IP Address. Silahkan jalankan perintah berikut untuk membuka file konfigurasi IP Address server debian :"),
                            generalScript("nano /etc/network/interfaces"),
                            generalParagraph(
                                "Silahkan lakukan pengecekan kembali, apakah sudah sesuai dengan tutorial yang diberikan pada langkah ke 2."),
                            generalParagraph(
                                "Jika dirasa sudah yakin, silahkan save file konfigurasi tersebut dengan cara yang sama seperti langkah ke 3")
                          ],
                          0)
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
