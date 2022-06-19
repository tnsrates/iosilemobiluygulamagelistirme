import 'package:flutter/material.dart';
import 'package:yemektarifleri/yemek_detay.dart';

import 'yemek_detay.dart';

class anayemekler extends StatelessWidget {
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
                      'Lezzetli Tarif',
                      'Patlıcan Musakka',
                      'assets/plate1.png',
                      false,
                      false,
                      context,
                      '''2 adet patlıcanı alacalı doğrayıp, 1 cm kalınlığında halkalar şeklinde kesin. Patlıcanları tuzlu suda acısı çıkana kadar 15-20 dakika bekletin. Aynı zamanda kararmaması için suya limon suyu ve süt ekleyin. Daha sonra patlıcanların suyunu süzüp, havlu kağıtla kurulayın. Sıvıyağ koyulmuş derin bir tencerede kızartın. Yemeğin az yağlı olmasını istiyorsanız, patlıcanları fırın tepsisine dizip, yumuşayana kadar fırında pişirin... '''),
                  _buildCard(
                      'Mükemmel Tas Kebabı',
                      'Tas Kebabı',
                      'assets/plate2.png',
                      true,
                      false,
                      context,
                      "İlk olarak yüksek ateşte renk alana kadar kavuracağınız dana etlerini öncelikle kendi suyunda pişirin. Sosun berrak olması için bu esnada yüzeye çıkan kahverengi köpük kısımlarını tencereden alın. 1 yemek kaşığı sıvı yağ ve 2 yemek kaşığı tereyağını tencerede kızdırın.Üzerine 800 gram dana kuşbaşı etini ekleyin ve etler suyunu salıp çekene kadar kavurun."),
                  _buildCard(
                      '\Nefis Çökertme Kebabı',
                      'Çökertme Kebabı',
                      'assets/plate6.png',
                      false,
                      true,
                      context,
                      "Patateslerin kabuklarını soyup rendeleyin. Nişastasının çıkması için tuzlu suda 10-15 dakika kadar bekletin. Sudan çıkarıp güzelce süzdükten sonra yağda kızartın ve servis tabağına alın. Yoğurdu su ile biraz seyreltin ve içine sarımsakları ilave edin. Dilerseniz 1 veya 2 yemek kaşığı da zeytinyağı ekleyebilirsiniz. Daha sonra sarımsaklı yoğurdu patateslerin üzerine gezdirin. İnceltilmiş ve bifteklik olarak doğranmış eti yüksek ateşte 5 dakika kadar kızartın. Tavadan alın ince ince doğrayın kızgın yağda kavurun. Üzerine isteğe göre baharat koyun ve tereyağı ekleyin. Kavrulunca patates ve yoğurdun üzerine yerleştirin."),
                ],
              )),
          SizedBox(height: 15.0)
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
