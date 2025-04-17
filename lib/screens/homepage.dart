import 'package:flutter/material.dart';
import 'detailspage.dart';

class HealthMagazine {
  String title;
  String description;
  String imageUrl;
  String category;
  Color color;

  HealthMagazine({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.color,
  });
}

class Advice {
  String title;
  String description;
  String imageUrl;
  Color color;

  Advice({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.color,
  });
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<HealthMagazine> magazines = [
      HealthMagazine(
        title: 'اليك 10 فوائد صحية لزيد الافوكادو',
        description: 'يحتوي زيد الافوكادو على احماض دهية .....',
        imageUrl: 'assets/icons/png/placeholder.png',
        category: 'تغذية',
        color: Color(0xFfB4cf66),
      ),
      HealthMagazine(
        title: 'فقر الدم واسبابه',
        description: 'فقدر حالة صحية تسبب العديد من اعراض .......',
        imageUrl: 'assets/icons/png/placeholder.png',
        category: 'صحة',
        color: Color(0xFfB4cf66),
      ),
      HealthMagazine(
        title: 'فوائد زيت الزنجبيل للشعر',
        description:
            'يستخدم زيت الزنجبيل قديمة في العناية بالجسم والشعر .......',
        imageUrl: 'assets/icons/png/placeholder.png',
        category: 'جمال',
        color: Color(0xFfB4cf66),
      ),
      HealthMagazine(
        title: 'تمارين الكارديو وحدها لا تساعد في فقدان الوزن ',
        description: 'الكارديو من افضل التمارين الرياضية التي تساعدك ..... ',
        imageUrl: 'assets/icons/png/placeholder.png',
        category: 'لياقة',
        color: Color(0xFfB4cf66),
      ),
    ];

    final List<Advice> nutrition = [
      Advice(
        title: 'المسموحات و الممنوعات في رمضان',
        description: 'الكثير من المسلمين يجهلون كيف يبدؤون شهر رمضان ',
        imageUrl: 'assets/icons/png/placeholder.png',
        color: Color(0xFfB4cf66),
      ),
      Advice(
        title: 'فوائد تناول وجبة السحور',
        description: 'اهمية السحور كونها من اهم .....',
        imageUrl: 'assets/icons/png/placeholder.png',
        color: Color(0xFfB4cf66),
      ),
      Advice(
        title: 'ما الوجبات التي قد تصعب عليك الصيام',
        description: 'من اكثر الاغية التي تجعل الصيام  ......',
        imageUrl: 'assets/icons/png/placeholder.png',
        color: Color(0xFfB4cf66),
      ),
    ];

    final List<Advice> health = [
      Advice(
        title: 'تناول البروكلي قد يحارب الحساسية الجلدية',
        description: 'لديه فوائد لمقاومة الحساسية  .....',
        imageUrl: 'assets/icons/png/placeholder.png',
        color: Color(0xFF79bde8),
      ),
      Advice(
        title: 'شرب ٨ أكواب من الماء يطيل العمر',
        description:
            'هناك مقولة تقول شرب 8 اكواب ماء يطيل العمر لكن اتعلم لماذا ؟ ....',
        imageUrl: 'assets/icons/png/placeholder.png',
        color: Color(0xFF79bde8),
      ),
    ];

    final List<Advice> beauty = [
      Advice(
        title: 'كثرة الاستحمام تضر بشرة الاطفال',
        description: 'استخدم زيت بعد الاستحمام ..........',
        imageUrl: 'assets/icons/png/placeholder.png',
        color: Color(0xFFf05e8e),
      ),
    ];

    final List<Advice> fitness = [
      Advice(
        title: 'ما الذاكرة العضلية وكيف تزيدها ؟',
        description: 'افضل تمارين تساعد على الاسترخاء',
        imageUrl: 'assets/icons/png/placeholder.png',
        color: Color(0xFFfccd0a),
      ),
    ];

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'مجلة صحية',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Somar',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: magazines.length,
                itemBuilder: (context, index) {
                  return HealthMagazineCard(magazine: magazines[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TabBar(
                indicatorWeight: 3,
                labelPadding: EdgeInsets.all(8),
                dividerColor: Colors.transparent,
                indicatorColor: Color(0xFF48444D),
                tabs: [Text('تغذية'), Text('صحة'), Text('جمال'), Text('لياقة')],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  BuildAdviceCard(advices: nutrition),
                  BuildAdviceCard(advices: health),
                  BuildAdviceCard(advices: beauty),
                  BuildAdviceCard(advices: fitness),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildAdviceCard extends StatelessWidget {
  final List<Advice> advices;
  const BuildAdviceCard({super.key, required this.advices});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: advices.length,
      itemBuilder: (context, index) {
        return AdviceCard(advice: advices[index]);
      },
    );
  }
}

class AdviceCard extends StatelessWidget {
  final Advice advice;
  const AdviceCard({super.key, required this.advice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (contxt) {
                return DetailsPage(
                  title: advice.title,
                  description: advice.description,
                  imageUrl: advice.imageUrl,
                );
              },
            ),
          );
        },
        child: Card(
          color: advice.color,
          elevation: 8,
          child: SizedBox(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(advice.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          advice.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Somar',
                          ),
                        ),
                        Text(
                          advice.description,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Somar',
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Spacer(),
                            Icon(Icons.share, color: Colors.white),
                            SizedBox(width: 5),
                            Icon(Icons.favorite_border, color: Colors.white),
                            SizedBox(width: 5),
                            Icon(Icons.remove_red_eye, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HealthMagazineCard extends StatelessWidget {
  final HealthMagazine magazine;
  const HealthMagazineCard({super.key, required this.magazine});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (contxt) {
                return DetailsPage(
                  title: magazine.title,
                  description: magazine.description,
                  imageUrl: magazine.imageUrl,
                );
              },
            ),
          );
        },
        child: Container(
          width: 320,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage(magazine.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 12,
                      left: 13,
                      child: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: magazine.color,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                        left: 15,
                        right: 15,
                      ),
                      child: Text(
                        magazine.category,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontFamily: 'Somar',
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    magazine.title,
                    style: TextStyle(
                      color: Color(0xFF5A5A5A),
                      fontSize: 16,
                      fontFamily: 'Somar',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    magazine.description,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF575757),
                      fontSize: 14,
                      fontFamily: 'Somar',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
