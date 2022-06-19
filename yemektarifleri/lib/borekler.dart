import 'package:flutter/material.dart';
import 'package:yemektarifleri/yemek_detay.dart';

class borekler extends StatelessWidget {
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
                      'Çıtır Börek',
                      'Patatesli Börek',
                      'assets/patatesliborek.jpg',
                      false,
                      false,
                      context,
                      '''Patatesleri haşlayın, kabuklarını soyarak küçük küçük doğrayın. Rendelediğiniz ya da küçük doğradığınız soğanı sıvı yağda kavurduktan sonra patatesleri ilave edin ve nane, tuz, kırmızı toz biberi de ekleyerek kavurun. İç harcını soğumaya bırakın. Sıvı yağ, sirke, un ve tuzu iyice çırparak boza kıvamında sos hazırlayın.  Yufkalardan bir tanesini serin ve yarısının üzerine hazırladığınız sostan 3-4 yemek kaşığı dökerek fırça ile yayın. Yufkanın diğer yarısını soslu kısmın üzerine kapatın ve üzerini tekrar sos ile ıslatın. Yapım aşamasında sirke kokusu beni endişelendirmişti ama piştikten sonra çıtır çıtır nefis bir börek oldu.) 2 katlı yufkanızı pizza dilimi şeklinde 6 parça kesiyorsunuz ve üçgenlerin kalın kısımlarına iç harcından koyarak sigara böreği sarar gibi sarıyorsunuz. Tüm malzemeleri aynı şekilde yaptıktan sonra pişirme kağıdı serili fırın tepsisine alalım, üzerine yumurta sarısı sürüp susam serperek 180 derece ısıttığınız fırında patatesli börekler kızarana kadar pişiriyorsunuz. Çıtır çıtır patatesli börek tarifimiz servise hazır. Afiyet olsun…     '''),
                  _buildCard(
                      'Kolay Su Böreği',
                      'Su Böreği',
                      'assets/suboregi.jpg',
                      true,
                      false,
                      context,
                      '''Böreğin sosu için verilen malzemeleri bir kapta karıştırıyoruz. Fırın tepsisini hafif yağlayıp, yufkanın ilkini serip, kenarlarından biraz taşırıyoruz. Sostan her yerine gelecek şekilde sürüp kat kat yufka koyuyoruz. Her kata bolca sostan sürmeyi unutmuyoruz. Yufkaların ara katına iç harcından koyup yayıyoruz. Diğer yufkaları da aralarına sos sürerek yerleştiriyoruz. En son kalan yufkayı da yerleştirdikten sonra kenar kısımlarından taşan yufkaları üzerine doğru kapatıyoruz.  Kalan sosu da böreğin üzerine döküp çatalla delikler açıyoruz. Vaktiniz varsa bu şekilde buzdolabında bir saat kadar bekletebilirsiniz. Vaktiniz yoksa hemende pişirebilirsiniz. Böreği önceden ısıtılmış 200 derecelik fırında üzeri iyice kızarana kadar pişiriyoruz. Afiyet olsun.    '''),
                  _buildCard(
                      'Ispanaklı Börek',
                      'Gül Böreği',
                      'assets/ispanakliborek.jpg',
                      false,
                      true,
                      context,
                      """ Öncelikle ıspanaklı iç harcı için ıspanaklar ayıklanarak hafifçe haşlanır ve süzülür. 1 adet soğan yemeklik doğranarak sıvı yağda pembeleşene kadar kavrulur. Salçası, tuzu ve baharatları ilave edilir.Ispanaklar da eklenerek bir iki dakika kavrulur.Gerekirse az su ilave edilir, ve iç harcının çok kuru olması engellenir.Diğer taraftan böreğin sosu için yoğurt, sıvı yağ ve yumurta çırpılır.Yufka 4 parçaya bölünür, her parçaya sırayla yoğurtlu sos sürülür ve ıspanaklı iç harcından serpilir.Yufka rulo şeklinde sarılır, rulo kendi etrafında dolanarak gül şekli verilir.Hazırlanan börekler yağlı kağıt serilmiş fırın tepsisine dizilir.Üzerlerine çırpılmış yumurta sürülerek 190 derece fırında altı üstü kızarıncaya kadar pişirilir.Eğer yoğurtlu sosunuzdan artarsa yumurtanızı yoğurtlu sosa kırıp bu şekilde de böreklerin üzerine sürebilirsiniz.Ispanaklı gül böreklerimiz servise hazır, şimdiden afiyet olsun. """),
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
