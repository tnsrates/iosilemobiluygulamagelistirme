import 'package:flutter/material.dart';
import 'package:yemektarifleri/main.dart';
import 'package:yemektarifleri/yemek_detay.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  //BAŞLIK
                  buildBaslik(),
                  //BANNER
                  buildBanner(context),
                  //BUTONLAR

                  //SALES
                  SizedBox(height: 30),
                  Text(
                    "Günün Menüsü",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color.fromARGB(255, 52, 39, 10)),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildCard(
                          'Yoğurtlu Çorba',
                          'Yayla Çorbası',
                          'assets/yayla.jpg',
                          false,
                          true,
                          context,
                          '''Yayla çorbası için ilk olarak pirinçler yıkanarak suda yumuşayıncaya kadar haşlanır. Yayla çorbamızın terbiyesi için diğer taraftan yumurta sarısı, yoğurt, un bir kasede iyice çırpılır. Pişen pirinçlere varsa et ya da kemik suyu yoksa 3 su bardağı sıcak su ilave edilir. Çorbanın suyundan 1-2 kepçe alınarak yavaş yavaş alınıp terbiyeye ilave edilir. Hafifçe sulanan bu karışım ılınmış olan çorbaya ilave edilir ve 1-2 taşım kaynatılır. En son tuzu ilave edilir, bir kaç dakika daha kaynatılarak ocak kapatılır. Üzerine sos için kuru nane eritilmiş tereyağında kızdırılarak gezdirilir. Yayla çorbamız servise hazır. Afiyet olsun.    ''',
                          screenWidth),
                      _buildCard(
                          '\Nefis Çökertme Kebabı',
                          'Çökertme Kebabı',
                          'assets/plate6.png',
                          false,
                          true,
                          context,
                          "Patateslerin kabuklarını soyup rendeleyin. Nişastasının çıkması için tuzlu suda 10-15 dakika kadar bekletin. Sudan çıkarıp güzelce süzdükten sonra yağda kızartın ve servis tabağına alın. Yoğurdu su ile biraz seyreltin ve içine sarımsakları ilave edin. Dilerseniz 1 veya 2 yemek kaşığı da zeytinyağı ekleyebilirsiniz. Daha sonra sarımsaklı yoğurdu patateslerin üzerine gezdirin. İnceltilmiş ve bifteklik olarak doğranmış eti yüksek ateşte 5 dakika kadar kızartın. Tavadan alın ince ince doğrayın kızgın yağda kavurun. Üzerine isteğe göre baharat koyun ve tereyağı ekleyin. Kavrulunca patates ve yoğurdun üzerine yerleştirin.",
                          screenWidth),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    _buildCard(
                        'Kolay Su Böreği',
                        'Su Böreği',
                        'assets/suboregi.jpg',
                        true,
                        false,
                        context,
                        '''Böreğin sosu için verilen malzemeleri bir kapta karıştırıyoruz. Fırın tepsisini hafif yağlayıp, yufkanın ilkini serip, kenarlarından biraz taşırıyoruz. Sostan her yerine gelecek şekilde sürüp kat kat yufka koyuyoruz. Her kata bolca sostan sürmeyi unutmuyoruz. Yufkaların ara katına iç harcından koyup yayıyoruz. Diğer yufkaları da aralarına sos sürerek yerleştiriyoruz. En son kalan yufkayı da yerleştirdikten sonra kenar kısımlarından taşan yufkaları üzerine doğru kapatıyoruz.  Kalan sosu da böreğin üzerine döküp çatalla delikler açıyoruz. Vaktiniz varsa bu şekilde buzdolabında bir saat kadar bekletebilirsiniz. Vaktiniz yoksa hemende pişirebilirsiniz. Böreği önceden ısıtılmış 200 derecelik fırında üzeri iyice kızarana kadar pişiriyoruz. Afiyet olsun.    ''',
                        screenWidth),
                    _buildCard(
                        'Cevizli Baklava',
                        'Baklava',
                        'assets/baklava.jpg',
                        false,
                        false,
                        context,
                        '''Kolay ev baklavası hazırlamak için öncelikle yumurtayı, sütü, sıvı yağı, sirkeyi, kabartma tozunu ve tuzu yoğurma kabına boşaltın ve alabildiğince un ekleyerek ortalama yumuşaklıkta bir hamur elde edinceye kadar yoğurunuz.
Hazırladığınız hamuru 30 eşit parçaya bölünüz.
Bu parçaları tek tek tabak büyüklüğünde açarak aralarına nişasta serpip 10’ar 10’ar üst üste koyun.
10’arlı olarak grupladığımız bu üç parçadan parçalardan her birini merdane yardımı ile tepsi büyüklüğüne getirin.
 Merdane ile açtığınız hamurların aralarına ceviz ya da fındık serperek üst üste yerleştirin.
Dilediğiniz şekilde kesin ve üzerine her yerine eşit şekilde gelmesine dikkat ederek eritilmiş yağın yarısını dökün.
Önceden ısıtılmış 180°C fırına sürün hafif rengi değiştiğinde fırından alarak kalan yağı gezdirin ve tekrar fırına sürün altı üstü kızarana kadar pişirin…''',
                        screenWidth),
                  ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: []),
                  SizedBox(height: 60),
                ],
              ),
            ),
            //bottom navigation bar
          ],
        ),
      ),
    );
  }
}

Widget buildBaslik() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Text(
      "YEMEK TARİFLERİM",
      style: TextStyle(
        fontSize: 32,
        color: Color(0xFF0A1034),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildBanner(context) {
  return Padding(
    padding: EdgeInsets.only(top: 24.0),
    child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 195, 255),
                borderRadius: BorderRadius.circular(6)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Kategoriler",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 4),
                  ],
                ),
                //Image.asset("assets/books/kapaklar/4.jpg")",
              ],
            ))),
  );
}

Widget buildNavigation(Widget widget, BuildContext context,
    {required IconData icon, required String text}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFFE0CF8)),
          child: Icon(
            icon,
            color: Color(0xFF0001FC),
            size: 18,
          ),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
              color: Color(0xFF1F53E4),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}

Widget _buildCard(String name, String price, String imgPath, bool added,
    bool isFavorite, context, String cardetail, double screenWidth) {
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
              width: (screenWidth - 60) * 0.5,
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
