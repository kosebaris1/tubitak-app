import 'package:flutter/material.dart';

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Kargolar",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Card(
        elevation: 4, // Gölgelendirme ile öğeyi yükseltme
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Köşeleri yuvarlama
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              title: Text(
                "Barış Köse",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                "Adres: Sanayi Mahallesi 104. Cadde Merkez/Isparta",
                style: TextStyle(color: Colors.grey[600]),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.edit,
                      //    color: Colors.green,
                    ),
                    onPressed: () {

                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {

                    },
                  )
                ],
              ),
              onTap: (){

              },
            ),

            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 25,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              title: Text(
                "Mert Sayan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                "Adres: Sanayi Mahallesi 104. Cadde Merkez/Isparta",
                style: TextStyle(color: Colors.grey[600]),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.edit,
                      //    color: Colors.green,
                    ),
                    onPressed: () {

                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {

                    },
                  )
                ],
              ),
              onTap: (){

              },
            ),

            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 25,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              title: Text(
                "Furkan Öznamlı",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                "Adres: Sanayi Mahallesi 104. Cadde Merkez/Isparta",
                style: TextStyle(color: Colors.grey[600]),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.edit,
                      //    color: Colors.green,
                    ),
                    onPressed: () {

                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {

                    },
                  )
                ],
              ),
              onTap: (){

              },
            )
          ],
        ),
      ),
    );
  }

}