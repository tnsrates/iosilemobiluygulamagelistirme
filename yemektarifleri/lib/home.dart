import 'package:yemektarifleri/sqldb.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SqlDb sqlDb = SqlDb();
  GlobalKey<FormState> formstate = new GlobalKey();
  TextEditingController path = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController yazar = new TextEditingController();
  TextEditingController detail = new TextEditingController();
  TextEditingController aciklama = new TextEditingController();
  TextEditingController id = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Form(
                key: formstate,
                child: Column(
                  children: [
                    TextFormField(
                      controller: path,
                      decoration: InputDecoration(hintText: "path"),
                    ),
                    TextFormField(
                      controller: name,
                      decoration: InputDecoration(hintText: "Yemek Adı"),
                    ),
                    TextFormField(
                      controller: yazar,
                      decoration: InputDecoration(hintText: "Yemek Açıklama"),
                    ),
                    TextFormField(
                      controller: detail,
                      decoration: InputDecoration(hintText: "Yemek Tarif"),
                    ),
                    Center(
                      child: MaterialButton(
                        color: Color.fromARGB(255, 0, 195, 255),
                        textColor: Colors.white,
                        onPressed: () async {
                          int response =
                              await sqlDb.insertData("""INSERT INTO 'yemekler' 
                   ('path','yemekadi','yemekaciklama','yemektarif') 
                   VALUES ('${path.text}','${name.text}','${aciklama.text}','${detail.text}','${yazar.text}')
                   """);
                          print(response);
                        },
                        child: Text("Yemek Ekle"),
                      ),
                    ),
                    TextFormField(
                      controller: id,
                      decoration:
                          InputDecoration(hintText: "Silinecek Yemek İd'si"),
                    ),
                    Center(
                      child: MaterialButton(
                        color: Color.fromARGB(255, 0, 195, 255),
                        textColor: Colors.white,
                        onPressed: () async {
                          int response = await sqlDb.deleteData(
                              "DELETE  FROM 'kitaplar' WHERE id='${id.text}' ");
                          print("$response");
                        },
                        child: Text("Yemek Sil"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
