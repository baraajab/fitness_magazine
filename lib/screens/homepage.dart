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
        description:
            'يحتوي زيت الأفوكادو على أحماض دهنية صحية، مثل الدهون الأحادية غير المشبعة، التي تعزز صحة القلب وتخفض مستويات الكوليسترول الضار. بالإضافة إلى ذلك، يحتوي على مضادات أكسدة قوية مثل فيتامين E، التي تحارب الالتهابات وتحسن صحة الجلد.\n\nزيت الأفوكادو يُساعد في امتصاص الفيتامينات الذائبة في الدهون مثل A وD وE وK، مما يجعله إضافة رائعة إلى الوجبات الصحية. كما يستخدم لترطيب البشرة وعلاج التهيجات الجلدية.\n\nمن الفوائد الأخرى أن زيت الأفوكادو يحسن صحة العين بفضل اللوتين، ويُعزز صحة الشعر ويمنع تساقطه بفضل تركيبته الغنية بالفيتامينات والمعادن. كما يُساهم في خفض ضغط الدم وتحسين الدورة الدموية.\n\nوأخيرًا، يعد زيت الأفوكادو خيارًا ممتازًا لمن يسعى للتحكم في وزنه، حيث يعزز الشبع لفترة أطول ويساعد في تقليل التهابات المفاصل.',

        imageUrl: 'assets/icons/png/abu.jpg',
        category: 'تغذية',
        color: Color(0xFfB4cf66),
      ),
      HealthMagazine(
        title: 'فقر الدم واسبابه',
        description:
            'فقر الدم هو حالة صحية شائعة تتسبب في انخفاض مستوى خلايا الدم الحمراء أو الهيموغلوبين في الدم، مما يؤدي إلى نقص الأوكسجين في الأنسجة والأعضاء. يمكن أن يسبب هذا الحالة العديد من الأعراض مثل التعب المستمر، والدوار، وضيق التنفس، والشحوب.\n\nتوجد العديد من الأسباب لفقر الدم، أبرزها نقص الحديد في الجسم، حيث يُعد الحديد عنصرًا أساسيًا في تكوين الهيموغلوبين. كما يمكن أن يحدث فقر الدم نتيجة لنقص فيتامين B12 أو حمض الفوليك، وهما مهمان لصحة خلايا الدم.\n\nمن الأسباب الأخرى لفقر الدم هو فقدان الدم بشكل مفرط، مثلما يحدث في حالات النزيف الحاد أو الاضطرابات الهضمية التي تسبب نزيفًا داخليًا. كما أن بعض الأمراض المزمنة مثل الفشل الكلوي أو السرطان قد تؤدي إلى فقر الدم نتيجة لتأثيراتها على إنتاج خلايا الدم.\n\nمن المهم علاج فقر الدم بناءً على السبب الجذري له، ويتضمن العلاج تناول المكملات الغذائية مثل الحديد وفيتامين B12، بالإضافة إلى تغيير النظام الغذائي ليتضمن أطعمة غنية بالعناصر الغذائية التي تساهم في إنتاج خلايا الدم الحمراء.',

        imageUrl: 'assets/icons/png/fagr.jpg',
        category: 'صحة',
        color: Color(0xFF79bde8),
      ),
      HealthMagazine(
        title: 'فوائد زيت الزنجبيل للشعر',
        description:
            'يُستخدم زيت الزنجبيل منذ العصور القديمة في العناية بالجسم والشعر، لما له من خصائص علاجية مذهلة. زيت الزنجبيل يحتوي على مكونات طبيعية تعمل على تحفيز الدورة الدموية في فروة الرأس، مما يعزز من نمو الشعر ويزيد من كثافته.\n\nيُعتبر زيت الزنجبيل فعالًا في تقوية الشعر الضعيف والمتساقط، حيث يعزز من صحة بصيلات الشعر ويمنع تساقطه بفضل احتوائه على مضادات الأكسدة التي تحارب الجذور الحرة وتقلل من تأثيرها السلبي.\n\nبالإضافة إلى ذلك، يعمل زيت الزنجبيل على ترطيب الشعر الجاف ويمنحه اللمعان الطبيعي، كما يساهم في تحسين مرونة الشعر ويقلل من تقصفه. يمكن أيضًا استخدامه لتخفيف الحكة وتهيج فروة الرأس، كما يُساعد في علاج قشرة الرأس بفضل خصائصه المضادة للبكتيريا.\n\nاستخدام زيت الزنجبيل بانتظام، سواء بتدليك فروة الرأس أو إضافة بضع قطرات منه إلى الشامبو، يمكن أن يُحسن من مظهر وصحة الشعر بشكل ملحوظ ويمنحه مظهرًا أكثر صحة وحيوية.',

        imageUrl: 'assets/icons/png/zang.jpg',
        category: 'جمال',
        color: Color(0xFFf05e8e),
      ),
      HealthMagazine(
        title: 'تمارين الكارديو وحدها لا تساعد في فقدان الوزن ',
        description:
            'تمارين الكارديو من أفضل التمارين الرياضية التي تساعد على حرق الدهون وتحسين اللياقة البدنية، مثل الجري، وركوب الدراجة، والمشي السريع. ورغم أنها تساهم بشكل كبير في تعزيز صحة القلب والأوعية الدموية، إلا أنها وحدها قد لا تكون كافية لتحقيق فقدان الوزن المستدام.\n\nفقدان الوزن يتطلب أكثر من مجرد التمرين، حيث أن التوازن بين النشاط البدني والنظام الغذائي الصحي يلعب دورًا كبيرًا. تمارين الكارديو تساعد على حرق السعرات الحرارية، لكن بدون ضبط النظام الغذائي وتناول الأطعمة المتوازنة، قد لا ترى النتائج المرجوة.\n\nلتحقيق أفضل النتائج في فقدان الوزن، من المهم دمج تمارين القوة (مثل رفع الأثقال) مع تمارين الكارديو، حيث أن تمارين القوة تساعد على بناء العضلات وزيادة معدل الأيض، مما يساعد في حرق المزيد من الدهون حتى أثناء الراحة.\n\nإضافة إلى ذلك، لا ينبغي إغفال أهمية الراحة والنوم الجيد، حيث أن الجسم يحتاج إلى فترة من الاستشفاء لتجديد الطاقة وتحقيق التوازن بين الحرق والراحة. لذلك، يعتبر الجمع بين التمارين الهوائية، تمارين القوة، والنظام الغذائي المتوازن هو المفتاح لفقدان الوزن الفعّال والمستدام.',

        imageUrl: 'assets/icons/png/kardeo.jpg',
        category: 'لياقة',
        color: Color(0xFFfccd0a),
      ),
    ];

    final List<Advice> nutrition = [
      Advice(
        title: 'المسموحات و الممنوعات في رمضان',
        description:
            'زيت الأفوكادو يُعتبر من الزيوت الصحية والمغذية بامتياز، فهو غني بالدهون الأحادية غير المشبعة التي تعزز صحة القلب وتقلل من الكوليسترول الضار. كما يحتوي على مضادات أكسدة قوية مثل فيتامين E التي تحارب الالتهابات وتحمي الجسم من العديد من الأمراض المزمنة.\n\nمن الفوائد المميزة لزيت الأفوكادو أنه يساعد الجسم على امتصاص الفيتامينات الذائبة في الدهون مثل A و D و E و K، مما يجعله خيارًا ممتازًا لإضافته إلى الوجبات الصحية. كما أنه يُستخدم في ترطيب البشرة وتهدئة التهيجات الجلدية، ويساهم في شفاء الجروح بسرعة.\n\nزيت الأفوكادو مفيد أيضًا لصحة العين، لاحتوائه على اللوتين، وهو أحد مضادات الأكسدة التي تحمي العين من أضرار الأشعة الزرقاء والضمور البقعي. بالإضافة إلى ذلك، يعزز صحة الشعر ويُساهم في تقويته ومنع تساقطه بفضل غناه بالفيتامينات والمعادن.\n\nيُساعد كذلك في خفض ضغط الدم وتحسين الدورة الدموية بفضل تأثيره على توسعة الأوعية الدموية. كما يدعم جهاز المناعة ويقويه، مما يجعل الجسم أكثر قدرة على مقاومة الأمراض.\n\nأما من حيث إدارة الوزن، فالدهون الصحية الموجودة في زيت الأفوكادو تُعطي إحساسًا بالشبع لفترة أطول، وتقلل من الرغبة في تناول الطعام. وأخيرًا، فهو يساهم في تقليل التهابات المفاصل وتحسين مرونتها، ما يجعله مفيدًا لمرضى التهاب المفاصل.',
        imageUrl: 'assets/icons/png/ramdan.jpg',
        color: Color(0xFfB4cf66),
      ),
      Advice(
        title: 'فوائد تناول وجبة السحور',
        description:
            'وجبة السحور تُعد من السنن المؤكدة في شهر رمضان، ولها فوائد صحية وجسدية عظيمة. فهي تساعد على تقوية الجسم وتحمله للصيام، وتقلل من الإحساس بالجوع والعطش خلال ساعات النهار.\n\nتناول السحور يساهم في الحفاظ على توازن مستويات السكر في الدم، مما يقلل من الشعور بالتعب والصداع أثناء الصيام. كما أن الأطعمة الغنية بالبروتينات والألياف في السحور تُساعد على الإحساس بالشبع لفترة أطول.\n\nمن الجانب الروحي، فإن السحور يُعطي فرصة لبدء اليوم بذكر الله والاستعداد لصلاة الفجر، مما يزيد من بركة اليوم. كما أنه يُقوّي مناعة الجسم ويُحسن عملية الأيض، خاصة عند اختيار أطعمة صحية ومتوازنة.\n\nلهذا يُنصح دائمًا بعدم إهمال وجبة السحور، واختيار مكونات مغذية ومتوازنة تُساعد في الصيام وتُعزز الصحة العامة.',
        imageUrl: 'assets/icons/png/mosq.jpg',
        color: Color(0xFfB4cf66),
      ),
      Advice(
        title: 'ما الوجبات التي قد تصعب عليك الصيام',
        description:
            'بعض الوجبات قد تجعل الصيام أكثر مشقة، مثل الأطعمة المالحة التي تزيد من العطش، أو الأطعمة الغنية بالسكريات التي تسبب ارتفاعًا سريعًا في سكر الدم يتبعه هبوط مفاجئ يسبب التعب والجوع. أيضًا، الأطعمة الدسمة والمقلية ترهق المعدة وتؤدي إلى الخمول أثناء النهار.\n\nلتجنب ذلك، يُنصح بالابتعاد عن الوجبات الثقيلة وغير المتوازنة خلال وجبتي السحور والإفطار، والتركيز على تناول وجبات خفيفة وغنية بالبروتينات، الألياف، والماء للحفاظ على الطاقة والنشاط خلال يوم الصيام.',

        imageUrl: 'assets/icons/png/food.jpg',
        color: Color(0xFfB4cf66),
      ),
    ];

    final List<Advice> health = [
      Advice(
        title: 'تناول البروكلي قد يحارب الحساسية الجلدية',
        description:
            'البروكلي يُعتبر من الخضروات الخارقة، ليس فقط لفوائده العامة، بل أيضًا لدوره في تقليل أعراض الحساسية الجلدية بفضل احتوائه على مضادات أكسدة قوية مثل فيتامين C والبيتا كاروتين. هذه العناصر تعمل على تهدئة الالتهابات في الجلد، وتقليل الحكة والاحمرار الناتج عن ردود الفعل التحسسية.\n\nمن المعروف أن البروكلي يحتوي على مادة "السلفورافين"، وهي مركب نباتي طبيعي يساهم في حماية الجلد من التلف الناتج عن العوامل البيئية مثل التلوث وأشعة الشمس، مما يساعد في تقليل تحسس الجلد ويعزز تجديد خلاياه. كما أن تناول البروكلي بانتظام يُقوّي المناعة، وهذا بدوره يقلل من فرص تكرار نوبات التحسس.\n\nأضف إلى ذلك أن البروكلي غني بالألياف التي تحسن من صحة الأمعاء، وهو أمر يرتبط مباشرة بصحة الجلد، إذ أن الجهاز الهضمي السليم ينعكس على نقاء البشرة ومقاومتها للمشاكل. كما أن البروكلي منخفض السعرات، مما يجعله خيارًا ممتازًا في نظام غذائي صحي متوازن.\n\nإذا كنت تعاني من حساسية جلدية موسمية أو دائمة، فإدخال البروكلي في نظامك الغذائي قد يكون خطوة ذكية وطبيعية نحو تحسين حالتك، دون الحاجة إلى الاعتماد الكامل على الأدوية والمراهم. حاول تناوله مطهوًا على البخار أو مع السلطات بشكل منتظم، وتمتع بفوائده العظيمة.',

        imageUrl: 'assets/icons/png/procle.jpg',
        color: Color(0xFF79bde8),
      ),
      Advice(
        title: 'شرب ٨ أكواب من الماء يطيل العمر',
        description:
            'هناك مقولة تقول "شرب 8 أكواب ماء يوميًا يطيل العمر"، وقد تبدو مبالغًا فيها، لكنها تحمل جزءًا كبيرًا من الحقيقة العلمية. الماء هو العنصر الأساسي في كل العمليات الحيوية داخل الجسم، وبدونه لا يمكن للخلايا أن تؤدي وظائفها بكفاءة.\n\nعند شرب كمية كافية من الماء يوميًا، تتحسن صحة القلب وتقل فرص الإصابة بأمراض الشرايين والجلطات. كما يساعد الماء في تنظيم حرارة الجسم، وتحسين عملية الهضم، ومنع الإمساك، وهي مشاكل تؤثر على جودة الحياة اليومية.\n\nالماء يعزز من صحة الكلى ويقلل من خطر تكون الحصوات، ويساعد في التخلص من السموم عن طريق البول والعرق، مما يقلل العبء على الكبد ويُحسن أداء الجهاز المناعي. أيضًا، يُساهم شرب الماء في تحسين الحالة النفسية والمزاج العام، ويُقلل من التوتر والصداع الناتج عن الجفاف.\n\nأما للبشرة، فالماء يُعد سلاحًا طبيعيًا ضد التجاعيد، حيث يُرطب الجلد من الداخل، ويمنحه نضارة وحيوية تدوم لفترة أطول، مما يجعل الشخص يبدو أصغر سنًا وأكثر حيوية.\n\nإذاً، ليست مجرد مقولة عابرة – الحفاظ على شرب ٨ أكواب ماء يوميًا قد لا يطيل العمر حرفيًا، لكنه بالتأكيد يحسن جودته ويقلل من الأمراض، مما يعني حياة أطول وأكثر صحة وسعادة.',

        imageUrl: 'assets/icons/png/water.jpg',
        color: Color(0xFF79bde8),
      ),
    ];

    final List<Advice> beauty = [
      Advice(
        title: 'كثرة الاستحمام تضر بشرة الاطفال',
        description:
            'الاستحمام بشكل متكرر للأطفال قد يؤدي إلى جفاف بشرتهم، خاصة إذا كانت المياه تحتوي على مواد كيميائية قاسية أو كانت درجة حرارتها مرتفعة. البشرة الحساسة للأطفال تفقد الزيوت الطبيعية التي تحميها من الجفاف والتشققات عندما يتم الاستحمام بشكل مفرط.\n\nللحفاظ على صحة بشرة الطفل، يُفضل استخدام ماء دافئ وليس حارًا، وتقليل استخدام الصابون والمنظفات الكيميائية التي قد تضر بالبشرة. كما يفضل استخدام الزيوت الطبيعية بعد الاستحمام مثل زيت اللوز أو زيت جوز الهند لترطيب الجلد واستعادة الزيوت الطبيعية.\n\nبالإضافة إلى ذلك، يمكن استخدام كريمات مرطبة خاصة بالبشرة الحساسة للأطفال للحفاظ على الرطوبة. يجب الانتباه إلى عدم الاستحمام للطفل بشكل مفرط، خاصة في الأشهر الأولى من العمر، حيث لا تحتاج بشرة الطفل إلى الكثير من الاستحمام، ويمكن الاكتفاء باستحمامهم مرتين إلى ثلاث مرات في الأسبوع.\n\nتذكري أن الحفاظ على رطوبة البشرة هو المفتاح لحمايتها من الجفاف والحساسية التي قد تتسبب في تهيج الجلد على المدى الطويل.',

        imageUrl: 'assets/icons/png/kid.jpg',
        color: Color(0xFFf05e8e),
      ),
    ];

    final List<Advice> fitness = [
      Advice(
        title: 'ما الذاكرة العضلية وكيف تزيدها ؟',
        description:
            'الذاكرة العضلية هي قدرة العضلات على "تذكر" الحركة والتمارين التي قمت بها مسبقًا، مما يسمح لك بأداء نفس التمارين بكفاءة أكبر في المستقبل. هذا يعود إلى تعزيز التواصل بين الدماغ والعضلات أثناء التمرين.\n\nزيادة الذاكرة العضلية تعتمد بشكل أساسي على التكرار والمثابرة. التمرينات المتكررة على نفس المجموعة العضلية تساعد في تقوية الروابط العصبية، مما يجعل الحركة أكثر سلاسة وأقل تعبًا مع مرور الوقت.\n\nأفضل تمارين تساعد على تحسين الذاكرة العضلية هي التمارين المركبة مثل رفع الأثقال (تمارين القرفصاء، الرفعة الميتة، ضغط الصدر)، بالإضافة إلى تمارين القوة التي تركز على نفس العضلات بمرور الوقت. يجب أيضًا أن يتم الاهتمام بالاستراحة الكافية بين التمارين لتسمح للعضلات بالتعافي.\n\nلا تنسى أن التمرينات المنتظمة، مع التركيز على التحكم في الحركة والتقنية السليمة، تساهم بشكل كبير في زيادة الذاكرة العضلية وتحسين الأداء العام.\n\nإضافة إلى ذلك، الحصول على تغذية سليمة، خاصة البروتينات، يعتبر أمرًا أساسيًا لتعزيز نمو العضلات وتحقيق أفضل النتائج على المدى الطويل.',

        imageUrl: 'assets/icons/png/hum.jpg',
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
