import 'package:flutter/material.dart';
import 'package:tutorial_tkj/debian/cms_page.dart';
import 'package:tutorial_tkj/debian/dhcp_server_page.dart';
import 'package:tutorial_tkj/debian/dns_page.dart';
import 'package:tutorial_tkj/debian/ftp_page.dart';
import 'package:tutorial_tkj/debian/inet_gateway_page.dart';
import 'package:tutorial_tkj/debian/ip_addr.dart';
import 'package:tutorial_tkj/debian/mail_server_page.dart';
import 'package:tutorial_tkj/debian/mysql_page.dart';
import 'package:tutorial_tkj/debian/samba_page.dart';
import 'package:tutorial_tkj/debian/ssh_page.dart';
import 'package:tutorial_tkj/debian/web_server_page.dart';
import 'package:tutorial_tkj/debian/webmail_page.dart';

class DebianPage extends StatelessWidget {
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
                      "Tutorial Debian 9",
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
                      tutorialCard(
                        context,
                        Icons.wifi_tethering,
                        "IP Address",
                        IpAddr(),
                      ), // IP Address
                      tutorialCard(
                        context,
                        Icons.web,
                        "Web Server",
                        WebServPage(),
                      ), // Web Server
                      tutorialCard(
                        context,
                        Icons.domain,
                        "DNS / Bind9",
                        DnsPage(),
                      ), // DNS / Bind9
                      tutorialCard(
                        context,
                        Icons.send,
                        "FTP",
                        FtpPage(),
                      ), // FTp
                      tutorialCard(
                        context,
                        Icons.dashboard,
                        "MySQL / phpmyadmin",
                        MysqlPage(),
                      ), // MySQL / phpmyadmin
                      tutorialCard(
                        context,
                        Icons.open_in_browser,
                        "CMS",
                        CmsPage(),
                      ), // CMS
                      tutorialCard(
                        context,
                        Icons.settings_ethernet,
                        "SSH",
                        SshPage(),
                      ), // SSH
                      tutorialCard(
                        context,
                        Icons.multiline_chart,
                        "Mail Server",
                        MailServPage(),
                      ), // Mail Server
                      tutorialCard(
                        context,
                        Icons.mail,
                        "Webmail",
                        WebmPage(),
                      ), // Webmail
                      tutorialCard(
                        context,
                        Icons.folder_shared,
                        "Samba",
                        SambaPage(),
                      ), // Samba
                      tutorialCard(
                        context,
                        Icons.network_wifi,
                        "Internet Gateway",
                        InetGtwPage(),
                      ), // Internet Gateway
                      tutorialCard(
                        context,
                        Icons.share,
                        "DHCP Server",
                        DhcpServPage(),
                      ), // DHCP Server
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox tutorialCard(
      BuildContext context, IconData icon, String title, var page) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: Card(
        elevation: 3,
        child: Container(
          // padding: EdgeInsets.all(10),

          decoration: BoxDecoration(
            color: Color(0xFFD70751),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Material(
            borderRadius: BorderRadius.circular(4),
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(4),
              child: Row(
                children: <Widget>[
                  Spacer(
                    flex: 3,
                  ),
                  Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 10,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                ],
              ),
              onTap: () {
                print("Click : " + title);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return page;
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
