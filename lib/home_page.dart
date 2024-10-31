import 'package:flutter/material.dart';
import 'package:tubitak_app/qr_page.dart';
import 'haritalar_page.dart';
import 'list_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Ana Sayfa",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), // Genel içerik boşluğu
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                MaterialPageRoute pageRoute=MaterialPageRoute(
                    builder: (Context){
                      return HaritaPage();
                    });
                Navigator.push(context, pageRoute);
              },
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 4,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/harita.png'), // Harita görseli
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Üst kısımdan boşluk bırakıyoruz
            Row(
              children: [
                InkWell(
                  onTap: () {
                    MaterialPageRoute pageRoute=MaterialPageRoute(
                        builder: (Context){
                          return QrPage();
                        });
                    Navigator.push(context, pageRoute);
                  },
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.9),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(0, 4),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/qr.png'), // QR kod görseli
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16), // İki container arasında boşluk
                Expanded(
                  child: InkWell(
                    onTap: () {
                      MaterialPageRoute pageRoute=MaterialPageRoute(
                          builder: (context){
                            return ListPage();
                          });
                      Navigator.push(context, pageRoute);
                    },
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          _buildListTile(
                            title: "1-Barış Köse",
                            subtitle: "Sıradaki",
                            iconColor: Colors.green,
                            subtitleColor: Colors.green,
                          ),
                          Divider(),
                          _buildListTile(
                            title: "2-Mert Sayan",
                            subtitle: "Beklemede",
                            iconColor: Colors.red,
                            subtitleColor: Colors.red,
                          ),
                          Divider(), // İki ListTile arasında ayraç
                          _buildListTile(
                            title: "3-Furkan Öznamlı",
                            subtitle: "Beklemede",
                            iconColor: Colors.red,
                            subtitleColor: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text(
                      "ÇALIŞTIR",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,

                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ListTile oluşturmayı sadeleştiren özel bir fonksiyon
  Widget _buildListTile({
    required String title,
    required String subtitle,
    required Color iconColor,
    required Color subtitleColor,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: subtitleColor),
      ),
      leading: Icon(
        Icons.account_circle,
        size: 40,
        color: iconColor,
      ),
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
