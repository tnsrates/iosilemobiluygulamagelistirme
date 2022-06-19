import 'package:flutter/material.dart';
import 'package:yemektarifleri/yemek_detay.dart';

class corbalar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard(
                      'Sosla Birlikte',
                      'Mercimek Çorbası',
                      'assets/mercimek.jpg',
                      false,
                      false,
                      context,
                      '''Kırmızı mercimek çorbası için sıvı yağı tencereye alınarak yemeklik doğranan soğanlar hafif pembeleşinceye kadar kavrulur. Daha sonra un ilave edilerek kısık ateşte kavurmaya devam edilir. Salça kullanılacak ise salça ilave edilir, kavrulduktan sonra küp küp doğranmış havuç ve iyice yıkanıp suyu süzülen mercimekler ilave edilir. Üzerine su eklenerek karıştırılır ve tencerenin kapağı kapatılır. Çorbamız kaynayana kadar orta ateşte, kaynadıktan sonra mercimekler ve havuçlar yumuşayana kadar ara ara karıştırılarak kısık ateşte pişirilir.'''),
                  _buildCard(
                      'Başlangıç Çorbası',
                      'Ezogelin Çorbası',
                      'assets/ezogelin.jpg',
                      true,
                      false,
                      context,
                      '''Ezogelin çorbası yapmak için düdüklü tencerede önce rendelemiş olduğumuz soğanı ve ezmiş olduğumuz sarımsağı tereyağında kavuruyoruz. Soğanlar diriliğini kaybetsin yeterli yakmadan orta ateşte kavuralım. Soğanlar kavrulunca naneyi, kırmızı biberi ve salçayı ilave edip. Kavurmaya devam edelim. Bir iki karıştırdıktan sonra yıkadığımız mercimeği, pirinci, bulguru ve tuzunu da ilave ederek karıştıralım. Başka bir tarafta kaynamakta olan 2 litreye yakın suyu üzerine boşaltalım. Düdüklünün kapağını ve düdüğünü kapattıktan sonra 10 dakika pişiriyoruz. Normal tencerede de yapabilirsiniz ama biraz daha geç pişecektir (yaklaşık 30-40 dakika sürecektir). '''),
                  _buildCard(
                      'Yoğurtlu Çorba',
                      'Yayla Çorbası',
                      'assets/yayla.jpg',
                      false,
                      true,
                      context,
                      '''Yayla çorbası için ilk olarak pirinçler yıkanarak suda yumuşayıncaya kadar haşlanır. Yayla çorbamızın terbiyesi için diğer taraftan yumurta sarısı, yoğurt, un bir kasede iyice çırpılır. Pişen pirinçlere varsa et ya da kemik suyu yoksa 3 su bardağı sıcak su ilave edilir. Çorbanın suyundan 1-2 kepçe alınarak yavaş yavaş alınıp terbiyeye ilave edilir. Hafifçe sulanan bu karışım ılınmış olan çorbaya ilave edilir ve 1-2 taşım kaynatılır. En son tuzu ilave edilir, bir kaç dakika daha kaynatılarak ocak kapatılır. Üzerine sos için kuru nane eritilmiş tereyağında kızdırılarak gezdirilir. Yayla çorbamız servise hazır. Afiyet olsun.    '''),
                ],
              )),
          SizedBox(height: 50.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context, String cardetail) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => YemekDetay(
                        assetPath: imgPath,
                        cookieprice: price,
                        cookiename: name,
                        cardetail: cardetail,
                      )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                      )),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 90.0,
                          width: 90.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Text(price,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 195, 255),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ))
                ]))));
  }
}
