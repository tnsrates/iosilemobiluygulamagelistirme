import 'package:flutter/material.dart';
import 'package:yemektarifleri/yemek_detay.dart';

class tatlilar extends StatelessWidget {
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
Önceden ısıtılmış 180°C fırına sürün hafif rengi değiştiğinde fırından alarak kalan yağı gezdirin ve tekrar fırına sürün altı üstü kızarana kadar pişirin…'''),
                  _buildCard(
                      'Cevizli Tatlı',
                      'Kıbrıs Tatlısı',
                      'assets/kibris.jpg',
                      true,
                      false,
                      context,
                      '''Kıbrıs tatlısı yapmak için, öncelikle şerbeti yapın çünkü kekin üzerine şerbet soğuk dökülecek. Bir tencereye suyu ve şekeri dökün. Kaynamaya başladıktan sonra altını kısıp, 15 dakika daha kaynatın.
Şerbet hazır olunca altını kapatın ve vanilyayı ekleyip, soğuması için bekletin.
Keki için; yumurtaları ve şekeri iyice çırpın. Diğer malzemeleri de ekleyip, karıştırın.
Yağlanmış bir tepsiye (ben büyük kare borcam kullandım) dökün.
160 derece fırında, 30 dakika pişirin.
Fırından çıkar çıkmaz soğuk şerbeti üzerine dökün ve soğuması için bekletin.
Kreması için; krem şanti hariç diğer malzemeleri bir tencerede muhallebi kıvamına gelene kadar pişirin.
Altını kapatın, toz krem şantiyi ekleyin ve blenderla 5 dakika çırpın.
Soğumuş şerbetli kekin üzerine, bu kremsi muhallebiyi dökün.
Üzerine bolca Hindistan cevizi (ben ceviz serptim) serpin.
Kıbrıs tatlısını, buzdolabında 2-3 saat bekletip servis yapın. '''),
                  _buildCard(
                      'Browni Tadında',
                      'Islak Kek',
                      'assets/islakkek.jpg',
                      false,
                      true,
                      context,
                      '''Islak kek tarifi için ilk olarak yumurta, şeker iyice çırpıldıktan sonra süt, sıvı yağ, kakao eklenerek tekrar çırpılır.
Kekimizi ıslatmak için bu karışımdan bir su bardağı ayrılır.
Kalan karışıma kabartma tozu, vanilya ve elenmiş un karıştırılarak kek hamuru oluşturulur.
Yağlanmış tepsiye ya da borcama dökülerek 170 derecede fırına sürülür, yaklaşık 35 dakika pişirilir. Benim kullandığım borcamın ölçüsü 28*22 cm.
Keki beklerken üzeri için ayırdığınız karışımı uygun bir tavaya alarak üzerine süt ilave edilir ve ocakta 5 dakika kaynatılır.
Fırından çıkan kekin ilk sıcaklığı çıktıktan sonra yani 10 dk kadar sonra dilimlenir, üzerine yavaş yavaş ılıyan sos her yerine gelecek şekilde dökülür.
Üzerine iri parçalanan ceviz serpilir.
Kekin sosu güzelce çekmesi için 2-3 saat dinlendirildikten sonra ıslak kek servis edilebilir.'''),
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
